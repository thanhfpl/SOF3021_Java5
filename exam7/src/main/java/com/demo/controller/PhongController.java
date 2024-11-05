package com.demo.controller;


import com.demo.entity.LoaiPhong;
import com.demo.entity.Phong;
import com.demo.repo.LoaiPhongRepo;
import com.demo.repo.PhongRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller

public class PhongController {

    @Autowired
    PhongRepo phongRepo;

    @Autowired
    LoaiPhongRepo loaiPhongRepo;

    @ModelAttribute("listphong")
    public List<LoaiPhong> getAll(){
        return loaiPhongRepo.findAll();
    }



    @GetMapping("/phong/hien-thi")
    public String hienThi(Model model){
        List<Phong> list = phongRepo.findAll();
        model.addAttribute("add", new Phong());
        model.addAttribute("list", list);
        return ("phong/hien-thi");
    }

    @PostMapping("/phong/add")
    public String add(@ModelAttribute ("add")Phong phong){
        phongRepo.save(phong);
        return ("redirect:/phong/hien-thi");
    }

    @GetMapping("/phong/detele/{id}")
    public String detele(@PathVariable Integer id ){
        Phong phong = phongRepo.findById(id).orElse(null);
        phongRepo.delete(phong);
        return ("redirect:/phong/hien-thi");
    }


    @GetMapping("/phong/detail/{id}")
    public String detail(@PathVariable Integer id, Model model){
        Phong phong = phongRepo.findById(id).orElse(null);
        model.addAttribute("add", phong);
        return "phong/hien-thi";

    }









}

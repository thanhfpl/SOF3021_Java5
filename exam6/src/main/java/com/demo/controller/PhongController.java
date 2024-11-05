package com.demo.controller;


import com.demo.entity.LoaiPhong;
import com.demo.entity.Phong;
import com.demo.repo.LoaiPhongRepo;
import com.demo.repo.PhongRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    @GetMapping("/hien-thi/danh-sach")
    public String hiennThi(Model model){
        List<Phong> list = phongRepo.findAll();
        model.addAttribute("add", new Phong());
        model.addAttribute("list", list);

        return ("hien-thi/danh-sach");
    }



    @PostMapping("/hien-thi/add")
    public String add(@ModelAttribute ("add") Phong phong){
        phongRepo.save(phong);
        return "redirect:/hien-thi/danh-sach";
    }


    @GetMapping("/hien-thi/detele/{id}")
    public String detele(@PathVariable Integer id){
        Phong phong = phongRepo.findById(id).orElse(null);
        phongRepo.delete(phong);
        return "redirect:/hien-thi/danh-sach";
    }






}

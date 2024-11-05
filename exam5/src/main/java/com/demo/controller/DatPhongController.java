package com.demo.controller;


import com.demo.entity.DatPhong;
import com.demo.entity.KhachHang;
import com.demo.repo.DatPhongRepo;
import com.demo.repo.KhachHangRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
//@RequestMapping("/dat-phong")

public class DatPhongController {

    @Autowired
    DatPhongRepo phongRepo;

    @Autowired
    KhachHangRepo khachHangRepo;

    @ModelAttribute("listkh")
    public List<KhachHang> getAll(){
        return khachHangRepo.findAll();
    }

    @GetMapping("/dat-phong/hien-thi")
    public String hienThi(Model model){
        List<DatPhong> list =  phongRepo.findAll();
        model.addAttribute("add", new DatPhong());
        model.addAttribute("list", list);
        return ("dat-phong/hien-thi");
    }
    
    
    @PostMapping("/dat-phong/add")
    public String add(@ModelAttribute ("add") DatPhong datPhong){
        phongRepo.save(datPhong);
        return ("redirect:/dat-phong/hien-thi");
    }




}

package com.demo.controller;


import com.demo.entity.Phong;
import com.demo.repo.LoaiPhongRepo;
import com.demo.repo.PhongRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/phong")
public class LoaiPhongController {
    @Autowired
    LoaiPhongRepo loaiPhongRepo;

    @Autowired
    PhongRepo phongRepo;

    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        List<Phong> list = phongRepo.findAll();
//        System.out.println("====in hienThi, list= " +list);
        model.addAttribute("list", list);
        model.addAttribute("phong", new Phong());

        return ("phong/hien-thi");
    }



    @ModelAttribute("loaiPhong")
    public List<Phong> getLoaiDV() {
        return phongRepo.findAll();
    }




}

package com.demo.controller;


import com.demo.entity.DatPhong;
import com.demo.entity.KhachHang;
import com.demo.repo.DatPhongRepo;
import com.demo.repo.KhachHangRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;




@Controller
@RequestMapping("/hien-thi")
public class DatPhongController {
    @Autowired
    DatPhongRepo phongRepo;

    @Autowired
    KhachHangRepo khachHangRepo;

    @ModelAttribute("listkh")
    public List<KhachHang> getALl(){
        return khachHangRepo.findAll();
    }



    @GetMapping("/danh-sach")
    public String hienThi(Model  model){
        List<DatPhong> list = phongRepo.findAll();
        model.addAttribute("add", new DatPhong());
        model.addAttribute("list", list);
        return ("hien-thi/danh-sach");
    }

    @PostMapping("/add")
    public String add(@ModelAttribute ("add") DatPhong datPhong){
        phongRepo.save(datPhong);
        return "redirect:/hien-thi/danh-sach";
    }


    @GetMapping("/detele/{id}")
    public String detele(@PathVariable Integer id){
        DatPhong datPhong = phongRepo.findById(id).orElse(null);
        phongRepo.delete(datPhong);
        return ("redirect:/hien-thi/danh-sach");
    }



}

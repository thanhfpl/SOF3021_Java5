package com.demo.controller;

import com.demo.entity.DatPhong;
import com.demo.entity.KhachHang;
import com.demo.repo.DatPhongRepo;
import com.demo.repo.KhachHangRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

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
        List<DatPhong> list = phongRepo.findAll();
        model.addAttribute("list", list);
        return "dat-phong/hien-thi";
   }
}

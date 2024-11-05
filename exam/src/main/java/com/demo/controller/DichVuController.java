package com.demo.controller;

import com.demo.entity.DichVu;
import com.demo.entity.LoaiDichVu;
import com.demo.repo.DichVuRepo;
import com.demo.repo.LoaiDichVuRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/dich-vu")
public class DichVuController {
    @Autowired
    DichVuRepo  dichVuRepo;
    @Autowired
    LoaiDichVuRepo loaiDichVuRepo;


    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        List<DichVu> list = dichVuRepo.findAll();
        System.out.println("=====in hienThi, list=" +list);
        model.addAttribute("list", list);
        return "hien-thi/index";
    }

    @ModelAttribute("loaidichvu")
    public List<LoaiDichVu> getDsLoai(){
        return loaiDichVuRepo.findAll();
    }

//
    @ModelAttribute("loaidichvu")
    public List<LoaiDichVu> getLoaiDV() {
        return loaiDichVuRepo.findAll();
    }

    @PostMapping("/add")
    public String add(DichVu dichVu) {

        dichVuRepo.save(dichVu);
        return "redirect:/dich-vu/hien-thi";
    }
}

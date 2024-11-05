package com.demo.controller;

import com.demo.entity.DichVu;
import com.demo.entity.LoaiDichVu;
import com.demo.repo.DichVuRepo;
import com.demo.repo.LoaiDichVuRepo;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/hien-thi")
public class LoaiDichVuController {

    @Autowired
    DichVuRepo dichVuRepo;

    @Autowired
    LoaiDichVuRepo loaiDichVuRepo;

    @ModelAttribute("loaidichvu")
    public List<LoaiDichVu> getAll() {
        return loaiDichVuRepo.findAll();
    }
    @GetMapping("/list")
    public String hienThi(Model model){
        List<DichVu> list = dichVuRepo.findAll();
        model.addAttribute("add", new DichVu());
        model.addAttribute("list", list);
        return ("hien-thi/list");
    }


    @PostMapping ("/add")
    public String add(@ModelAttribute ("add") DichVu dichVu){
        dichVuRepo.save(dichVu);
        return  "redirect:/hien-thi/list";
    }


    

    @GetMapping("/detele/{id}")
    public String detele(@PathVariable Integer id){
        DichVu dichVu = dichVuRepo.findById(id).orElse(null);
        dichVuRepo.delete(dichVu);
        return "redirect:/hien-thi/list";
    }






}

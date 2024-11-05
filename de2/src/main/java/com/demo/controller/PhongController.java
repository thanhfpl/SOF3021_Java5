package com.demo.controller;

import com.demo.entity.LoaiPhong;
import com.demo.entity.Phong;
import com.demo.repo.LoaiPhongRepo;
import com.demo.repo.PhongRepo;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/phong")
public class PhongController {
    @Autowired
    PhongRepo phongRepo;

    @Autowired
    LoaiPhongRepo loaiPhongRepo;

    @ModelAttribute("dsLoaiPhong")
    public List<LoaiPhong> getDsLoaiPhong(){
        return loaiPhongRepo.findAll();
    }

    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        List<Phong> list = phongRepo.findAll();
        model.addAttribute("phong", new Phong());
        model.addAttribute("list", list);
        return "phong/index";
    }

    @PostMapping("/add")
    public String add(@Valid @ModelAttribute("phong")Phong phong, BindingResult rs){
        if(rs.hasErrors()){
            return "phong/index";
        }
        phongRepo.save(phong);
        return "redirect:/phong/hien-thi";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable Integer id, Model model){
        Phong phong = phongRepo.findById(id).orElse(null);
        model.addAttribute("phong", phong);
        model.addAttribute("list", phongRepo.findAll());
        return "phong/index";
    }

    @GetMapping("/paging")
    public String paging(@RequestParam(defaultValue = "0") int p, Model model){
        Pageable pageable = PageRequest.of(p, 5);
        Page<Phong> page = phongRepo.findAll(pageable);
        model.addAttribute("phong", new Phong());
        model.addAttribute("list", page.getContent());
        model.addAttribute("totalPages", page.getTotalPages());
        return "phong/index";
    }
}

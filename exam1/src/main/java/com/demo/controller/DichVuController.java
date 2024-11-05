package com.demo.controller;

import com.demo.entity.DichVu;
import com.demo.entity.LoaiDichVu;
import com.demo.repository.DichVuRepo;
import com.demo.repository.LoaiDichVuRepo;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/dich-vu")
public class DichVuController {
    @Autowired
    DichVuRepo dichVuRepo;

    @Autowired
    LoaiDichVuRepo loaiDichVuRepo;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        List<DichVu> listSearchDV = dichVuRepo.search();

        model.addAttribute("listDichVu", dichVuRepo.findAll());
        model.addAttribute("dichvu", new DichVu());
        return "dichvu";
    }

    @ModelAttribute("loaidichvu")
    public List<LoaiDichVu> getLoaiDV() {
        return loaiDichVuRepo.findAll();
    }

    // @PostMapping("/add")
    // public String add(@Valid @ModelAttribute("dichvu") DichVu dichVu, BindingResult rs, Model model) {
    //     if (rs.hasErrors()) {
    //         model.addAttribute("listDichVu", dichVuRepo.findAll());
    //         return "dichvu";
    //     }
    //     dichVuRepo.save(dichVu);
    //     return "redirect:/dich-vu/hien-thi";
    // }


    @PostMapping("/add")
    public String add(@Valid @ModelAttribute("dichvu") DichVu dichVu, BindingResult rs, Model model) {
        if (rs.hasErrors()) {
            model.addAttribute("listDichVu", dichVuRepo.findAll());
            return "dichvu";
        }
        dichVuRepo.save(dichVu);
        return "redirect:/dich-vu/hien-thi";
    }


    @GetMapping("/detail/{id}")
    public String detail(@PathVariable Integer id, Model model) {
        DichVu dichVu = dichVuRepo.findById(id).orElse(null);
        model.addAttribute("dichvu", dichVu);
        model.addAttribute("listDichVu", dichVuRepo.findAll());
        return "dichvu";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Integer id) {
        DichVu dichVu = dichVuRepo.findById(id).orElse(null);
        dichVuRepo.delete(dichVu);
        return "redirect:/dich-vu/hien-thi";
    }

}

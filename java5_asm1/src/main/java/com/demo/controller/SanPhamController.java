package com.demo.controller;

import com.demo.entity.SanPham;
import com.demo.service.SanPhamService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class SanPhamController {
    SanPhamService service = new SanPhamService();

    @GetMapping("/SanPham")
    public String listSanPham(Model model) {
        model.addAttribute("sp", service.findAll());
        return "user/SanPham";
    }
}

package com.demo.controller;

import com.demo.entity.Hang;
import com.demo.entity.MayTinh;
import com.demo.repo.HangRepo;
import com.demo.repo.MayTinhRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MayTinhController {
    @Autowired
    MayTinhRepo mayTinhRepo;

    @Autowired
    HangRepo hangRepo;

    @ModelAttribute("dsHang")
    public List<Hang> getDsHang(){
        return hangRepo.findAll();
    }

    @GetMapping("/may-tinh/hien-thi")
    public String hienThi(@RequestParam(defaultValue = "")String keyword,
                          @RequestParam(defaultValue = "0")Double minPrice,
                          @RequestParam(defaultValue = "0")Double maxPrice,
                          @RequestParam(defaultValue = "0")int p, Model model){
        if(maxPrice == 0) maxPrice = Double.MAX_VALUE;
        Pageable pageable = PageRequest.of(p,3, Sort.by(Sort.Direction.DESC, "gia"));
        Page<MayTinh> page = mayTinhRepo.search("%" + keyword + "%",minPrice,maxPrice, pageable);//findAll(pageable);
        //System.out.println("list:" + list);
        model.addAttribute("page", page);
        model.addAttribute("mt", new MayTinh());
        return "may-tinh/hien-thi";
    }

    @PostMapping("/may-tinh/add")
    public String add(@ModelAttribute("mt")MayTinh mayTinh){
        // TODO: Validate
        mayTinhRepo.save(mayTinh);
        return "redirect:/may-tinh/hien-thi";
    }

    @GetMapping("/may-tinh/view-update/{id}")
    public String viewUpdate(@PathVariable Long id, Model model){
        MayTinh mayTinh = mayTinhRepo.findById(id).orElse(null);
        model.addAttribute("mt", mayTinh);
        return "may-tinh/update";
    }

    @PostMapping("/may-tinh/update/{id}")
    public String update(@PathVariable Long id, @ModelAttribute("mt")MayTinh mayTinh){
        mayTinh.setId(id);
        mayTinhRepo.save(mayTinh);
        return "redirect:/may-tinh/hien-thi";
    }

    @GetMapping("/may-tinh/delete/{id}")
    public String delete(@PathVariable Long id){
        mayTinhRepo.deleteById(id);
        return "redirect:/may-tinh/hien-thi";
    }
}

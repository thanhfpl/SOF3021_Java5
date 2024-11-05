package com.demo.Controller;


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
@RequestMapping("/maytinh")
public class MayTinhController {
    @Autowired
    MayTinhRepo mayTinhRepo;

    @Autowired
    HangRepo hangRepo;

    @GetMapping("/list")
    public String listMayTinh(Model model){
        Sort sort = Sort.by(Sort.Order.desc("gia"));
        List<MayTinh> list = mayTinhRepo.findAll(sort);
        model.addAttribute("list",list);
        model.addAttribute("maytinh", new MayTinh());
        System.out.println(hangRepo.findAll().get(0));
        return "maytinh/list";
    }

    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model){
        MayTinh mt = mayTinhRepo.findById(id).orElse(null);
        model.addAttribute("maytinh",mt);
        //model.addAttribute("list",repo.findAll());
        return "maytinh/update";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable Integer id, @ModelAttribute("maytinh") MayTinh maytinh){
        maytinh.setId(id);
        mayTinhRepo.save(maytinh);
        return "redirect:/maytinh/page";
    }

    @ModelAttribute("listHang")
    public List<Hang> getListKH(){
        return hangRepo.findAll();
    }



    @GetMapping("/page") // localhost:8080/product/page?p=0
    public String pagination(@RequestParam(defaultValue = "0") int p, Model model) {
        Sort sort = Sort.by(Sort.Order.desc("gia"));
        Pageable pageable = PageRequest.of(p, 3, sort);
        Page<MayTinh> page = mayTinhRepo.findAll(pageable);
        List<MayTinh> list = page.getContent();

        model.addAttribute("list", list);
        model.addAttribute("maytinh", new MayTinh());
        model.addAttribute("page", page);

        return "maytinh/list";
    }
}

package com.demo.controller;

import com.demo.entity.User;
import com.demo.service.UserService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {

    UserService service=new UserService();
    @GetMapping("/list")
    public String listUser(Model model) {
        model.addAttribute("list", service.findAll());
        return "user/list";
    }
    @GetMapping("/add")
    public String viewAddUser(Model model){
        model.addAttribute("us",new User());
        return "user/form";
    }
    @PostMapping("/add")
    public String addUser(@Valid @ModelAttribute("us") User us, BindingResult rs, Model model){
        System.out.println("us:"+us);
        if(rs.hasErrors()){
            model.addAttribute("error","Mot so truong co loi");
            return "user/form";
        }
        service.add(us);
        return "redirect:/user/list";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable Integer id){
        service.deleteById(id);
        return "redirect:/user/list";
    }
    @GetMapping("/update/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model){
        User us=service.findById(id);
        model.addAttribute("us",us);
        return "user/form";
    }
    @PostMapping("/update/{id}")
    public String update(@PathVariable Integer id,
                         @ModelAttribute("us") User us ){
        us.setId(id);
        service.update(us);
        return "redirect:/user/list";
    }

}

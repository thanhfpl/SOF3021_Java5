package com.demo.controller;

import com.demo.entity.Student;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {
    //hàm show
    @GetMapping("/form")
    public String form(@ModelAttribute("sv") Student sv) {
        return "student/form";
    }



    @PostMapping("/save")
    public String save(
          @Valid  @ModelAttribute("sv") Student sv,
          BindingResult rs
    ) {
        return "student/form";
    }



    @ModelAttribute("genders")
    public Map<Boolean, String> getGenders(){
        Map<Boolean, String> map = new HashMap<>();
        map.put(true, "Nam");
        map.put(false, "Nu");
        return map;
    }

    @ModelAttribute("faculties")
    public List<String> getFaculties(){
        return Arrays.asList("IT", "mabb", "Business");
    }
}
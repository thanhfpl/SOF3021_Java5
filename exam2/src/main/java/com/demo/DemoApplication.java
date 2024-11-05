package com.demo;

import com.demo.repo.LoaiPhongRepo;
import com.demo.repo.PhongRepo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        var ctx  = SpringApplication.run(DemoApplication.class, args);
        PhongRepo repo = ctx.getBean(PhongRepo.class);
        System.out.println(repo.findAll());
    }

}

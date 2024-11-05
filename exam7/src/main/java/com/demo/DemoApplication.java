package com.demo;

import com.demo.repo.LoaiPhongRepo;
import com.demo.repo.PhongRepo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        ApplicationContext ctx=SpringApplication.run(DemoApplication.class, args);
//        LoaiPhongRepo repo = ctx.getBean(LoaiPhongRepo.class);
        PhongRepo repo = ctx.getBean(PhongRepo.class);
        System.out.println(repo.findAll());
    }

}

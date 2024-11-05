package com.demo;

import com.demo.entity.LoaiDichVu;
import com.demo.repo.LoaiDichVuRepo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
       ApplicationContext ctx = SpringApplication.run(DemoApplication.class, args);
        LoaiDichVuRepo repo = ctx.getBean(LoaiDichVuRepo.class);
        System.out.println(repo.findAll());
    }

}

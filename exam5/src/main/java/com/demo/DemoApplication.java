package com.demo;

import com.demo.repo.DatPhongRepo;
import com.demo.repo.KhachHangRepo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
       ApplicationContext ctx = SpringApplication.run(DemoApplication.class, args);
        DatPhongRepo repo = ctx.getBean(DatPhongRepo.class);
//        KhachHangRepo repo = ctx.getBean(KhachHangRepo.class);
        System.out.println(repo.findAll());
    }

}

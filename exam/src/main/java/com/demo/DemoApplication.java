package com.demo;

import com.demo.repo.DichVuRepo;
import com.demo.repo.LoaiDichVuRepo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
       var ctx  = SpringApplication.run(DemoApplication.class, args);
       DichVuRepo repo = ctx.getBean(DichVuRepo.class);
       System.out.println(repo.findAll());
    }

}

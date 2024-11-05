package com.demo;

import com.demo.entity.LoaiDichVu;
import com.demo.repository.DichVuRepo;
import com.demo.repository.LoaiDichVuRepo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        var ctx  = SpringApplication.run(DemoApplication.class, args);
        LoaiDichVuRepo repo = ctx.getBean(LoaiDichVuRepo.class);
        System.out.println(repo.findAll());
    }

}

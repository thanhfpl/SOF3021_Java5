package com.demo;

import com.demo.repo.HangRepo;
import com.demo.repo.MayTinhRepo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        ApplicationContext ctx = SpringApplication.run(DemoApplication.class, args);
        MayTinhRepo repo = ctx.getBean(MayTinhRepo.class);
        System.out.println(repo.findAll());
    }

}

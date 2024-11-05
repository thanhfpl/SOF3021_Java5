package com.demo.repo;

import com.demo.entity.Phong;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PhongRepo extends JpaRepository<Phong, Integer> {
}

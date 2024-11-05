package com.demo.repo;

import com.demo.entity.LoaiPhong;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoaiPhongRepo extends JpaRepository<LoaiPhong, Integer> {
}

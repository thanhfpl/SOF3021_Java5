package com.demo.repo;

import com.demo.entity.DatPhong;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DatPhongRepo extends JpaRepository<DatPhong, Integer> {
}

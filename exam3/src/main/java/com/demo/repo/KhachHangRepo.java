package com.demo.repo;

import com.demo.entity.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;

public interface KhachHangRepo extends JpaRepository<KhachHang,Integer> {
}

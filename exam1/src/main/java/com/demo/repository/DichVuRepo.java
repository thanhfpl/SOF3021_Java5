package com.demo.repository;

import com.demo.entity.DichVu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DichVuRepo extends JpaRepository<DichVu, Integer> {
    @Query(value = "SELECT * FROM dich_vu ", nativeQuery = true)
    List<DichVu> search();
}

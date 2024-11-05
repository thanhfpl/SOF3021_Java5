package com.demo.repo;

import com.demo.entity.MayTinh;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MayTinhRepo extends JpaRepository<MayTinh, Long> {
    @Query("SELECT mt FROM MayTinh mt WHERE (mt.tenMayTinh LIKE ?1 OR mt.ma LIKE ?1) AND mt.gia BETWEEN ?2 AND ?3")
    Page<MayTinh> search(String keyword, Double minPrice, Double maxPrice, Pageable pageable);
}

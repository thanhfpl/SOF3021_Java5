package com.demo.repo;

import com.demo.entity.MayTinh;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MayTinhRepo extends JpaRepository<MayTinh, Integer> {
}

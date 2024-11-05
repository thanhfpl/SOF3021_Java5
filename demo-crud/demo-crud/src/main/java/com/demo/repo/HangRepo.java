package com.demo.repo;

import com.demo.entity.Hang;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HangRepo extends JpaRepository<Hang, Long> {
}

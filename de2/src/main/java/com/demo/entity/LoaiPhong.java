package com.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="loai_phong")
public class LoaiPhong {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    String ten_loai_phong;
}

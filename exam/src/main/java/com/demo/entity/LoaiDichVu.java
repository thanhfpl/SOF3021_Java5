package com.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "loai_dich_vu")
public class LoaiDichVu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    String mo_ta;

    String ten_loai_dich_vu;
}

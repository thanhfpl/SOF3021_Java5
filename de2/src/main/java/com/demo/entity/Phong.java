package com.demo.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name="phong")
public class Phong {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @NotBlank(message = "Thiếu tên phòng")
    String ten_phong;

    @NotBlank(message = "Thiếu số lượng phòng")
    String so_luong_phong;

    @NotBlank(message = "Thiếu ghi chú")
    String ghi_chu;

    @NotBlank(message = "Thiếu trạng thái")
    String trang_thai;

    @NotNull(message = "Thiếu loại phòng")
    @ManyToOne @JoinColumn(name="id_loai_phong")
    LoaiPhong loaiPhong;
}

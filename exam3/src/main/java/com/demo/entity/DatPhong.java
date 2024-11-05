package com.demo.entity;


import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Data
@Table(name = "dat_phong")

public class DatPhong {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    String ma_dat_phong;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    Date ngay_gio_dat;

    Integer so_luong_khach;

    Integer so_luong_phong_dat;

    String ghi_chu;

    @ManyToOne
    @JoinColumn(name = "id_khach_hang")
    KhachHang khachHang;





//    @Temporal(TemporalType.DATE)
//    @DateTimeFormat(pattern = "dd/MM/yyyy")






//           [id] [int] IDENTITY(1,1) NOT NULL,
//	         [ghi_chu] [varchar](255) NULL,
//            [ma_dat_phong] [varchar](255) NULL,
//            [ngay_gio_dat] [datetime2](6) NULL,
//            [so_luong_khach] [int] NULL,
//            [so_luong_phong_dat] [int] NULL,
//            [thoi_gian_luu_tru] [int] NULL,
//            [trang_thai] [varchar](255) NULL,
//            [id_khach_hang] [int] NULL,
//            [id_loai_phong] [int] NULL,
}

package com.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "khach_hang")

public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    String ma_khach_hang;

    String ten_khach_hang;






//    [gioi_tinh] [int] NULL,
//            [id] [int] IDENTITY(1,1) NOT NULL,
//	[cccd] [varchar](255) NULL,
//            [dia_chi] [varchar](255) NULL,
//            [email] [varchar](255) NULL,
//            [ma_khach_hang] [varchar](255) NULL,
//            [quoc_tinh] [varchar](255) NULL,
//            [so_dien_thoai] [varchar](255) NULL,
//            [ten_khach_hang] [varchar](255) NULL,
//            [trang_thai] [varchar](255) NULL,
}

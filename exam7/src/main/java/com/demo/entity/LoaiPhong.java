package com.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "loai_phong")
public class LoaiPhong {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    String ten_loai_phong;





//    CREATE TABLE [dbo].[loai_phong](
//            [don_gia_qua_dem] [numeric](38, 2) NULL,
//            [don_gia_theo_gio] [numeric](38, 2) NULL,
//            [ho_ten_nguoi_dai_dien] [nvarchar](255) NULL,
//            [id] [int] IDENTITY(1,1) NOT NULL,
//	[tien_qua_gio] [numeric](38, 2) NULL,
//            [ghi_chu] [varchar](255) NULL,
//            [so_nguoi] [varchar](255) NULL,
//            [ten_loai_phong] [varchar](255) NULL,
//            [trang_thai] [varchar](255) NULL,
}

package com.demo.entity;


import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "phong")

public class Phong {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    String ten_phong;

    Integer so_luong_phong;

    String trang_thai;

    String ghi_chu;


    @ManyToOne
    @JoinColumn(name = "id_loai_phong")
    LoaiPhong loaiPhong;






//    CREATE TABLE [dbo].[phong](
//            [id] [int] IDENTITY(1,1) NOT NULL,
//	[id_co_so] [int] NULL,
//            [id_lau] [int] NULL,
//            [id_loai_phong] [int] NULL,
//            [ghi_chu] [varchar](255) NULL,
//            [so_luong_phong] [varchar](255) NULL,
//            [ten_phong] [varchar](255) NULL,
//            [trang_thai] [varchar](255) NULL,

}

package com.demo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "loai_phong")
public class LoaiPhong {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ten_loai_phong")
    private String tenLoaiPhong;

    @Column(name = "ghi_chu")
    private String ghiChu;


    @Column(name = "trang_thai")
    private String trangThai;




//    [don_gia_qua_dem] [numeric](38, 2) NULL,
//            [don_gia_theo_gio] [numeric](38, 2) NULL,
//            [ho_ten_nguoi_dai_dien] [nvarchar](255) NULL,
//            [id] [int] IDENTITY(1,1) NOT NULL,
//	[tien_qua_gio] [numeric](38, 2) NULL,
//            [ghi_chu] [varchar](255) NULL,
//            [so_nguoi] [varchar](255) NULL,
//            [ten_loai_phong] [varchar](255) NULL,
//            [trang_thai] [varchar](255) NULL,
}

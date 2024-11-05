package com.demo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "phong")
public class Phong {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ten_phong")
    private String tenPhong;

    @Column(name = "so_luong_phong")
    private String soLuongPhong;

    @Column(name = "trang_thai")
    private String trangThai;

    @Column(name = "ghi_chu")
    private String ghiChu;

    @ManyToOne @JoinColumn(name = "id_loai_phong")
    LoaiPhong loaiPhong;









//    	[id] [int] IDENTITY(1,1) NOT NULL,
//	    [id_co_so] [int] NULL,
//            [id_lau] [int] NULL,
//            [id_loai_phong] [int] NULL,
//            [ghi_chu] [varchar](255) NULL,
//            [so_luong_phong] [varchar](255) NULL,
//            [ten_phong] [varchar](255) NULL,
//            [trang_thai] [varchar](255) NULL,
}

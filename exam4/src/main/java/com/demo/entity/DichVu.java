package com.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "dich_vu")
public class DichVu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    String ten_dich_vu;

    Double don_gia;

    String don_vi_tien;

    @ManyToOne
    @JoinColumn(name = "id_loai_dich_vu")
    LoaiDichVu loaiDichVu;









//    [don_gia] [numeric](38, 2) NULL,
//            [id] [int] IDENTITY(1,1) NOT NULL,
//	[id_loai_dich_vu] [int] NULL,
//            [don_vi_tien] [varchar](255) NULL,
//            [don_vi_tinh] [varchar](255) NULL,
//            [mo_ta] [varchar](255) NULL,
//            [ten_dich_vu] [varchar](255) NULL,
//            [trang_thai] [varchar](255) NULL,
}

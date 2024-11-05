package com.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "loai_dich_vu")
public class LoaiDichVu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    String ten_loai_dich_vu;

    String mo_ta;




//    [id] [int] IDENTITY(1,1) NOT NULL,
//	[mo_ta] [varchar](255) NULL,
//            [ten_loai_dich_vu] [varchar](255) NULL,
//            [trang_thai] [varchar](255) NULL,
}

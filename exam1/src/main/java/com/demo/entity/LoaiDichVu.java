package com.demo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "loai_dich_vu")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoaiDichVu {
    //    CREATE TABLE [dbo].[loai_dich_vu](
//  [id] [int] IDENTITY(1,1) NOT NULL,
//	[mo_ta] [varchar](255) NULL,
//    [ten_loai_dich_vu] [varchar](255) NULL,
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ten_loai_dich_vu")
    private String tenLoaiDichVu;

    @Column(name = "mo_ta")
    private String moTaLoaiDichVu;
}

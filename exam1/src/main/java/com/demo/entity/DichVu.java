package com.demo.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "dich_vu")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class    DichVu {
    //    CREATE TABLE [dbo].[dich_vu](
//            [don_gia] [numeric](38, 2) NULL,
//            [id] [int] IDENTITY(1,1) NOT NULL,
//	[id_loai_dich_vu] [int] NULL,
//            [don_vi_tien] [varchar](255) NULL,
//            [don_vi_tinh] [varchar](255) NULL,
//            [mo_ta] [varchar](255) NULL,
//            [ten_dich_vu] [varchar](255) NULL,
//            [trang_thai] [varchar](255) NULL,
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ten_dich_vu")
    @NotBlank(message = "Không để trống tên dịch vụ")
    private String tenDichVu;


    @Column(name = "don_gia")
    @NotNull(message = "Không để trống Đơn giá")
    @Min(message = "Tối thiểu 10000", value = 10000)
    private Double donGia;

    @Column(name = "don_vi_tien")
    @NotBlank(message = "Không để trống đơn vị tiền")
    private String donViTien;

    @ManyToOne
    @JoinColumn(name = "id_loai_dich_vu")
    LoaiDichVu loaiDichVu;
}

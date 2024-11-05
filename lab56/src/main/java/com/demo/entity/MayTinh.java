package com.demo.entity;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "may_tinh")
public class MayTinh {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @Column(name = "ten_may_tinh")
    String tenmaytinh;

    @Column(name = "gia")
    float gia;

    @Column(name = "bo_nho")
    String bonho;

    @Column(name = "mau_sac")
    String mausac;

    @Column(name = "mieu_ta")
    String mieuta;

    @ManyToOne
    @JoinColumn(name = "hang_id")
    Hang hang;





//    id BIGINT identity(1,1) NOT NULL,
//    hang_id BIGINT NULL,
//    ma varchar(20) NULL,
//    ten_may_tinh nvarchar(100) NULL,
//    gia float NULL,
//    bo_nho varchar(50) NULL,
//    mau_sac nvarchar(100) NULL,
//    mieu_ta nvarchar(100) NULL,


}

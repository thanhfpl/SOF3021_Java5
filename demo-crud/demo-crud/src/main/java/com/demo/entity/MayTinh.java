package com.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="may_tinh")
public class MayTinh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @ManyToOne @JoinColumn(name="hang_id")
    Hang hang;

    String ma;

    @Column(name="ten_may_tinh")
    String tenMayTinh;

    Long gia;

    @Column(name="bo_nho")
    String boNho;

    @Column(name="mau_sac")
    String mauSac;

    @Column(name="mieu_ta")
    String mieuTa;
}

package com.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="hang")
public class Hang {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    String ma;

    @Column(name="ten_hang")
    String tenHang;
    /*id BIGINT identity(1,1) NOT NULL,
	ma varchar(20) NULL,
	ten_hang nvarchar(100) NULL,*/
}

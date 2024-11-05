package com.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SanPham {
    String id;

    String tenSanPham;

    String img ;

    float gia;

    boolean trangthai;



}

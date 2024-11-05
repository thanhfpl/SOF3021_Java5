package com.demo.service;

import com.demo.entity.SanPham;
import com.demo.entity.User;

import java.util.ArrayList;
import java.util.List;

public class SanPhamService {
    List<SanPham> list=new ArrayList<>();
    public SanPhamService(){
        list.add(new SanPham("DT1", "Xiaomi 14 Ultra", "images.jpg", 20000,true));
        list.add(new SanPham("DT2", "Xiaomi 13", "redmi-note-12-black_1677573580_1703048448.png", 17000,true));

    }

    public List<SanPham> findAll(){
        return list;
    }

}

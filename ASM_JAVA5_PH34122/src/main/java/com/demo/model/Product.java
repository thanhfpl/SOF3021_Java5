package com.demo.model;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import jakarta.persistence.*;
import java.io.Serializable;

@Data @AllArgsConstructor @NoArgsConstructor
@Entity @Table(name="Products")
public class Product implements Serializable {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    @NotBlank(message = "Không bỏ trống tên")
    String name;
    @Min(value = 0,message = "Giá Phải Lớn Hơn 0")
            @NotNull(message = "Không Được Bỏ Trống Giá")
    Integer price;
    @NotNull(message = "Không Được Bỏ Trống Loại")
    @ManyToOne @JoinColumn(name="Categoryid")
    Category category;
    String image;
}

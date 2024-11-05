package com.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data @AllArgsConstructor @NoArgsConstructor
@Entity
@Table(name="Categories")
public class Category implements Serializable {
    @Id
            @NotBlank(message = "Không Để Trống ID")
    String id;
    @NotBlank(message = "Không Để Trống Tên")
    String name;
}

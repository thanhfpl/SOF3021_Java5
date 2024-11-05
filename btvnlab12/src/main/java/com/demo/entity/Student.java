package com.demo.entity;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    @NotBlank(message = "name required")
    String name;
    String email;
    Double marks;
    Boolean gender;
    String faculty;
}

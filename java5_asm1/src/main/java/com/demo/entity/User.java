package com.demo.entity;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    Integer id;
    @NotBlank(message = "Bat buoc")
    String username;
    @NotBlank(message = "Bat buoc")
    String password;
    @NotBlank(message = "Bat buoc")
    String fullname;
    @NotBlank(message = "Bat buoc")
    String email;
    boolean activated;
    boolean admin;

}

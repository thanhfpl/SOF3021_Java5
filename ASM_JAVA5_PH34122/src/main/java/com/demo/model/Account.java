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
@Table(name="Accounts")
public class Account implements Serializable {
    @Id
            @NotBlank(message = "Username không bỏ trống")
    String username;
    @NotBlank(message = "PassWord không bỏ trống")
    String password;
    @NotBlank(message = "FullName không bỏ trống")
    String fullname;
    @NotBlank(message = "Email không bỏ trống")
    String email;
}

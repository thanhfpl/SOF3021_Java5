package com.demo.repo;

import com.demo.model.Account;
import com.demo.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepo extends JpaRepository<Product, Integer> {
    List<Product> findByNameContainingAndPriceBetween(String keyword, int minPrice, int maxPrice);
    List<Product> findByCategoryIdAndPriceBetween(String categoryId, int minPrice, int maxPrice);


}

package com.izdebski.shoppingbackend.dao;

import com.izdebski.shoppingbackend.dto.Product;

import java.util.List;

public interface ProductDAO {

    Product get(int productId);
    List<Product> list();
    boolean add(Product product);
    boolean update(Product product);
    boolean delete(Product product);

    // business methods
    List<Product> listActiveProducts();
    List<Product> listActiveProductsByCategory(int categoryId);
    List<Product> getLatestActiveProducts(int count);

}
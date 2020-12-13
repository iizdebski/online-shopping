package com.izdebski.shoppingbackend.dao;

import com.izdebski.shoppingbackend.dto.Category;

import java.util.List;

public interface CategoryDAO {

    boolean add(Category category);

    List<Category> list();
    Category get(int id);
}

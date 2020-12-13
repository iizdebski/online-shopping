package com.izdebski.shoppingbackend.test;

import com.izdebski.shoppingbackend.dao.CategoryDAO;
import com.izdebski.shoppingbackend.dto.Category;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import static org.junit.Assert.assertEquals;

public class CategoryTestCase {

    private static AnnotationConfigApplicationContext context;

    private static CategoryDAO categoryDAO;

    private Category category;

    @BeforeClass
    public static void init() {
        context = new AnnotationConfigApplicationContext();
        context.scan("com.izdebski.shoppingbackend");
        context.refresh();
        categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
    }

    @Test
    public void testAddCategory() {
        category = new Category();

        category.setName("Laptop");
        category.setDescription("This is some description for laptop");
        category.setImageURL("CAT_105.png");

        assertEquals("Successfully added a category inside the table!", true, categoryDAO.add(category));
    }
}
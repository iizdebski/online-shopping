package com.izdebski.onlineshopping.controller;

import com.izdebski.shoppingbackend.dao.CategoryDAO;
import com.izdebski.shoppingbackend.dto.Category;
import com.izdebski.shoppingbackend.dto.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/manage")
public class ManagementController {

    @Autowired
    private CategoryDAO categoryDAO;

    @RequestMapping(value = "/products", method = RequestMethod.GET)
    public ModelAndView showManageProducts() {

        ModelAndView mv = new ModelAndView("page");

        mv.addObject("userClickManageProducts", true);
        mv.addObject("title", "Manage Products");
        Product nProduct = new Product();

        // set few of the fields
        nProduct.setSupplierId(1);
        nProduct.setActive(true);

        mv.addObject("product", nProduct);

        return mv;
    }

    // returning categories for all the request mapping
    @ModelAttribute("categories")
    public List<Category> getCategories() {

        return categoryDAO.list();
    }
}
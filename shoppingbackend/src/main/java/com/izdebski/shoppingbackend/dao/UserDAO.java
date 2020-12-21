package com.izdebski.shoppingbackend.dao;

import com.izdebski.shoppingbackend.dto.Address;
import com.izdebski.shoppingbackend.dto.Cart;
import com.izdebski.shoppingbackend.dto.User;

public interface UserDAO {

    // add a user
    boolean addUser(User user);
    User getByEmail(String email);

    // add an address
    boolean addAddress(Address address);

    // add a cart
    boolean updateCart(Cart cart);
}

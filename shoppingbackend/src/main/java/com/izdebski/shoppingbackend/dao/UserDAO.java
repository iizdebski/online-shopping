package com.izdebski.shoppingbackend.dao;

import java.util.List;

import com.izdebski.shoppingbackend.dto.Address;
import com.izdebski.shoppingbackend.dto.User;

public interface UserDAO {

    // user related operation
    User get(int id);
    User getByEmail(String email);

    // add user
    boolean add(User user);

    // adding and updating a new address
    boolean addAddress(Address address);
    boolean updateAddress(Address address);
    List<Address> listAddresses(User user, boolean isBilling);
}
package com.izdebski.shoppingbackend.dao;

import com.izdebski.shoppingbackend.dto.Cart;
import com.izdebski.shoppingbackend.dto.CartLine;

import java.util.List;

public interface CartLineDAO {
    // the common method from previously coded one
    public CartLine get(int id);
    public boolean add(CartLine cartLine);
    public boolean update(CartLine cartLine);
    public boolean delete(CartLine cartLine);
    public List<CartLine> list(int cartId);

    // other business methods are related to the cart lines
    public List<CartLine> listAvailable(int cartId);
    public CartLine getByCartAndProduct(int cartId, int productId);

    // update a cart
    boolean updateCart(Cart cart);
}
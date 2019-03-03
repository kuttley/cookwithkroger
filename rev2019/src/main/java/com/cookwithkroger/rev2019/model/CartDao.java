package com.cookwithkroger.rev2019.model;

import java.util.List;

public interface CartDao {
	void addItemsToCart(List<Product> listProducts, int cart_ID);
	List<Integer> getAllProductUPCsInCart(int cart_ID);
	void emptyCart(int cart_ID);
	public Cart getById(int cartId);
	
}

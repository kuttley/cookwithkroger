package com.cookwithkroger.rev2019.model;

import java.util.List;

public interface CartDao {
	void addItemsToCart(List<Product> listProducts, int cart_ID, int quantity);
	List<Integer> getAllProductUPCsInCart(int cart_ID);
	void emptyCart(int cart_ID);
	Cart getById(int cartId);
	List<Product> getAllProductsInCart(int cart_ID);
}

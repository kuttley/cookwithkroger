package com.cookwithkroger.rev2019.model;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class CartJDBCDao implements CartDao{

	
	private JdbcTemplate jdbcTemplate;
	
	public CartJDBCDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Cart getById(int cartId) {
		String getCartByIdSql = "SELECT cart_id, customer_id FROM customer_cart WHERE cart_id = ?";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(getCartByIdSql, cartId);
		
		Cart cart = null;
		if (result.next()) {
			cart = createCart(result.getInt("cart_id"),
						result.getInt("customer_id"));
		}
		
		return cart;
	}
	
	private Cart createCart(int cartId, int customerId) {
		Cart cart = new Cart();
		cart.setCartID(cartId);
		cart.setCustomerID(customerId);
		
		return cart;
	}
	
	@Override
	public void addItemsToCart(List<Product> listProducts, int cart_ID) {
		for (Product product: listProducts) {
			String addItemsToPantry = "INSERT INTO cart_products (cart_ID, upc) VALUES (?,?);";
			jdbcTemplate.update(addItemsToPantry, cart_ID, product.getProductUPC());
		}
	}
	
	@Override
	public List<Product> getAllProductsInCart(int cart_ID) {
		List<Product> productList = new ArrayList<Product>();
		List<Integer> upcsList = getAllProductUPCsInCart(cart_ID);
		
		for (Integer currentUPC: upcsList) {
			productList.add(getByUPC(currentUPC));
		}
		
		return productList;
	}
	
	private Product getByUPC(int productUPC) {
		String getProductByUPCSql = "SELECT upc, product_description, commodity, brand, product_size FROM product WHERE UPC = ?";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(getProductByUPCSql, productUPC);
		
		Product p = null;
		if (result.next()) {
			p = createProduct(result.getInt("upc"), result.getString("product_description"), result.getString("commodity"), result.getString("brand"), result.getInt("product_size"));
		}
		
		return p;
	}
	
	private Product createProduct(int upc, String name, String commodity, String brand, int productSize) {
		Product p = new Product();
		p.setName(name);
		p.setProductUPC(upc);
		p.setCommodity(commodity);
		p.setBrand(brand);
		p.setProductSize(productSize);
		
		String getPriceByUPCSql = "SELECT product_price FROM product_store WHERE upc = ?";
		
		SqlRowSet resultPrice = jdbcTemplate.queryForRowSet(getPriceByUPCSql, upc);
		
		if(resultPrice.next()) {
			p.setPrice(resultPrice.getDouble("product_price"));
		}
		
		String getProductByUPCSql = "SELECT upc FROM pantry_products WHERE upc = ?";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(getProductByUPCSql, upc);
		
		if(result.next()) {
			p.setChecked("");
		}
		else {
			p.setChecked("checked");
		}
		
		return p;
	}
	
	@Override
	public List<Integer> getAllProductUPCsInCart(int cart_ID) {
		
		String getAllRecipes = "SELECT upc FROM cart_products WHERE cart_ID = ?";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(getAllRecipes, cart_ID);
		
		List<Integer> upcList = new ArrayList<Integer>();
		
		while (result.next()) {
			upcList.add(result.getInt("upc"));
		}
		
		return upcList;
	}
	
	@Override
	public void emptyCart(int cart_ID) {
		String emptyCart = "DELETE FROM cart_products WHERE cart_ID = ?;";
		jdbcTemplate.update(emptyCart, cart_ID);
	}
}

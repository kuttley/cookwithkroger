package com.cookwithkroger.rev2019.model;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class CartJDBCDao implements CartDao{

	
	private JdbcTemplate jdbcTemplate;
	
	public CartJDBCDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void addItemsToCart(List<Product> listProducts, int cart_ID) {
		for (Product product: listProducts) {
			String addItemsToPantry = "INSERT INTO cart_products (cart_ID, upc) VALUES (?,?);";
			jdbcTemplate.update(addItemsToPantry, cart_ID, product.getProductUPC());
		}
	}
	
	@Override
	public List<Integer> getAllProductUPCsInCart(int cart_ID) {
		
		String getAllRecipes = "SELECT upc FROM cart_products WHERE cart_ID = ?";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(getAllRecipes);
		
		List<Integer> upcList = new ArrayList<Integer>();
		
		while (result.next()) {
			upcList.add(result.getInt("cart_ID"));
		}
		
		return upcList;
	}
	
	@Override
	public void emptyCart(int cart_ID) {
		String emptyCart = "DELETE FROM cart_products WHERE cart_ID = ?;";
		jdbcTemplate.update(emptyCart, cart_ID);
	}
}

package com.cookwithkroger.rev2019.model;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class CustomerJDBCDao implements CustomerDao {
	private JdbcTemplate jdbcTemplate;
	
	public CustomerJDBCDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Customer getById(int customerId) {
		String getCustomerByIdSql = "SELECT customerid, username, firstname, lastname, password FROM customer WHERE customerid = ?";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(getCustomerByIdSql, customerId);
		
		Customer c = null;
		if (result.next()) {
			c = createCustomer(result.getInt("customerid"),
						result.getString("username"),
						result.getString("firstname"),
						result.getString("lastname"),
						result.getString("password"));
		}
		
		return c;
	}
	
	private Customer createCustomer(int customerId, String userName, String firstName, String lastName, String password) {
		Customer c = new Customer();
		c.setCustomerId(customerId);
		c.setUserName(userName);
		c.setFirstName(firstName);
		c.setLastName(lastName);
		c.setPassword(password);
		
		return c;
	}

}

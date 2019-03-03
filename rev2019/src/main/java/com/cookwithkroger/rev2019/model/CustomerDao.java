package com.cookwithkroger.rev2019.model;

import java.util.List;

import com.cookwithkroger.rev2019.model.Customer;

public interface CustomerDao {
	Customer getById(int CustomerId);
	public List<Integer> getItemUPCFromPantry(int customerId);
}

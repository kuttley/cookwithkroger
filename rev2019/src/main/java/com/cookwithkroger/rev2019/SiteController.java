package com.cookwithkroger.rev2019;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cookwithkroger.rev2019.model.Customer;
import com.cookwithkroger.rev2019.model.CustomerDao;
import com.cookwithkroger.rev2019.model.Product;
import com.cookwithkroger.rev2019.model.ProductDao;
import com.cookwithkroger.rev2019.model.Recipe;
import com.cookwithkroger.rev2019.model.RecipeDao;

@Controller 
public class SiteController {
//
//	@Autowired
//	private RecipeDao recipeDao;
//	@Autowired
//	private ProductDao productDao;
//	@Autowired
//	private CustomerDao customerDao;
	
	@RequestMapping("/")
	public String displayMainPage() {
//		Product product = productDao.getByUPC("1");
//		Customer customer = customerDao.getById(1);
//		Recipe recipe = recipeDao.getById(1);
		return "mainPage";
	}
	
	@RequestMapping("/recipeList")
	public String displayRecipeList() {
		
		return "recipeList";
	}
}

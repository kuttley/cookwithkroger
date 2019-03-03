package com.cookwithkroger.rev2019;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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

	@Autowired
	private RecipeDao recipeDao;
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CustomerDao customerDao;
	
	private List<Recipe> currentRecipes;
	
	public SiteController() {
		currentRecipes = new ArrayList<>();
	}
	
	@RequestMapping("/")
	public String displayMainPage() {
		currentRecipes.clear();
		return "mainPage";
	}
	
	@RequestMapping("/recipeList")
	public String displayRecipeList(@RequestParam String budget, 
									@RequestParam String category, 
									@RequestParam String servings,
									@RequestParam String cooktime,
									ModelMap modelHolder,
									HttpServletRequest request) {
		currentRecipes = recipeDao.getRecipeInPriceRange(Double.parseDouble(budget));

		modelHolder.put("recipes", currentRecipes);
		return "recipeList";
	}
	
	@RequestMapping("/recipeDetail")
	public String showRecipeDetail(HttpServletRequest request) {
		String recipeId = request.getParameter("recipeId");
		request.setAttribute("recipe", recipeDao.getById(Integer.parseInt(recipeId)));
		return "recipeDetail";
	}
}

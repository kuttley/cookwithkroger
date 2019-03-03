package com.cookwithkroger.rev2019;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller 
public class SiteController {

	@RequestMapping("/")
	public String displayMainPage() {
		
		return "mainPage";
	}
	
	@RequestMapping("/recipeList")
	public String displayRecipeList() {
		
		return "recipeList";
	}
}

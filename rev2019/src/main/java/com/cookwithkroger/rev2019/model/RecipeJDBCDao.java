package com.cookwithkroger.rev2019.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class RecipeJDBCDao implements RecipeDao {
	private JdbcTemplate jdbcTemplate;
	
	public RecipeJDBCDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Recipe getById(int recipeId) {
		String getRecipeByIdSql = "SELECT recipe_id, name, recipe_instructions, recipe_description, time_to_cook FROM recipe WHERE recipe_id = ?";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(getRecipeByIdSql, recipeId);
		
		Recipe r = null;
		if (result.next()) {
			r = createRecipe(result.getInt("recipe_id"), 
					result.getString("name"),
					result.getString("recipe_instructions"),
					result.getString("recipe.description"),
					result.getInt("time_to_cook")
					);
		}
		
		return r;
	}
	
	private Recipe createRecipe(int recipe_id, String name, String recipe_instructions, String recipe_description, int time_to_cook) {
		Recipe r = new Recipe();
		r.setRecipeId(recipe_id);
		r.setName(name);
		r.setDescription(recipe_description);

		List<String> instructions = new ArrayList<>();
		for (String s : recipe_instructions.split("|")) {
			instructions.add(s);
		}
		r.setInstructions(instructions);
		
		return r;
	}
}

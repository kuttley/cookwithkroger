<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<meta name="viewport" content="width=device-width" />
    <title>Cook With Kroger</title>
    <link rel="stylesheet" href="css/mainPage.css" />
    
	
<body>	
	<h2>Input Meal Requirements</h2>

<c:url value="/recipeList" var="recipeList"/>
<form method="GET" action="${recipeList}">
	<br>


	<p>
		<label for="budget">Budget:</label> <select id="budget" name="budget">
			<option value="5">Less than $5.00</option>
			<option value="10">Less than $10.00</option>
			<option value="15">Less than $15.00</option>
			<option value="20">Less than $20.00</option>
			<option value="25">Less than $25.00</option>
			<option value="50">Less than $50.00</option>
		</select>
	</p>




	<p>
		<label for="category">Meal Category:</label> <select id="category" name="category">
		
		<%-- ADD for each loop to loop through each category in our database --%>
		
			<option value="v">Vegetarian</option>
			<option value="a">American</option>
			<option value="i">Italian</option>
			<option value="m">Mexican</option>

		</select>
	</p>


	<p>
		<label for="servings">Servings:</label> <select id="servings" name="servings">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>

		</select>
	</p>

	<p>
		<label for="cooktime">Cook Time:</label> <select id="servings" name="cooktime">
			<option value="15">Less than 15 Minutes</option>
			<option value="30">Less than 30 Minutes</option>
			<option value="60">Less than 1 Hour</option>
			<option value="90">Less than 1 1/2 Hours</option>
			<option value="1000">I can cook all day, every day.</option>

		</select>
	</p>



	<br><br>
  <input type="submit" value="Find Recipes!">
</form> 


</body>


</html>
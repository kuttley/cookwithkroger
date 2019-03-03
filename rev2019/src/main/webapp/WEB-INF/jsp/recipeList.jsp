<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Recipe Results</title>
<link rel="stylesheet" href="css/recipeList.css" />

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">


</head>
<body>
	<header>
	<c:url value="css/RecipesTitle.png" var="recipesTitle" />

		<h1><img src="${recipesTitle}" id="recipesTitle" /></h1>
	</header>

	<section id="main-content">
		<div class="container" id="row3">

			<div class="row" id="row2">
				<div class="card-deck">
					<c:forEach var="recipe" items="${recipes}">
						<div class="col-sm-3 col-md-3 pb-2"  id="row1">
							<c:url var="recipePage"
								value="/recipeDetail?recipeId=${recipe.recipeId}" />
							<div class="card card-outline-info">
								<div class="card-block">
									<c:url var="recipeImage" value="${recipe.recipeImage}" />
									<div class="card-title">
										<a href="${recipePage}"> <img src="${recipeImage}" class="card-img-top" alt="recipeimage">
										</a>
									</div>
									<a href="${recipePage}">${recipe.description}</a>

									<p class="card-text">${recipe.cookTime} m <i class="far fa-clock"></i>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	
	<%-- 
	
	
	
	<table>
		<tr>
			<c:forEach var="recipe" items="${recipes}">
				<td>
					<c:url var="recipePage"
						value="/recipeDetail?recipeId=${recipe.recipeId}" />
			
				
			
			
			
		
		
				</td>
			</c:forEach>
		<tr>
	</table>
	
	
	<section id="main-content">
		<div class="container">

			<div class="row">
				<div class="card-deck">
					<c:forEach var="recipe" items="${recipes}">
						<div class="col-sm-3 col-md-3 pb-2">
							<c:url var="recipePage"
								value="/recipeDetail?recipeId=${recipe.recipeId}" />
								
							<div class="card card-outline-info">
								<div class="card-block">
									<c:url var="recipeImage" value="${recipe.recipeImage}" />
									<div class="card-title">
										<a href="${recipePage}"> <img src="${recipeImage}" class="card-img-top" alt="recipeimage">
										</a>
									</div>
									<a href="${recipePage}">${recipe.description}</a>

									<p class="card-text">${recipe.cookTime} m <i class="far fa-clock"></i>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	
	--%>



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

</body>
</html>
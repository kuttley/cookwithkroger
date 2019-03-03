<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Recipes</title>
<link rel="stylesheet" href="css/mainPage.css" />
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
		<h1>Recipes Matching Your Search</h1>
	</header>

	<section id="main-content">
		<div class="container">
			<div class="row">
				<c:forEach var="recipe" items="${recipes}">
					<c:url var="recipePage"
						value="/recipeDetail?recipeId=${recipe.recipeId}" />
					<div class="col-sm">
						<div class="card mb-3 shadow p-3 bg-white rounded"
							style="max-width: 540px;">
							<div class="row no-gutters">
								<c:url var="recipeImage" value="" />
								<a href="${recipePage}"> <img src="${recipeImage}" class="card-img-top alt="recipeimage">
								</a>
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<a href="${recipePage}">
										<h5 class="card-title">${recipe.description}</h5>
									</a>
									<p class="card-text">${recipe.cookTime} m <i class="far fa-clock"></i>
									</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>



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
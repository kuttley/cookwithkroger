<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${recipe.description}</title>
<link rel="stylesheet" href="css/recipeDetail.css" />

<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">

<style>
h1 {
font-family: 'Pacifico';font-size: 40px;
}

#ingP {
font-family: 'Pacifico';font-size: 20px;
}

#vi {
font-family: 'Pacifico';font-size: 14px;
}
</style>
</head>

<body>
	<header>
	<c:url value="css/CWKLogo5.png" var="logourl" />
		<c:url value="css/AboutUs5.png" var="aboutus" />

		<img src="${logourl}" id="logo" />
		
	</header>
		
	<div id="bodyInside">
	<h1>${recipe.description}</h1>

	<c:forEach begin="0" end="${recipe.instructions.size() -1 }" var="count">
		<p>${ recipe.instructions[ count ] }</p>
	</c:forEach>
	
	
	<c:if test="${not empty recipe.recipeVideo}">
	<p id="videop">
	
	<iframe id="video" width="336" height="189" src="${recipe.recipeVideo}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen ></iframe>
	</p>
	</c:if>
	
	<div id="Ingredients">
	
	<p id = "ingP"> Ingredients </p>
	
	
		<c:url value="/cart" var="cart" />
		<form method="GET" action="${cart}">
	
  		<input type="checkbox" name="vehicle" value="Bike"> Ingredient 1<br>
  		<input type="checkbox" name="vehicle" value="Car" checked="checked"> Ingredient 2<br>
  		<input type="submit" value="Submit">
		</form>


			
	
	
	</div>
	
	
	
	
	
	</div>
	
	

</body>

</html>
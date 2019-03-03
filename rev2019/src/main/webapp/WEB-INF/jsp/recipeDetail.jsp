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
font-family: 'Pacifico';font-size: 30px;
}
</style>
</head>

<body>

	<h1>${recipe.description}</h1>

	<c:forEach begin="0" end="${recipe.instructions.size() -1 }" var="count">
		<p>${ recipe.instructions[ count ] }</p>
	</c:forEach>

</body>

</html>
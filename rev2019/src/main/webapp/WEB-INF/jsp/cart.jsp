<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<meta name="viewport" content="width=device-width" />
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="css/cart.css" />
	



<body>

	<header>

		<c:url value="css/CWKLogo5.png" var="logourl" />
		<c:url value="css/AboutUs5.png" var="aboutus" />

		<c:url value="/" var="mainPageLink" />
		<a href = "${mainPageLink}"><img src="${logourl}" id="logo" /></a>
		<img src="${aboutus}" id="aboutus" />
	

	</header>
	
	<table>
		<tr>
			<td><h1>Items in shopping cart: </h1></td>
		</tr>
	
	</table>

</body>
</html>
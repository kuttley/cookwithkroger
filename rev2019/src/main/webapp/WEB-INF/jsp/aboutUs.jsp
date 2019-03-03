<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<meta name="viewport" content="width=device-width" />
    <title>About Us</title>
    <link rel="stylesheet" href="css/aboutUs.css" />
	



<body>

	<header>

		<c:url value="css/CWKLogo5.png" var="logourl" />
		<c:url value="css/AboutUs5.png" var="aboutus" />

		<c:url value="/" var="mainPageLink" />
		<a href = "${mainPageLink}"><img src="${logourl}" id="logo" /></a>
		<img src="${aboutus}" id="aboutus" />
	

	</header>
	
	<p>Hi everyone! We are students from TechElevator</p>
	
	<div>
		<h1>Brett Bauereis</h1>
	</div>
	
	<div>
		<h1>Kali Uttley</h1>
	</div>
	
	<div>
		<h1>Brett Anderson</h1>
	</div>
	
	<div>
		<h1>Quinn Hebert</h1>
	</div>


	
</body>




</html>
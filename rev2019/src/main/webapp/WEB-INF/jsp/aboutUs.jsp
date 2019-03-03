<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<meta name="viewport" content="width=device-width" />
    <title>About Us</title>
    <link rel="stylesheet" href="css/aboutUs.css" />
	
	<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<style>
h1 {
font-family: 'Pacifico';font-size: 30px;
}
</style>

<body>

	<header>

		<c:url value="css/CWKLogo5.png" var="logourl" />
		<c:url value="css/AboutUs5.png" var="aboutUs" />
		<c:url value="css/techElevatorLogo.png" var="techElevator" />
		
		<c:url value="https://www.linkedin.com/in/bkma/" var="brettALink" />
		<c:url value="https://www.linkedin.com/in/kaliuttley/" var="kaliLink" />
		<c:url value="https://www.linkedin.com/in/quinn-hebert/" var="quinnLink" />
		<c:url value="http://www.linkedin.com/in/brettbauereis" var="brettBLink" />

		<c:url value="/" var="mainPageLink" />
		<a href = "${mainPageLink}"><img src="${logourl}" id="logo" /></a>
		<img src="${aboutUs}" id="aboutUs" />
	

	</header>

	<div id="aboutUsInfo">

		<table>

			<tr>

				<td>
					<h1>Brett Bauereis</h1>
					<p class="personImage"><a href = "${brettBLink}"><img src="https://i.postimg.cc/5tgz0w9d/brettB.jpg" id="brettB"/></a></p>
					<div class ="abt">I like to build cool things.</div>

				</td>
				<td>
					<h1>Kali Uttley</h1>
					<p class="personImage"><a href = "${kaliLink}"><img src="https://i.postimg.cc/SRR1V6Nc/kali.jpg" id="kali"/></a><p>
					<div class ="abt">I'm sleepy.</div>
				</td>

			</tr>
			<tr>
				<td>
					<h1>Brett Anderson</h1>
					<p class="personImage"><a href = "${brettALink}"><img src="https://i.postimg.cc/fWBdZ72x/brettA.jpg" id="brettA" /></a></p>
					<div class ="abt">I code so I can afford shoes and tattoos.</div>
				</td>
				<td>
					<h1>Quinn Hebert</h1>
					<p class="personImage"><a href = "${quinnLink}"><img src="https://i.postimg.cc/44jYJJk1/quinn.jpg" id="quinn" /></a></p>
					<div class ="abt">I went to THE Ohio State University.</div>
				</td>
			</tr>

		</table>
			<div id="theGroup">
				<h1>The Group</h1>
			<img src="${techElevator}" id="techElevator" />
				
					<p id="group">We are all currently students in the Tech Elevator 14
						week coding bootcamp.</p></div>


		
	</div>
	
	<div id="ourProject">
	<h1>Our Project</h1>
		<div>CookWithKroger was made with convenience in mind. Customers will be able to search recipes within their budget from CookWithKroger.com while filtering recipes by price, category, and time to cook, and even number or servings, scaling the recipe to fit your needs. Once a recipe is selected, CookWithKroger will list all the ingredients needed ready to be added to the cart with one click. It will also provide resources to help with the preparation, including step by step instructions and even videos. We created the database using PostgreSQL, modeled after 84.51's data provided. The back-end was written in java and front-end was HTML, CSS, and Bootstrap.</div>
	</div>
	
	<div id="longTermVision">	
	<h1>Long Term Vision</h1>
		<div>In the future, we believe that CookWithKroger can effectively cut google out as the middle man between meal planning and shopping. This could be used online through ClickList or even in store; using the Kroger mobile application and showing aisle locations of the products needed. We will also be able to offer the ability to filter out any allergies or dietary restrictions. Using CookWithKroger regularly will allow the application to make smarter suggestions, based on your grocery buying pattern and what ingredients it believes you already have at home. Connecting your calendar app will also allow you to schedule selected recipes to your upcoming week, making life simpler and eliminating the daily "What's for dinner?" from the rest of the family.</div>
		
	</div>



</body>




</html>
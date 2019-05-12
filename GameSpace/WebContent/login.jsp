<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<title>ENTRA SU GAMESPACE</title>
	<link rel="icon" href="https://img.icons8.com/dusk/64/000000/controller.png" />
	
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
    
	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="css/slick.css" />
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

	<!-- nouislider -->
	<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	
	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>

<body class="bg">
	<!-- HEADER -->
	<jsp:include page="header.jsp" />

	<!-- NAVIGATION -->
	<div class="navigation">
		<div class="register-login">
				<h1>Login</h1>
					<form action="LoginServlet" method="post">		
						<p>
							<strong><font color="white">Email</font></strong>
							<input class="contact" required name="user_email" value="" />
							<br><br>
							<strong><font color="white">Password</font></strong>
							<input class="contact" type="password" name="user_password" id="user_password" value="" />
						</p>
						<br> 
							<input class="submit submit-center" type="submit" name="contact_submitted" value="Entra" />
							<%
	                        String error = (String) request.getAttribute("error");
							String success = (String) request.getAttribute("success");
							if(error != null) { %>
 								<div style="margin-top: 10px;"><strong style="color: red;"><%= error %></strong></div>
						    <% } else if(success != null) { %>
 									<div style="margin-top: 10px;"><strong style="color: green;"><%= success %></strong></div>
 							<% } %>
					</form>
		</div>
	</div>
	 
	<!-- FOOTER -->
	<jsp:include page="footer.jsp" />
	
</body>

</html>
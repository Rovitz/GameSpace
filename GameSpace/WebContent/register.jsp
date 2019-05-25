<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<title>REGISTRATI SU GAMESPACE</title>
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
			<h1>Registrati</h1>
				<form action="RegistrazioneServlet" method="post">
					<input class="contact" required name="user_email" placeholder="e-Mail" />
					<input class="contact" required name="user_nome" placeholder="Nome" />
					<input class="contact" required name="user_cognome" placeholder="Cognome"  />
					<input class="contact" type="password" name="user_password" placeholder="Password"  />
					<input class="contact" type="password" name="user_confpassword" placeholder="Ripeti password"  />				
					<p>
						<strong><font color="white">Sesso:</font></strong>
						&nbsp;
						<strong><font color="white">Uomo</font></strong>
						&nbsp; &nbsp;
						<strong><font color="white">Donna</font></strong>
						<br>
						<input class="checkbox" type="radio" name="user_sesso" value="uomo" style="left:1%;"/>
						<input class="checkbox" type="radio" name="user_sesso" value="donna" style="left:9%;"/>
					</p>
					<input class="submit" type="submit" name="contact_submitted" value="Registrati" />
					<% String error = (String) request.getAttribute("error");
					if(error != null) { %>
 						<div style="margin-top: 10px;"><strong style="color: red;"><%= error %></strong></div>
 					<% } %>
			</form>
		</div>
	</div>
	 
    <!-- FOOTER -->
	<jsp:include page="footer.jsp" />
</body>
</html>
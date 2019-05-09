<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<title>Registrati su GAMESPACE</title>

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
	<section id="prova" align="center">
				
				<h1>Login</h1>

				<!--/  <form action="RegistrazioneServlet" method="post" id="form">
					<section class="form_settings"> 
					-->
						<br>
						<p>
							<strong><font color="white"> Email </font></strong>
							<input class="contact" required name="user_email" value="" />
						</p>
						<br>
						<p>
							<strong><font color="white"> Password</font></strong>
							<input class="contact" type="password" name="user_password" id="user_password" value="" />
						</p>
						<br> 
	
						<p>
							<input class="submit" style="margin-top: 20px; align: center;" type="submit" name="contact_submitted" value="Entra" />
						</p>
					</section>
	 
	<!-- FOOTER -->
	<jsp:include page="footer.jsp" />
	 
	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
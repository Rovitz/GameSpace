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
	<section id="prova">
				<h1>Registrati</h1>
						<form action="RegistrazioneServlet" method="post" id="form">
						<p>
							<strong><font color="white">Email</font></strong>
							<input class="contact" required name="user_email" value="" />
							<br><br>
							<strong><font color="white">Nome</font></strong>
							<input class="contact" required name="user_nome" value="" />
							<br><br>
							<strong><font color="white">Cognome</font></strong>
							<input class="contact" required name="user_cognome" value="" />
							<br><br>
							<strong><font color="white">Password</font></strong>
							<input class="contact" type="password" name="user_password" id="user_password" value="" />
							<br><br>
							<strong><font color="white">Conferma Password</font></strong>
							<input class="contact" type="password" name="user_confpassword" value="" />
						</p>	
						<br>					
						<section>
						    <strong><font color="white">Sesso:</font></strong>
						    &nbsp;
							<strong><font color="white">Uomo</font></strong>
							&nbsp; &nbsp;
							<strong><font color="white">Donna</font></strong>
							<br>
							<input class="checkbox" type="radio" name="user_sesso" value="u" style="left:60px;"/>
							<input class="checkbox" type="radio" name="user_sesso" value="d" style="left:100px;"/>
						</section>
						<p style="margin-top: 20px; align:center;">
							<input class="submit" type="submit" name="contact_submitted" value="Registrati" />
						</p>
						</form>
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
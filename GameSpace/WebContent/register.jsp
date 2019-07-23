<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="it">
<head>
	<title>GAMESPACE</title>
	<link rel="icon" href="https://img.icons8.com/dusk/64/000000/controller.png" />
	<link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="css/slick.css" />
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
	<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>

<body class="bg">
	<!-- HEADER -->
	<jsp:include page="header.jsp" />
	
	<!-- NAVIGATION -->
	<div class="navigation">
		<div class="register">
			<h1>REGISTRATI</h1>
				<form action="RegistrazioneServlet" method="post" name="register" onsubmit="return validateRegister()">
					<div class="data">
						<h3>DATI UTENTE</h3>
						<input class="contact1" required name="user_email" placeholder="e-Mail" />
						<input class="contact1" required name="user_nome" placeholder="Nome" />
						<input class="contact1" required name="user_cognome" placeholder="Cognome"  />
						<input class="contact1" type="password" name="user_password" placeholder="Password"  />
						<input class="contact1" type="password" name="user_confpassword" placeholder="Ripeti password"  />				
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
					</div>
					<div class="shipping">
						<h3>SPEDIZIONE</h3>
						<div class="shipping-left">
							<input type="text" class="contact1" required name="nominativo" placeholder="Nominativo"/>	
							<input type="text" class="contact1" required name="via" placeholder="Via" />
							<input type="text" class="contact1" required name="comune" placeholder="Comune" />
						</div>
						<div class="shipping-right">
							<input type="text" class="contact1" required name="cap" placeholder="CAP"  />
							<input type="text" class="contact1" required name="provincia" placeholder="Provincia"  />
							<input type="text" class="contact1" required name="telefono" placeholder="Telefono" />
						</div>
					</div>
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
	
	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.form.min.js"></script> 
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/user_cart.js"></script>
	<script src="js/validation.js"></script>
	<!-- /jQuery Plugins -->
</body>
</html>
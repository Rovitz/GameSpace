<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

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

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body class="bg">
	<!-- HEADER -->
	<header >
		<!-- top Header -->
		<div id="top-header">
			<div class="container">
				<div class="pull-left">
					<span></span>
				</div>
				<div class="pull-right">
					<ul class="header-top-links">
						<li><a href="#">Store</a></li>
						<li class="dropdown default-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">ENG <i class="fa fa-caret-down"></i></a>
							<ul class="custom-menu">
								<li><a href="#">English (ENG)</a></li>
								<li><a href="#">Russian (Ru)</a></li>
								<li><a href="#">French (FR)</a></li>
								<li><a href="#">Spanish (Es)</a></li>
                                <li><a href="#"> Italian (It)</a></li>
							</ul>
						</li>
						<li class="dropdown default-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">USD <i class="fa fa-caret-down"></i></a>
							<ul class="custom-menu">
								<li><a href="#">USD ()</a></li>
								<li><a href="#">EUR ()</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /top Header -->

		<!-- header -->
		<div id="header">
			<div class="container">
				<div class="pull-left">
					<!-- Logo -->
					<div class="header-logo">
						<a class="logo" href="index.jsp">
							<img src="./img/logosito.png" alt="">
						</a>
					</div>
					<!-- /Logo -->

				</div>
				<div class="pull-right">
					<ul class="header-btns">
						<!-- Account -->
						<li class="header-account dropdown default-dropdown">
							<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-user-o"></i>
								</div>
								<strong class="text-uppercase marginright">Il mio Account</strong><i class="fa fa-caret-down"></i>
							</div>
							<a href="Login.jsp" class="text-uppercase">Login</a> / <a href="Registrati.jsp" class="text-uppercase">Registrati</a>
							<ul class="custom-menu">
								<li><a href="#"><i class="fa fa-user-o"></i> Il mio Account</a></li>
								<li><a href="#"><i class="fa fa-unlock-alt"></i> Login</a></li>
								<li><a href="#"><i class="fa fa-user-plus"></i> Crea Account</a></li>
							</ul>
						</li>
						<!-- /Account -->

						<!-- Cart -->
						<li class="header-cart dropdown default-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-shopping-cart"></i>
									<span class="qty">3</span>
								</div>
								<strong class="text-uppercase">Il mio carrello:</strong>
								<br>
								<span>35.20$</span>
							</a>
							<div class="custom-menu">
								<div id="shopping-cart">
									<div class="shopping-cart-list">
										<div class="product product-widget">
											<div class="product-thumb">
												<img src="./img/thumb-product01.jpg" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-price">$32.50 <span class="qty">x3</span></h3>
												<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
											</div>
											<button class="cancel-btn"><i class="fa fa-trash"></i></button>
										</div>
										<div class="product product-widget">
											<div class="product-thumb">
												<img src="./img/thumb-product01.jpg" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-price">$32.50 <span class="qty">x3</span></h3>
												<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
											</div>
											<button class="cancel-btn"><i class="fa fa-trash"></i></button>
										</div>
									</div>
									<div class="shopping-cart-btns">
										<button class="main-btn">View Cart</button>
										<button class="primary-btn">Checkout <i class="fa fa-arrow-circle-right"></i></button>
									</div>
								</div>
							</div>
						</li>
						<!-- /Cart -->

						<!-- Mobile nav toggle-->
						<li class="nav-toggle">
							<button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
						</li>
						<!-- / Mobile nav toggle -->
					</ul>
				</div>
			</div>
			<!-- header -->
		</div>
		<!-- container -->
	</header>
	<!-- /HEADER -->

	
				<!-- /category nav -->

				<!-- menu nav -->
				
				<!-- menu nav -->
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /NAVIGATION -->
	<section id="prova">
				
				<h1>Registrati</h1>

				<!--/  <form action="RegistrazioneServlet" method="post" id="form">
					<section class="form_settings"> 
					-->
					
						<br>
						<p>
							<span><font color="white"> Email </font></span><input class="contact" required
								name="user_email" value="" />
						</p>
						<br>
						<p>
							<span><font color="white">Nome</font></span><input class="contact" required
								name="user_nome" value="" />
						</p>
						<br>
						<p>
							<span><font color="white" >Cognome</font></span><input class="contact" required
								name="user_cognome" value="" />
						</p>
						<br>
						<p>
							<span><font color="white"> Password</font></span><input class="contact" type="password"
								name="user_password" id="user_password" value="" />
						</p>
						<br>
						<p>
							<span><font color="white">Conferma Password</font></span><input class="contact"
								type="password" name="user_confpassword" value="" />
						</p>
						<br>
						<p><font color="white">Sesso:</font></p>

						<p>
							<span> <font color="white">Uomo </font></span><input class="checkbox" type="radio"
								name="user_sesso" value="u" />
						</p>
						<p>
							<span><font color="white">Donna</font></span><input class="checkbox" type="radio"
								name="user_sesso" value="d" />
						</p>

						<p style="padding-top: 10px; margin-left:-212px;">
							<span></span><input class="submit" type="submit"
								name="contact_submitted" value="Registrati" />
						</p>
					</section>
	 


	<!-- FOOTER -->
	<footer id="footer" class="section section-grey">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- footer widget -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<!-- footer logo -->
						<div class="footer-logo">
							<a class="logo" href="#">
		            <img src="./img/logosito.png" alt="">
		          </a>
						</div>
						<!-- /footer logo -->

						<em>" La vita e' come un videogioco scegli tu quale controller prendere... "</em>
                        <br>

						<!-- footer social -->
						<ul class="footer-social">
							<li><a href="#" class="footer-icons"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="footer-icons" ><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="footer-icons"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#" class="footer-icons"><i class="fa fa-pinterest"></i></a></li>
						</ul>
						<!-- /footer social -->
					</div>
				</div>
				<!-- /footer widget -->

				<!-- footer widget -->
				<section id="footerprova2">
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header">Il mio account:</h3>
						<ul class="list-links">
							<li><a href="#" class="footer-icons">My Account</a></li>
							<li><a href="#" class="footer-icons">Login</a></li>
							<li><a href="#" class="footer-icons">Logout</a></li>

						</ul>
					</div>
				</div>
					</section>

				<section id="footerprova"><!-- footer subscribe -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header">Stay Connected</h3>
						<p>Per ricevere notizie sulle ultime uscite, sconti e offerte. </p>
						<form>
							<div class="form-group">
								<input class="input" placeholder="Inserisci email">
							</div>
							<button class="primary-btn">Ricevi notizie</button>
						</form>
					</div>
				</div>
					</section>
				<!-- /footer subscribe -->
			</div>
			<!-- /row -->
			<hr>
			<!-- row -->
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<!-- footer copyright -->
					<div class="footer-copyright">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
					<!-- /footer copyright -->
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</footer>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
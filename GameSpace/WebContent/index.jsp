<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="it">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>GAMESPACE</title>

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

<body>
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
								<li><a href="#">USD ($)</a></li>
								<li><a href="#">EUR (€)</a></li>
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
						<a class="logo" href="#">
							<img src="./img/logosito.jpg" alt="">
						</a>
					</div>
					<!-- /Logo -->

					<!-- Search -->
					<div class="header-search">
						<form>
							<input class="input search-input" type="text" placeholder="Cerca nel sito">
							<select class="input search-categories">
								<option value="0">Tutte le categorie</option>
								<option value="1">Videogiochi</option>
								<option value="2">Accessori</option>
								<option value="3">Console</option>
							</select>
							<button class="search-btn"><i class="fa fa-search"></i></button>
						</form>
					</div>
					<!-- /Search -->
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
							<a href="Login.jsp" class="text-uppercase">Login</a> / <a href="Registrati1.jsp" class="text-uppercase">Registrati</a>
							<ul class="custom-menu">
								<li><a href="#"><i class="fa fa-user-o"></i>Il mio Account</a></li>
								<li style="margin-left: 3px"><a href="#"><i class="fa fa-unlock-alt"></i>Login</a></li>
								<li><a href="#" style="margin-left: -6px"><i class="fa fa-user-plus"></i>Crea Account</a></li>
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

	<!-- NAVIGATION -->
	<div id="navigation">
		<!-- container -->
		<div class="container">
			<div id="responsive-nav">
				<!-- category nav -->
				<div class="category-nav">
					<span class="category-header">Categorie <i class="fa fa-list"></i></span>
					<ul class="category-list">
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">PS4 <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">GENERE</h3></li>
											<li><a href="#">RPG</a></li>
											<li><a href="#">Arcade</a></li>
											<li><a href="#">Sport</a></li>
											<li><a href="#">Platform</a></li>
											<li><a href="#">Sparatutto</a></li>
											</ul>
											<hr class="hidden-md hidden-lg">
									</div>
									<div class="col-md-4">
										<ul class="list-links">
											<li>
											
											<h3 class="list-links-title"> PS4 </h3></li>
											<li><a href="#">Strategici</a></li>
											<li><a href="#">Picchiaduro</a></li>
											<li><a href="#">Survival Horror</a></li>
											<li><a href="#">Giochi di guida</a></li>
											<li><a href="#">Rompicapo</a></li>
											
										</ul>
									</div>
							</div>
					
						<li class="dropdown side-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">PC <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">GENERE</h3></li>
											<li><a href="#">RPG</a></li>
											<li><a href="#">Arcade</a></li>
											<li><a href="#">Sport</a></li>
											<li><a href="#">Platform</a></li>
											<li><a href="#">Sparatutto</a></li>
											</ul>
											<hr class="hidden-md hidden-lg">
									</div>
									<div class="col-md-4">
										<ul class="list-links">
											<li>
											
											<h3 class="list-links-title"> PC </h3></li>
											<li><a href="#">Strategici</a></li>
											<li><a href="#">Picchiaduro</a></li>
											<li><a href="#">Survival Horror</a></li>
											<li><a href="#">Giochi di guida</a></li>
											<li><a href="#">Rompicapo</a></li>
											
										</ul>
									</div>
							</div>
											
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">XBOX <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
											<li>
											<h3 class="list-links-title">GENERE</h3></li>
											<li><a href="#">RPG</a></li>
											<li><a href="#">Arcade</a></li>
											<li><a href="#">Sport</a></li>
											<li><a href="#">Platform</a></li>
											<li><a href="#">Sparatutto</a></li>
											</ul>
											<hr class="hidden-md hidden-lg">
									</div>
									<div class="col-md-4">
										<ul class="list-links">
											<li>
											
											<h3 class="list-links-title"> XBOX </h3></li>
											<li><a href="#">Strategici</a></li>
											<li><a href="#">Picchiaduro</a></li>
											<li><a href="#">Survival Horror</a></li>
											<li><a href="#">Giochi di guida</a></li>
											<li><a href="#">Rompicapo</a></li>
											
										</ul>
									</div>
							</div>
												
							
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">SWITCH <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
												<li>
												<h3 class="list-links-title">GENERE</h3></li>
											<li><a href="#">RPG</a></li>
											<li><a href="#">Arcade</a></li>
											<li><a href="#">Sport</a></li>
											<li><a href="#">Platform</a></li>
											<li><a href="#">Sparatutto</a></li>
											</ul>
											<hr class="hidden-md hidden-lg">
									</div>
									<div class="col-md-4">
										<ul class="list-links">
											<li>
											
											<h3 class="list-links-title"> SWITCH </h3></li>
											<li><a href="#">Strategici</a></li>
											<li><a href="#">Picchiaduro</a></li>
											<li><a href="#">Survival Horror</a></li>
											<li><a href="#">Giochi di guida</a></li>
											<li><a href="#">Rompicapo</a></li>
											
										</ul>
									</div>
							</div>
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">ACCESSORI <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
										<li>
												<h3 class="list-links-title">ACCESSORI</h3></li>
											<li><a href="#">Portachiavi</a></li>
											<li><a href="#">Zaino</a></li>
											<li><a href="#">Sticker</a></li>
											</ul>
											<hr class="hidden-md hidden-lg">
									</div>
									<div class="col-md-4">
										<ul class="list-links">
											<li>
											<h3 class="list-links-title"> PERIFERICHE </h3></li>
											<li><a href="#">Cuffie</a></li>
											<li><a href="#">Tastiera</a></li>
											<li><a href="#">Mouse</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
					</div>
								
				<!-- /category nav -->

				<!-- menu nav -->
				<div class="menu-nav">
					<span class="menu-header">Menu <i class="fa fa-bars"></i></span>
					<ul class="menu-list">
						<li><a href="#">Home</a></li>
						<li><a href="#">Usato</a></li>
						<li><a href="#">Sconti</a></li>
						<li><a href="#">Ultime Uscite</a></li>
					</ul>
				</div>
	
	<!-- /NAVIGATION -->

	<!-- HOME -->
	<div id="home">
		<!-- container -->
		<div class="container">
			<!-- home wrap -->
			<div class="home-wrap">
				<!-- home slick -->
				<div id="home-slick">
					<!-- banner -->
					<div class="banner banner-1">
						<img src="./img/kingdom.jpg" alt="">
						<div class="banner-caption text-center">
							<h1></h1>
							<h3 class="white-color font-weak"></h3>
							<button class="primary-btn">Compralo Subito</button>
						</div>
					</div>
					<!-- /banner -->

					<!-- banner -->
					<div class="banner banner-1">
						<img src="./img/devi.jpg" alt="">
						<div class="banner-caption">
							<h1 class="primary-color"><br><span class="white-color font-weak"></span></h1>
							<button class="primary-btn">Compralo Subito</button>
						</div>
					</div>
					<!-- /banner -->

					<!-- banner -->
					<div class="banner banner-1">
						<img src="./img/mario.jpg" alt="">
						<div class="banner-caption">
							<h1 class="white-color"><span></span></h1>
							<button class="primary-btn">Compralo Subito</button>
						</div>
					</div>
					<!-- /banner -->
				</div>
				<!-- /home slick -->
			</div>
			<!-- /home wrap -->
		</div>
		<!-- /container -->
	</div>
	<!-- /HOME -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- banner -->
				<div class="col-md-4 col-sm-6">
					<a class="banner banner-1" href="#">
						<img src="./img/PS4.jpg" alt="">
						<div class="banner-caption text-center">
							<h2 class="white-color">PS4</h2>
						</div>
					</a>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-sm-6">
					<a class="banner banner-1" href="#">
						<img src="./img/xboxone.jpg" width="100" height="200" >
						<div class="banner-caption text-center">
							<h2 class="white-color">Xbox One</h2>
						</div>
					</a>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3">
					<a class="banner banner-1" href="#">
						<img src="./img/switch.jpg" width="100" height="200">
						<div class="banner-caption text-center">
							<h2 class="white-color">Switch</h2>
						</div>
					</a>
				</div>
				<!-- /banner -->

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section-title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">Piu' venduti</h2>
						<div class="pull-right">
							<div class="product-slick-dots-1 custom-dots"></div>
						</div>
					</div>
				</div>
				<!-- /section-title -->

				<!-- banner -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="banner banner-2">
						<img src="./img/giochi.jpg"  alt="">
						<div class="banner-caption">
							<h2 class="white-color"><br></h2>
						</div>
					</div>
				</div>
				<!-- /banner -->

				<!-- Product Slick -->
				<div class="col-md-9 col-sm-6 col-xs-6">
					<div class="row">
						<div id="product-slick-1" class="product-slick">
							<!-- Product Single -->
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span>New</span>
										</div>
									
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Vedi Altro</button>
									<img src="./img/Mario Kart.jpg"  width="150" height="350" />
								
								</div>
								<div class="product-body">
									<h3 class="product-price">$80.00</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h3 class="product-nome"><a href="#">Mario Kart Deluxe 8</a></h3>
									<h4 class="product-console"><a href="#">Console: Nintendo Switch</a></h4>
									<div class="product-btns">
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Aggiungi al carrello</button>
									</div>
								</div>
							</div>
							<!-- /Product Single -->

							<!-- Product Single -->
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span>New</span>
									</div>
									
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi Altro</button>
									<img src="./img/Fifa19.png"  width="150" height="350">
								</div>
								<div class="product-body">
									<h3 class="product-price">$30.00</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h1 class="product-name"><a href="#">Fifa 19</a></h1>
									<h4 class="product-console"><a href="#">Console: PS4</a></h4>
									<div class="product-btns">
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
									</div>
								</div>
							</div>
							<!-- /Product Single -->

							<!-- Product Single -->
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span>New</span>
									</div>
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
									<img src="./img/ARK.jpg" width="150" height="350">
								</div>
								<div class="product-body">
									<h3 class="product-price">$50.00</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h2 class="product-name"><a href="#">ARK: Survival Evolved</a></h2>
									<h4 class="product-console"><a href="#">Console: XBOX ONE</a></h4>
									<div class="product-btns">
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
									</div>
								</div>
							</div>
							<!-- /Product Single -->

							<!-- Product Single -->
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span>New</span>
									</div>
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
									<img src="./img/Kh3.jpg"  width="150" height="350">
								</div>
								<div class="product-body">
									<h3 class="product-price">$80.00</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h2 class="product-name"><a href="#">Kingdom Hearts III</a></h2>
									<h4 class="product-console"><a href="#">Console: PS4</a></h4>

									<div class="product-btns">
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
									</div>
								</div>
							</div>
							<!-- /Product Single -->
						</div>
					</div>
				</div>
				<!-- /Product Slick -->
			</div>
			<!-- /row -->

			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">Top 5</h2>
						<div class="pull-right">
							<div class="product-slick-dots-2 custom-dots">
							</div>
						</div>
					</div>
				</div>
				<!-- section title -->

				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="banner banner-2">
						<img src="./img/Top5.jpg"  alt="">
						<div class="banner-caption">
							<h2 class="white-color"><br></h2>
						</div>
					</div>
				</div>

				<!-- Product Slick -->
				<div class="col-md-9 col-sm-6 col-xs-6">
					<div class="row">
						<div id="product-slick-2" class="product-slick">
							<!-- Product Single -->
							<div class="product product-single">
								<div class="product-thumb">
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
									<img src="./img/Mario Odissey.jpg"  width="150" height="350">
								</div>
								<div class="product-body">
									<h3 class="product-price">$70.00</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h2 class="product-name"><a href="#">Super Mario Odissey</a></h2>
									<h4 class="product-console"><a href="#">Console: Nintendo Switch</a></h4>

									<div class="product-btns">
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
									</div>
								</div>
							</div>
							<!-- /Product Single -->

							<!-- Product Single -->
							<div class="product product-single">
								<div class="product-thumb">
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
									<img src="./img/WOW.jpg" width="150" height="350">
								</div>
								<div class="product-body">
									<h3 class="product-price">$35.00</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h2 class="product-name"><a href="#"></a>World Of Warcraft Battle Of Azeroth</h2>
									<h4 class="product-console"><a href="#">Console: PC</a></h4>

									<div class="product-btns">
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
									</div>
								</div>
							</div>
							<!-- /Product Single -->

							<!-- Product Single -->
							<div class="product product-single">
								<div class="product-thumb">
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
									<img src="./img/Halo5.png" width="150" height="350">
								</div>
								<div class="product-body">
									<h3 class="product-price">$60.00</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h2 class="product-name"><a href="#">HALO 5</a></h2>
									<h4 class="product-console"><a href="#">Console: XBOX ONE</a></h4>

									<div class="product-btns">
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
									</div>
								</div>
							</div>
							<!-- /Product Single -->

							<!-- Product Single -->
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
									</div>
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
									<img src="./img/Red dead.jpg" width="150" height="350">
								</div>
								<div class="product-body">
									<h3 class="product-price">$50.00</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h2 class="product-name"><a href="#">Red Dead Redemption II</a></h2>
									<h4 class="product-console"><a href="#">Console: PS4</a></h4>

									<div class="product-btns">
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
									</div>
								</div>
							</div>
							<!-- /Product Single -->

						</div>
					</div>
				</div>
				<!-- /Product Slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- section -->
	
	<!-- /section -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">Scontati</h2>
					</div>
				</div>
				<!-- section title -->

				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<div class="product-label">
								<span>New</span>
								<span class="sale">-30%</span>
							</div>
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
							<img src="./img/cod.jpg" width="150" height="350">
						</div>
						<div class="product-body">
							<h3 class="product-price">$21.00 <del class="product-old-price"> $30.00</del></h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="#">Call Of Duty Black Ops II</a></h2>
							<h4 class="product-console"><a href="#">Console: PS4</a></h4>

							<div class="product-btns">
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Single -->

				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<div class="product-label">
								<span class="sale">-20%</span>
							</div>
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
							<img src="./img/bordelans.jpg" width="150" height="350">
						</div>
						<div class="product-body">
							<h3 class="product-price">$32.00<del class="product-old-price">$40.00</del></h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="#">Bordelands III</a></h2>
							<h4 class="product-console"><a href="#">Console: XBOX ONE</a></h4>

							<div class="product-btns">
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Single -->

				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<div class="product-label">
								<span class="sale">-50%</span>
							</div>
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
							<img src="./img/pokemon.jpg" height="350" width="150">
						</div>
						<div class="product-body">
							<h3 class="product-price">$30.00<del class="product-old-price">$60.00</del></h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="#">Pokken Tournament DX</a></h2>
							<h4 class="product-console"><a href="#">Console: Nintendo Switch</a></h4>

							<div class="product-btns">
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi il carrello</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Single -->

				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<div class="product-label">
								<span class="sale">-40%</span>
							</div>
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
							<img src="./img/skyrim.jpg" width="150" height="350">
						</div>
						<div class="product-body">
							<h3 class="product-price">$60.00<del class="product-old-price">$80.00</del></h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="#"></a>Skyrim</h2>
							<h4 class="product-console"><a href="#">Console: PC</a></h4>

							<div class="product-btns">
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Single -->
			</div>
			<!-- /row -->

			

				
			<!-- /row -->

			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">Accessori</h2>
					</div>
				</div>
				<!-- section title -->

				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
							<img src="./img/vr2.jpg" width="100" height="200">
						</div>
						<div class="product-body">
							<h3 class="product-price">$250.00</h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="#"></a>PlayStation VR</h2>
							<div class="product-btns">
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Single -->

				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<div class="product-label">
								<span>New</span>
							</div>
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
							<img src="./img/controller.jpeg" height="200" width="100">
						</div>
						<div class="product-body">
							<h3 class="product-price">$50.00</h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="#">Controller PS4</a></h2>
							<div class="product-btns">
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Single -->

				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<div class="product-label">
								<span>New</span>
								<span class="sale">-10%</span>
							</div>
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
							<img src="./img/custodia2.jpg" weight="100" height="200">
						</div>
						<div class="product-body">
							<h3 class="product-price">$27.00<del class="product-old-price">$30.00</del></h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="#">Custodia Nintendo Switch</a></h2>
							<div class="product-btns">
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Single -->

				<!-- Product Single -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi altro</button>
							<img src="./img/mouse.jpg" width="100" height="200">
						</div>
						<div class="product-body">
							<h3 class="product-price">$10.00</h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="#">Mouse</a></h2>
							<div class="product-btns">
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Single -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

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
		            <img src="./img/logosito.jpg" alt="" style="margin-bottom: -100px;">
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

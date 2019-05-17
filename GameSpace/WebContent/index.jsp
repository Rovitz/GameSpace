<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="Database.*"
	import="Beans.*"
	import="java.sql.*"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<title>GAMESPACE</title>
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
	
	<% Connection connection = null;
	ResultSet rs = null;
	Statement stmt = null;
	Gioco g = null; %>
</head>

<body class="bg">
	<!-- HEADER -->
	<jsp:include page="header.jsp" />

	<!-- NAVIGATION -->
	<div class="navigation">
		<!-- container -->
		<div class="container">
			<!-- responsive nav -->
			<div id="responsive-nav">
				<!-- category nav -->
				<div class="category-nav">
					<span class="category-header">CATALOGO<i class="fa fa-list"></i></span>
					<ul class="category-list">
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">PS4<i class="fa fa-angle-right"></i></a>
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
												<h3 class="list-links-title">ALTRO</h3></li>
												<li><a href="#">Strategici</a></li>
												<li><a href="#">Picchiaduro</a></li>
												<li><a href="#">Survival Horror</a></li>
												<li><a href="#">Giochi di guida</a></li>
												<li><a href="#">Rompicapo</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
					
						<li class="dropdown side-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">PC<i class="fa fa-angle-right"></i></a>
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
											<h3 class="list-links-title">ALTRO</h3></li>
											<li><a href="#">Strategici</a></li>
											<li><a href="#">Picchiaduro</a></li>
											<li><a href="#">Survival Horror</a></li>
											<li><a href="#">Giochi di guida</a></li>
											<li><a href="#">Rompicapo</a></li>
											
										</ul>
									</div>
								</div>
							</div>
						</li>
											
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">XBOX<i class="fa fa-angle-right"></i></a>
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
												<h3 class="list-links-title">ALTRO</h3></li>
												<li><a href="#">Strategici</a></li>
												<li><a href="#">Picchiaduro</a></li>
												<li><a href="#">Survival Horror</a></li>
												<li><a href="#">Giochi di guida</a></li>
												<li><a href="#">Rompicapo</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
												
							
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">SWITCH<i class="fa fa-angle-right"></i></a>
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
												<h3 class="list-links-title">ALTRO</h3></li>
												<li><a href="#">Strategici</a></li>
												<li><a href="#">Picchiaduro</a></li>
												<li><a href="#">Survival Horror</a></li>
												<li><a href="#">Giochi di guida</a></li>
												<li><a href="#">Rompicapo</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
							
							<li class="dropdown side-dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">CONSOLE<i class="fa fa-angle-right"></i></a>
									<div class="custom-menu">
										<div class="row">
											<div class="col-md-4">
												<ul class="list-links">
													<li>
													<h3 class="list-links-title">PLAYSTATION</h3></li>
													<li><a href="#">PS4</a></li>
													<li><a href="#">PS3</a></li>
													<li><a href="#">PS2</a></li>
													<li><a href="#">PS1</a></li>
												</ul>
												<hr class="hidden-md hidden-lg">
												<br>
												<ul class="list-links">
													<li>
													<h3 class="list-links-title">XBOX</h3></li>
													<li><a href="#">XBOX ONE S</a></li>
													<li><a href="#">XBOX ONE</a></li>
													<li><a href="#">XBOX 360</a></li>
													<li><a href="#">XBOX ARCADE</a></li>
												</ul>
											</div>
											<div class="col-md-4">
												<ul class="list-links">
													<li>
													<h3 class="list-links-title">NINTENDO</h3></li>
													<li><a href="#">NINTENDO SWITCH</a></li>
													<li><a href="#">NINTENDO 3DS</a></li>
													<li><a href="#">NINTENDO DSi</a></li>
													<li><a href="#">NINTENDO DS lite</a></li>
												</ul>
												<hr class="hidden-md hidden-lg">
												<br>
												<ul class="list-links">
													<li>
													<h3 class="list-links-title">PC</h3></li>
													<li><a href="#">PORTATILI</a></li>
													<li><a href="#">FISSO</a></li>
													<li><a href="#">MAC</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">ACCESSORI<i class="fa fa-angle-right"></i></a>
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
												<h3 class="list-links-title">PERIFERICHE</h3></li>
												<li><a href="#">Cuffie</a></li>
												<li><a href="#">Tastiera</a></li>
												<li><a href="#">Mouse</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>		
					<!-- /category nav -->

				<!-- menu nav -->
				<div class="menu-nav">
					<ul class="menu-list">
						<li><a href="#">Home</a></li>
						<li><a href="result.jsp?section=usato">Usato</a></li>
						<li><a href="result.jsp?section=scontati">Sconti</a></li>
						<li><a href="result.jsp?section=ultime_uscite">Ultime Uscite</a></li>
					</ul>
				</div>
				<!--  /menu nav -->
			</div>
			<!--  /responsive nav -->
		</div>
		<!-- /container -->

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
						<img src="./img/ps4.png">
					</a>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-sm-6" style="margin-top: 70px;">
					<a class="banner banner-1" href="#">
						<img src="./img/switch.png">
					</a>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-sm-6" style="margin-top: 70px;">
					<a class="banner banner-1" href="#">
						<img src="./img/xboxone.png">
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
							<%
							try{
								connection = Database.getConnection();
								stmt = connection.createStatement();
								rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"piu_venduti\"");

								while(rs.next()){ 
									g = DatabaseQuery.getGioco(rs.getInt("IDGioco")); %>
									<div class="product product-single">
										<div class="product-thumb">
											<div class="product-label">
												<span>New</span>
											</div>
									
											<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Vedi Altro</button>
											<img src="./img/<%=g.getCover()%>"  width="150" height="350" />
										</div>
									<div class="product-body">
										<h3 class="product-price">€<%=g.getPrezzo() %></h3>
											<div class="product-rating">
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star-o empty"></i>
											</div>
										<h3 class="product-nome"><a href="#"><%=g.getTitolo() %></a></h3>
										<h4 class="product-console"><a href="#"><%=g.getPiattaforma() %></a></h4>
										<div class="product-btns">
											<form action="LoginServlet" method="post">
												<input type="submit" class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Aggiungi al carrello</input>
											</form>
										</div>
									</div>
									</div>
								<% }
							} 
							catch (SQLException e){
							}%>
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
							<% 
							try{
								connection = Database.getConnection();
								stmt = connection.createStatement();
								rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"top_5\"");

								while(rs.next()){ 
									g = DatabaseQuery.getGioco(rs.getInt("IDGioco")); %>
									<div class="product product-single">
										<div class="product-thumb">
											<div class="product-label">
												<span>New</span>
											</div>
									
											<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Vedi Altro</button>
											<img src="./img/<%=g.getCover()%>"  width="150" height="350" />
										</div>
									<div class="product-body">
										<h3 class="product-price">€<%=g.getPrezzo() %></h3>
											<div class="product-rating">
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star-o empty"></i>
											</div>
										<h3 class="product-nome"><a href="#"><%=g.getTitolo() %></a></h3>
										<h4 class="product-console"><a href="#"><%=g.getPiattaforma() %></a></h4>
										<div class="product-btns">
											<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Aggiungi al carrello</button>
										</div>
									</div>
									</div>
								<% }
							} 
							catch (SQLException e){
							}%>
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
						<h2 class="title">Scontati</h2>
					</div>
				</div>
			</div>
				
			<!-- Product Single -->
			<% 
			try{
				connection = Database.getConnection();
				stmt = connection.createStatement();
				rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"scontati\"");

				while(rs.next()){ 
				g = DatabaseQuery.getGioco(rs.getInt("IDGioco")); %>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							<div class="product-label">
								<span>New</span>
								<span class="sale">-30%</span>
							</div>
									
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Vedi Altro</button>
							<img src="./img/<%=g.getCover()%>"  width="150" height="350" />
						</div>
						<div class="product-body">
							<h3 class="product-price">€<%=g.getPrezzo() %><del class="product-old-price">€40.00</del></h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
								<h2 class="product-nome"><a href="#"><%=g.getTitolo() %></a></h2>
								<h4 class="product-console"><a href="#"><%=g.getPiattaforma() %></a></h4>
								<div class="product-btns">
									<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Aggiungi al carrello</button>
								</div>
						</div>
					</div>
				</div>
				<% }
				} 
				catch (SQLException e){}%>
			<!-- /Product Single -->
			</div>
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
							<img src="./img/vr.png" width="200" height="200">
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
							<img src="./img/controller.png" height="200" width="200">
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
							<h2 class="product-name"><a href="#">Controller XBOX</a></h2>
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
							<img src="./img/custodia.png" width="200" height="200">
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
							<img src="./img/mouse.png" width="200" height="200">
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
	
	</div>	
	<!-- /NAVIGATION -->

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
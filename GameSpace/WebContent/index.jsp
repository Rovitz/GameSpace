<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="Model.*"
	import="java.sql.*"%>
	
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
	
	<% Connection connection = null;
	ResultSet rs = null;
	Statement stmt = null;
	Gioco g = null; %>
</head>

<body class="bg">
	<!-- HEADER -->
	<jsp:include page="header.jsp" />
	
	<!-- DETAILS POPUP -->
	<jsp:include page="details.jsp" />
	
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
						</li>
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">PC<i class="fa fa-angle-right"></i></a>
						</li>		
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">XBOX<i class="fa fa-angle-right"></i></a>
						</li>
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">SWITCH<i class="fa fa-angle-right"></i></a>
						</li>						
					</ul>
				</div>		
				<!-- /category nav -->

				<!-- menu nav -->
				<div class="menu-nav">
					<ul class="menu-list">
						<li><a href="index.jsp">Home</a></li>
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
					</div>

					<!-- banner -->
					<div class="banner banner-1">
						<img src="./img/devi.jpg" alt="">
					</div>

					<!-- banner -->
					<div class="banner banner-1">
						<img src="./img/mario.jpg" alt="">
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
									connection = Model.Database.getConnection();
									stmt = connection.createStatement();
									rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"piu_venduti\"");

									while(rs.next()){ 
										g = Model.DatabaseQuery.getGioco(rs.getInt("IDGioco"));
										session.setAttribute("showGame", g);
							%>
							<jsp:include page="game.jsp"/>
							<%
								}
									}catch (SQLException e){
								}
							%>
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
						<img src="./img/top_5.png"  alt="">
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
									connection = Model.Database.getConnection();
									stmt = connection.createStatement();
									rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"top_5\"");

									while(rs.next()){ 
										g = Model.DatabaseQuery.getGioco(rs.getInt("IDGioco"));
										session.setAttribute("showGame", g);
							%>
							<jsp:include page="game.jsp"/>
							<%
								}
									}catch (SQLException e){
								}
							%>
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
									connection = Model.Database.getConnection();
									stmt = connection.createStatement();
									rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"scontati\"");

									while(rs.next()){ 
										g = Model.DatabaseQuery.getGioco(rs.getInt("IDGioco"));
										session.setAttribute("showGame", g);
							%>
							<div class="col-md-3">
								<jsp:include page="game.jsp"/>
							</div>
							<%
								}
									}catch (SQLException e){
								}
							%>
							<!-- /Product Single -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->
	<!-- /NAVIGATION -->
	
	<!-- OK POPUP -->
	<div id="ok" class="ok">
		<img src="./img/ok.png"/>
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
	<!-- /jQuery Plugins -->		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Database.*"
	import="Beans.*"
	import="java.sql.*"%>
	<!DOCTYPE html>
	<html lang="it">
	<head>

	<title>GAMESPACE/USATO</title>
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
	<header>
		<jsp:include page="header.jsp"/>
	
					<div class="navigation">
						<!-- row -->
						<div class="row">				
							<!-- Product Single -->
							<div class="col-md-4 col-sm-6 col-xs-6">
								<div class="product product-single">
									<div class="product-thumb">
							<%
							try{
								connection = Database.getConnection();
								stmt = connection.createStatement();
								rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"usato\"");

								while(rs.next()){ 
									g = DatabaseQuery.getGioco(rs.getInt("IDGioco"));  %>
									
									<div class="product product-single">
										<div class="product-thumb">
											<div class="product-label">
												<span>Usato</span>
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
						</div>
							</div>
								</div>
									</div>
										</div>	
										
											
									<jsp:include page="footer.jsp"/>
	
											</header>					
												</body>
													</html>

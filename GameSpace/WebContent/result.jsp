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
		
	<!-- Product Single -->
	<div class="navigation">	
		<div class="container">
						<%
						try{
							connection = Database.getConnection();
							stmt = connection.createStatement();
							rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"usato\"");
							int i=0;
							
							while(rs.next()){
							if((i>0) && (i%4 == 0)){
								i = 0;
								rs.previous();
							}%>
							<div class="row">
							<% do{ 
								g = DatabaseQuery.getGioco(rs.getInt("IDGioco")); 
								i++; %>
								<div class="col-md-3 col-sm-6 col-xs-6">
									<div class="product product-single">
										<div class="product-thumb">
											<div class="product-label">
												<span>Usato</span>
											</div>	
											<button class="main-btn quick-view"><i class="fa fa-search-plus"></i>Vedi Altro</button>
											<img src="./img/<%=g.getCover()%>" width="150" height="350"/>
										</div>
										<div class="product-body">
											<h3 class="product-price">€<%=g.getPrezzo() %></h3>
											<div class="product-rating">
												<% for(int r=1; r<=g.getRating(); r++){ %>
												<i class="fa fa-star"></i>
												<% } %>
											</div>
											<h3 class="product-nome"><a href="#"><%=g.getTitolo() %></a></h3>
											<h4 class="product-console"><a href="#"><%=g.getPiattaforma() %></a></h4>
											<div class="product-btns">
												<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
											</div>
										</div>
									</div>
								</div>
							<% 
							} while(rs.next() && ((i%4) != 0));%>
							</div>
							<% } 
							} 
							catch (SQLException e){
							}%>
			</div>
		</div>
		<!-- /Product Single -->
										
		<!-- FOOTER -->								
		<jsp:include page="footer.jsp"/>
	
		</header>					
	</body>
</html>
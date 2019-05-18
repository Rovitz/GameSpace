<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Database.*"
	import="Beans.*"
	import="java.sql.*"
	import="java.util.*"%>
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
		Gioco g = null; 
		%>
</head>

<body class="bg">
	<!-- HEADER -->
	<jsp:include page="header.jsp"/>
	
	<% 
		if(request.getParameter("showDetails")!=null && request.getParameter("idField")!=null)
		{
			request.setAttribute("gioco", DatabaseQuery.getGioco(Integer.parseInt(request.getParameter("idField"))));
		%>
			<jsp:include page="details.jsp"/>
			<script>
				document.getElementById("details").style.display="block";
			</script>
		<%
		}
	%>
		
	<!-- Product Single -->
	<div class="navigation">	
		<div class="container">
		<div class="menu-nav">
					<ul class="menu-list">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="result.jsp?section=usato">Usato</a></li>
						<li><a href="result.jsp?section=scontati">Sconti</a></li>
						<li><a href="result.jsp?section=ultime_uscite">Ultime Uscite</a></li>
					</ul>
				</div>
						<%
						try{
							connection = Database.getConnection();
							stmt = connection.createStatement();
							if(request.getParameter("search") == null && request.getParameter("section") != null)
								rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"" + request.getParameter("section") + "\"");
							else
								rs = stmt.executeQuery("SELECT * FROM GIOCO WHERE Titolo LIKE \"%" + request.getParameter("search") + "%\"");
							
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
											<% 
											if(request.getParameter("section") != null){
												if (request.getParameter("section").equals("usato")){ %>
													<span class="used">USATO</span>
											<%	} else if (request.getParameter("section").equals("ultime_uscite")){ %>
													<span class="new">NUOVO</span>
											<%	} else if (request.getParameter("section").equals("scontati")){ %>
													<span class="sale">OFFERTA</span>
											<% 	} else { %>
													<span></span>
											<%	}
											}
											%>
											</div>	
											<form method="post">
												<input name="idField" value="<%=g.getIDGioco()%>" style="display: none;">
												<input type="submit" name="showDetails" id="showDetails" class="main-btn quick-view" value="DETTAGLI"/>
											</form>
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
											
											<form id="addToCartForm" action="AddCarrelloServlet" method="post">
												<div class="product-btns">
													<input type="hidden" name="idProduct" value="<%=g.getIDGioco()%>">
													<input type="hidden" name="curPage" value="<%=request.getServletPath() + "?" + request.getQueryString()%>">
													<button type="submit" name="addToCart" class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>Aggiungi al carrello</button>
												</div>
											</form>
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
				
		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.form.min.js"></script> 
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
		
		<script>
		$(document).ready(function() {
			$("[id='addToCartForm']").submit(function(e) {
				e.preventDefault();
				$(this).ajaxSubmit({
					target: function(){
						$("#user_cart").load(location.href + " #user_cart");
						}
				});
			});
		});
		</script>	
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.*"
	import="java.sql.*"
	import="java.util.*"%>
	
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
		Gioco g = null; 
		%>
</head>

<body class="bg">
	<!-- HEADER -->
	<jsp:include page="header.jsp"/>
	
	<!-- DETAILS POPUP -->
	<jsp:include page="details.jsp" />
		
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
			<!-- Product Single -->
			<%
				try{
					connection = Database.getConnection();
					stmt = connection.createStatement();
					if (request.getParameter("section") != null)
						rs = stmt.executeQuery("SELECT * FROM VETRINA WHERE Sezione = \"" + request.getParameter("section") + "\"");
					else if (request.getParameter("search") != null)
						rs = stmt.executeQuery("SELECT * FROM GIOCO WHERE Titolo LIKE \"%" + request.getParameter("search") + "%\"");
					else if (request.getParameter("platform") != null)
						rs = stmt.executeQuery("SELECT * FROM GIOCO WHERE Piattaforma =\"" + request.getParameter("platform") + "\"");
															
					int i=0; 
															
					while(rs.next()){
						if((i>0) && (i%4 == 0)){
							i = 0;
							rs.previous();
						}
			%>
			<div class="row">
			<%
			do{ 
				g = DatabaseQuery.getGioco(rs.getInt("IDGioco"));
				session.setAttribute("showGame", g);
				i++;
			%>
			<div class="col-md-3 col-sm-6 col-xs-6">
				<jsp:include page="game.jsp"/>
			</div>
			<% 
				} while(rs.next() && ((i%4) != 0));%>
			</div>
			<% 
				} 
				}catch (SQLException e){}
			%>
			</div>
		</div>
		<!-- /Product Single -->
		
		<!-- OK POPUP -->
		<div id="ok" class="ok">
			<img src="./img/ok.png"/>
		</div>
										
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
		<script src="js/user_cart.js"></script>
		<!-- /jQuery Plugins -->
		
</body>
</html>

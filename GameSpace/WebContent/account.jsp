<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
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
	
	<% 
	Ordine ordine = null;
	Utente u = null;
	Indirizzo i = null;
	List<Ordine> ordini = null;
	List<Gioco> giochi = null;
	%>
</head>
<body class="bg">
<!-- HEADER -->
	<%  u = (Utente) session.getAttribute("user");
		i = (Indirizzo) session.getAttribute("address");%>
		
	<jsp:include page="header.jsp" />
	
	<!-- NAVIGATION -->
	<div class="navigation">
		<!-- container -->
		<h1 style="text-align: center;">IL MIO ACCOUNT</h1>
		<div class="account">
			<div class="data">
				<h3>DATI ACCOUNT</h3>
				<% if (u != null) { %>
				<h4>Nome: <%= u.getNome() %></h4>
				<h4>Cognome: <%= u.getCognome() %></h4>
				<h4>e-Mail: <%= u.getEmail() %></h4>
				<h4>Sesso: <%= u.getSesso() %></h4>
				<% } %>
			</div>
			
			<div class="shipping">
				<h3>SPEDIZIONE</h3>
				<% if (i != null) { %>
				<div class="shipping-left">
					<h4>A nome di: <%= i.getNominativo() %></h4>
					<h4>Via: <%= i.getVia() %></h4>
					<h4>Comune: <%= i.getComune() %></h4>
				</div>
				<div class="shipping-right">
					<h4>Provincia: <%= i.getProvincia() %></h4>
					<h4>CAP: <%= i.getCAP() %></h4>
					<h4>Telefono: <%= i.getTelefono() %></h4>
				</div>
				<% } %>
			</div>
			
			<div class="orders">
				<h3>I MIEI ORDINI</h3>
				<select class="userOrderSelect" name="userOrderSelect">
					<option value="" disabled selected>I tuoi ordini</option>
					<%
					try{
						ordini = DatabaseQuery.getOrdiniUtente(u.getEmail());
						for (Ordine o : ordini){
					%>
					<option value="<%= o.getIDOrdine() %>">ID.<%= o.getIDOrdine() %> | Data: <%= o.getDataRicevuta() %> | Totale: <%= o.getPrezzo()%>€ | Stato:<span id="ordine"><%=o.getStato() %></span></option>
					<% } 
					} catch (Exception e){}%>
				</select>
				<ul id="orderContent">
					<%
					try{
						for (Ordine o : ordini)
							if (o.getIDOrdine() == (int) session.getAttribute("selectedOrder"))
								ordine = o;
								
						for (Gioco g : ordine.getGiochi()){
					%>
					<li>ID.<%= g.getIDGioco() %> | <%= g.getTitolo() %> | <%= g.getPrezzo() %>€</li>
					<%}
						} catch (Exception e){}%>
				</ul>
			</div>
		
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
	<!-- /jQuery Plugins -->		
</body>
</html>
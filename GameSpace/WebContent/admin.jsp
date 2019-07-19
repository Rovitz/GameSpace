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
	ArrayList<Utente> utenti = null; 
	ArrayList<Gioco> giochi = null;
	ArrayList<Ordine> ordini = null;
	%>
</head>
<body class="bg">
	<!-- HEADER -->
	<jsp:include page="header.jsp" />
	
	<!-- NAVIGATION -->
	<div class="navigation">
		<h1 style="text-align: center;">PAGINA ADMIN</h1>
		<div class="admin">
			<div class="user">
			<h3>OPERAZIONI UTENTI</h3>
			<br>
				<div>
					<h4>ELIMINA UTENTE</h4>
					<form class="removeUserForm">
					<select id="removeUserSelect" name="removeUserSelect">
					<%
						utenti = DatabaseQuery.getUtentiAll();
						for (Utente u : utenti){
					%>
					<option value="<%= u.getEmail() %>"><%= u.getNome() %>&nbsp;<%= u.getCognome() %></option>
					<% } %>
					</select>
					<button type="submit" class="primary-btn">ELIMINA</button>
					</form>
				</div>
			</div>
			<div class="product">
			<h3>OPERAZIONI PRODOTTI</h3>
			<br>
				<h4>ELIMINA PRODOTTO</h4>
					<form class="removeProductForm">
					<select id="removeProductSelect" name="removeProductSelect">
					<%
						giochi = DatabaseQuery.getGiochiAll();
						for (Gioco g : giochi){
					%>
					<option value="<%= g.getIDGioco() %>"><%= g.getIDGioco() %>&nbsp;<%= g.getTitolo() %></option>
					<% } %>
					</select>
					<button type="submit" class="primary-btn">ELIMINA</button>
					</form>
			</div>
			<div class="order">
			<h3>OPERAZIONI ORDINI</h3>
			<br>
				<h4>ELIMINA ORDINE</h4>
					<form class="removeOrderForm">
					<select class="removeOrderSelectUser" name="removeOrderSelectUser">
					<%
						utenti = DatabaseQuery.getUtentiAll();
						for (Utente u : utenti){
					%>
					<option value="<%= u.getEmail() %>"><%= u.getNome() %>&nbsp;<%= u.getCognome() %></option>
					<% } %>
					</select>
					<select class="removeOrderSelect" name="removeOrderSelect">
					<%
					try{
						ordini = DatabaseQuery.getOrdiniUtente((String) request.getAttribute("selectedUser"));
						for (Ordine o : ordini){
					%>
					<option value="<%= o.getIDOrdine() %>"><%=  o.getIDOrdine() %>&nbsp;<%= o.geteMail() %></option>
					<% } 
					} catch (Exception e){}%>
					</select>
					<button type="submit" class="primary-btn">ELIMINA</button>
					</form>
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
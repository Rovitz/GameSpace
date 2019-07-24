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
	Admin a = null;
	%>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="header.jsp" />
	
	<% a = (Admin) session.getAttribute("admin");
    
    if (a != null) { %>
	<!-- NAVIGATION -->
	<div class="navigation">
		<h1 style="text-align: center;">PANNELLO ADMIN</h1>
		<div class="admin">
			<div class="user">
				<h3>OPERAZIONI UTENTI</h3>
				<br>
				<div>
					<h4>ELIMINA UTENTE</h4>
					<form class="removeUserForm">
						<select id="removeUserSelect" name="removeUserSelect">
							<option value="" disabled selected>Seleziona un utente</option>
							<%
								utenti = DatabaseQuery.getUtentiAll();
								for (Utente u : utenti){
							%>
							<option value="<%= u.getEmail() %>"><%= u.getNome() %>&nbsp;<%= u.getCognome() %></option>
							<% } %>
						</select>
						<br>
						<button type="submit" class="primary-btn">ELIMINA</button>
					</form>
					<br><br>
					<h4>AGGIUNGI UTENTE</h4>
					<form class="addUserForm">
						<input class="contact1" required name="user_email" placeholder="e-Mail" />
						<input class="contact1" required name="user_nome" placeholder="Nome" />
						<input class="contact1" required name="user_cognome" placeholder="Cognome"  />
						<input class="contact1" type="password" name="user_password" placeholder="Password"/>
						<p>
							<strong><font color="white">Sesso:</font></strong>
							&nbsp;
							<strong><font color="white">Uomo: <input class="checkbox" type="radio" name="user_sesso" value="uomo" style="left:1%;"/></font></strong>
							&nbsp; &nbsp;
							<strong><font color="white">Donna: <input class="checkbox" type="radio" name="user_sesso" value="donna" style="left:1%;"/></font></strong>
							<br>
							
							
						</p>
						<br>
						<button type="submit" class="primary-btn">AGGIUNGI</button>
					</form>
				</div>
			</div>
			<div class="product">
				<h3>OPERAZIONI PRODOTTI</h3>
				<br>
				<h4>ELIMINA GIOCO</h4>
				<form class="removeProductForm">
					<select id="removeProductSelect" name="removeProductSelect">
						<option value="" disabled selected>Seleziona un prodotto</option>
						<%
							giochi = DatabaseQuery.getGiochiAll();
							for (Gioco g : giochi){
						%>
						<option value="<%= g.getIDGioco() %>"><%= g.getIDGioco() %>&nbsp;<%= g.getTitolo() %></option>
						<% } %>
					</select>
					<br>
					<button type="submit" class="primary-btn">ELIMINA</button>
				</form>
				<br><br>
				<h4>AGGIUNGI GIOCO</h4>
				<form class="addProductForm">
					<input class="contact1" required name="game_titolo" placeholder="Titolo" />
					<input class="contact1" required name="game_piattaforma" placeholder="Piattaforma" />
					<input class="contact1" required name="game_genere" placeholder="Genere"  />
					<input class="contact1" required name="game_prezzo" placeholder="Prezzo"/>
					<input class="contact1" required name="game_descrizione" placeholder="Descrizione"/>
					<input class="contact1" required name="game_datarilascio" placeholder="Data rilascio (YYYY-MM-DD)"/>
					<input class="contact1" required name="game_disponibilità" placeholder="Disponibilità"/>
					<input class="contact1" required name="game_cover" placeholder="Cover (.png/.jpg)"/>
					<input class="contact1" required name="game_rating" placeholder="Rating"/>
					<br>
					<button type="submit" class="primary-btn">AGGIUNGI</button>
				</form>
				<br><br>
				<h4>MODIFICA GIOCO</h4>
				<form class="modifyProductForm">
					<select id="modifyProductSelect" name="modifyProductSelect">
						<option value="" disabled selected>Seleziona un prodotto</option>
						<%
							giochi = DatabaseQuery.getGiochiAll();
							for (Gioco g : giochi){
						%>
						<option value="<%= g.getIDGioco() %>"><%= g.getIDGioco() %>&nbsp;<%= g.getTitolo() %></option>
						<% } %>
					</select>
				
					<input class="contact1" required name="game_titolo" placeholder="Titolo" />
					<input class="contact1" required name="game_piattaforma" placeholder="Piattaforma" />
					<input class="contact1" required name="game_genere" placeholder="Genere"  />
					<input class="contact1" required name="game_prezzo" placeholder="Prezzo"/>
					<input class="contact1" required name="game_descrizione" placeholder="Descrizione"/>
					<input class="contact1" required name="game_datarilascio" placeholder="Data rilascio (YYYY-MM-DD)"/>
					<input class="contact1" required name="game_disponibilità" placeholder="Disponibilità"/>
					<input class="contact1" required name="game_cover" placeholder="Cover (.png/.jpg)"/>
					<input class="contact1" required name="game_rating" placeholder="Rating"/>
					<br>
					<button type="submit" class="primary-btn">MODIFICA</button>
				</form>
			</div>
			<div class="order">
				<h3>OPERAZIONI ORDINI</h3>
				<br>
				<h4>ELIMINA ORDINE</h4>
				<form class="removeOrderForm">
					<select id="removeOrderSelectUser" name="removeOrderSelectUser">
						<option value="" disabled selected>Seleziona un utente</option>
						<%
							utenti = DatabaseQuery.getUtentiAll();
							for (Utente u : utenti){
						%>
						<option value="<%= u.getEmail() %>"><%= u.getNome() %>&nbsp;<%= u.getCognome() %></option>
						<% } %>
					</select>
					<select id="removeOrderSelect" name="removeOrderSelect">
						<option value="" disabled selected>Seleziona un ordine</option>
						<%
						try{
							ordini = DatabaseQuery.getOrdiniUtente((String) session.getAttribute("selectedUser"));
							for (Ordine o : ordini){
						%>
						<option value="<%= o.getIDOrdine() %>"><%=  o.getIDOrdine() %> | <%= o.geteMail() %> | <%= o.getDataRicevuta() %></option>
						<% } 
						} catch (Exception e){}%>
					</select>
					<br>
					<button type="submit" class="primary-btn">ELIMINA</button>
				</form>
				<br><br>
				<h4>MODIFICA ORDINE</h4>
				<form class="updateOrderForm">
					<select class="modifyOrderSelectUser" name="modifyOrderSelectUser">
						<option value="" disabled selected>Seleziona un utente</option>
						<%
							utenti = DatabaseQuery.getUtentiAll();
							for (Utente u : utenti){
						%>
						<option value="<%= u.getEmail() %>"><%= u.getNome() %>&nbsp;<%= u.getCognome() %></option>
						<% } %>
					</select>
					<select id="modifyOrderSelect" name="modifyOrderSelect">
						<option value="" disabled selected>Seleziona un ordine</option>
						<%
						try{
							ordini = DatabaseQuery.getOrdiniUtente((String) session.getAttribute("selectedUser"));
							for (Ordine o : ordini){
						%>
						<option value="<%= o.getIDOrdine() %>"><%=  o.getIDOrdine() %> | <%= o.geteMail() %> | <%= o.getDataRicevuta() %></option>
						<% } 
						} catch (Exception e){}%>
					</select>
					<br><br>
					<select id="changeOrderState" name="changeOrderState">
						<option value="" disabled selected>Modifica stato ordine</option>
						<option value="completato">Completato</option>
						<option value="spedito">Spedito</option>
					</select>
					<br>
					<button type="submit" class="primary-btn">MODIFICA</button>
				</form>
			</div>
		</div>
	</div>
	<% } %>
	
	<!-- FOOTER -->
	<jsp:include page="footer.jsp" />

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.form.min.js"></script> 
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/user_cart.js"></script>
	<!-- /jQuery Plugins -->
</body>
</html>
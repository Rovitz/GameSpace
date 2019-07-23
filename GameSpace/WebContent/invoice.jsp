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
	
	<% 
	Ordine ordine = null;
	Indirizzo i = null;
	%>
</head>

<body>
	<% ordine = (Ordine) session.getAttribute("order"); 
	    i = (Indirizzo) session.getAttribute("address");%>

	<!-- HEADER -->
	<jsp:include page="header.jsp" />
	
	<!-- NAVIGATION -->
	<div id="navigation" class="navigation">
		<h1 style="text-align: center;">FATTURA</h1>
		<div class="invoice">
			<div class="order">
				<h3>DETTAGLI ORDINE</h3>
				<% if (ordine != null){ %>
				<h4>ID: <%= ordine.getIDOrdine() %></h4>
				<h4>eMail utente: <%= ordine.geteMail() %></h4>
				<h4>Data  Ricevuta: <%= ordine.getDataRicevuta() %></h4>
				<h4>Stato: <%= ordine.getStato() %></h4>
				<h4>Pagamento: <%= ordine.getPagamento() %></h4>
				<h4>Totale: <%= ordine.getPrezzo() %></h4>
				<% } %>
			</div>
			
			<div class="content">
				<h3>CONTENUTO ORDINE</h3>
				<ul id="orderContent">
					<%
					try{		
						for (Gioco g : ordine.getGiochi()){
					%>
					<li>ID.<%= g.getIDGioco() %> | <%= g.getTitolo() %> | <%= g.getPrezzo() %>€</li>
					<%}
						} catch (Exception e){}%>
				</ul>
			</div>
			
			<div class="shipping">
				<h3>VERRA' SPEDITO A:</h3>
				<% if (i != null){ %>
				<h4>Nominativo: <%= i.getNominativo() %></h4>
				<h4>Via: <%= i.getVia() %></h4>
				<h4>Comune: <%= i.getComune() %></h4>
				<h4>Provincia: <%= i.getProvincia() %></h4>
				<h4>CAP: <%= i.getCAP() %></h4>
				<h4>Telefono: <%= i.getTelefono() %></h4>
				<% } %>
			</div>
			
		</div>
		<button class="submitbottom" id="print_btn" >STAMPA</button>
	</div>
	
	<div id="editor"></div>
	
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
	<script src="js/jspdf.min.js"></script>
	<script src="js/printpdf.js"></script>
	<!-- /jQuery Plugins -->
</body>
</html>
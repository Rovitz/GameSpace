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
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	
	<% Connection connection = null;
		ResultSet rs = null;
		Statement stmt = null;
		List<Gioco> gamesList = new ArrayList<>();
		List<Gioco> listed = new ArrayList<>();
		Utente u = null;
		%>
</head>

<body class="bg">
	<!-- HEADER -->
	<jsp:include page="header.jsp" />
	
	<!-- NAVIGATION -->
	<div class="navigation">
		<div class="checkout">
			<h1>Checkout</h1>
			<form action="CheckoutServlet" method="post">
				<div class="shipping">
					<h3>Spedizione</h3>
					<input type="text" class="contact" required name="nominativo" placeholder="Nome e cognome"  />	
					<input type="text" class="contact" required name="via" placeholder="Via" />
					<input type="text" class="contact" required name="comune" placeholder="Comune" />
					<input type="text" class="contact" required name="cap" placeholder="CAP"  />
					<input type="text" class="contact" required name="provincia" placeholder="Provincia"  />
					<input type="text" class="contact" required name="provincia" placeholder="Recapito telefonico" />
					<br>
				</div>
				<div class="payment">
					<h3>Dati carta</h3>
					<input type="text" class="contact" required name="intestatario" placeholder="Intestatario Carta"  />
					<input type="text" class="contact" required name="numero_carta" placeholder="Numero carta"  />	
					<div>
					<h4>Scadenza:</h4>
					<select class="expiration">
                            <option value="01">Gennaio</option>
                            <option value="02">Febbraio</option>
                            <option value="03">Marzo</option>
                            <option value="04">Aprile</option>
                            <option value="05">Maggio</option>
                            <option value="06">Giugno</option>
                            <option value="07">Luglio</option>
                            <option value="08">Agosto</option>
                            <option value="09">Settembre</option>
                            <option value="10">Ottobre</option>
                            <option value="11">Novembre</option>
                            <option value="12">Dicembre</option>
                        </select>
                        <select class="expiration">
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                            <option value="22"> 2022</option>
                            <option value="23"> 2023</option>
                            <option value="24"> 2024</option>
                        </select>
                        </div>
					<input type="number" class="contact" required name="cvv" placeholder="CVV" />
				</div>
				<div class="cart-items">
					<h3>Carrello</h3>
		<div id="shopping-cart">
					<div class="shopping-cart-list">
				<!-- CART ITEM -->
				<%
					try{
						connection = Database.getConnection();
						stmt = connection.createStatement();
						u = (Utente) session.getAttribute("user");
						if(u != null){
						rs = stmt.executeQuery("SELECT IDGioco FROM CARRELLO WHERE eMail = \"" + u.getEmail() + "\"");

						while(rs.next())
							gamesList.add(DatabaseQuery.getGioco(Integer.parseInt(rs.getString("IDGioco"))));
						
						for(Gioco g : gamesList){
							// trova il numero di occorrenze uguali --------------------------------------------------------//
							int gameCount = (int) gamesList.stream().filter(p -> p.getIDGioco() == (g.getIDGioco())).count();
							//----------------------------------------------------------------------------------------------//
							
							// consente di evitare duplicati in lista ----------------------------------------------//
							if(((int) listed.stream().filter(p -> p.getIDGioco() == (g.getIDGioco())).count()) < 1){
							listed.add(g);
							//--------------------------------------------------------------------------------------//	
				%>
					<div class="product product-widget">
						<div class="product-thumb">
							<img src="./img/<%= g.getCover() %>" alt="">
						</div>
						<div class="product-body">
							<h3 class="product-price">EUR <%= g.getPrezzo() %>
								<span class="qty">x<%= gameCount %></span></h3>
							<h2 class="product-name"><a href="#"><%= g.getTitolo() %></a></h2>
						</div>
					</div>
				<% 		}
					  }
					}
				}catch (SQLException e){
					e.printStackTrace();
				} 
				%>
				<!-- /CART ITEM -->
			</div>
			</div>
			<%if (session.getAttribute("cart_total") != null) { %>
				<h3>TOTALE: EUR&nbsp;<%=session.getAttribute("cart_total")%></h3>
				<%} else {%>
				<h3>TOTALE: EUR 0</h3>
				<% } %>
				</div>
				<input class="submit" type="submit" name="order_submitted" style="width: 10%;" value="Conferma" />
			</form>
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
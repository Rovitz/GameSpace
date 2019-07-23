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
	
	<% 
	Connection connection = null;
	ResultSet rs = null;
	Statement stmt = null;
	List<Gioco> gamesList = new ArrayList<>();
	List<Gioco> listed = new ArrayList<>();
	Utente u = null;
	Indirizzo i = null;
	%>
</head>

<body class="bg">
	<%  u = (Utente) session.getAttribute("user");
		i = (Indirizzo) session.getAttribute("address");%>

	<!-- HEADER -->
	<jsp:include page="header.jsp" />
	
	<!-- NAVIGATION -->
	<div class="navigation">
		<div class="checkout">
			<h1>CHECKOUT</h1>
			<form action="CheckoutServlet" method="post" name="checkout" onsubmit="return validateCheckout()">
				<div class="shipping">
					<h3>SPEDISCI A</h3>
					<% try { %>
					<h4>Nominativo: <%= i.getNominativo() %></h4>
					<h4>Via: <%= i.getVia() %></h4>
					<h4>Comune: <%= i.getComune() %></h4>
					<h4>Provincia: <%= i.getProvincia() %></h4>
					<h4>CAP: <%= i.getCAP() %></h4>
					<h4>Telefono: <%= i.getTelefono() %></h4>
					<% } catch (Exception e){} %>
				</div>
				<div class="payment">
				<h3>Metodi di pagamento</h3>
				<strong><span style="color:white;">Carta:</span></strong> <input class="checkbox"  type="radio" onclick="carta()" name="user_payment" value="carta" style="left:1%";/>
				<strong><span style="color:white; padding-left:40px;">Contrassegno:</span></strong> <input class="checkbox" onclick="contrassegno()" type="radio" name="user_payment" value="contrassegno" style="left:1%";/>
				
				<script>
				function contrassegno(){
					document.checkout.intestatario.disabled=true;
					document.checkout.numero_carta.disabled=true;
					document.checkout.c.disabled=true;
					document.checkout.d.disabled=true;
					document.checkout.cvv.disabled=true;
					document.getElementById("a").style.backgroundColor="grey";
					document.getElementById("b").style.backgroundColor="grey";
					document.getElementById("c").style.backgroundColor="grey";
					document.getElementById("d").style.backgroundColor="grey";
					document.getElementById("e").style.backgroundColor="grey";
				}
				function carta(){
					document.checkout.intestatario.disabled=false;
					document.checkout.numero_carta.disabled=false;
					document.checkout.c.disabled=false;
					document.checkout.d.disabled=false;
					document.checkout.cvv.disabled=false;
					document.getElementById("a").style.backgroundColor="white";
					document.getElementById("b").style.backgroundColor="white";
					document.getElementById("c").style.backgroundColor="white";
					document.getElementById("d").style.backgroundColor="white";
					document.getElementById("e").style.backgroundColor="white";
					
				}
				</script>
					<div style="margin-top:20px">
					<h3>Dati carta</h3>
					<input type="text" class="contact1" id="a" required name="intestatario" placeholder="Intestatario Carta"  />
					<input type="text" class="contact1" id="b" required name="numero_carta" placeholder="Numero carta"  />	
					<div>
					<select id="c" name="c">
							<option value="" disabled selected>MM</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <select name="d" id="d">
                        	<option value="" disabled selected>YY</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                        </select>
                        </div>
                        </div>
					<input type="number" class="contact1" id="e" required name="cvv" placeholder="CVV" />
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
				<br>
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
	<script src="js/validation.js"></script>
	<!-- /jQuery Plugins -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.*"
	import="java.sql.*"
	import="java.util.*" %>
	
<!-- CART -->
<% Connection connection = null;
		ResultSet rs = null;
		Statement stmt = null;
		List<Gioco> gamesList = new ArrayList<>();
		List<Gioco> listed = new ArrayList<>();
		Utente u = null;
		Admin a = null;
		%>

<% a = (Admin) session.getAttribute("admin");
if (a == null) {%>
<li class="header-cart dropdown default-dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		<div class="header-btns-icon">
			<i class="fa fa-shopping-cart"></i>
				<%if (session.getAttribute("cart_count") != null) { %>
				<span class="qty" id="qty"><%= session.getAttribute("cart_count") %></span>
				<%} else {%>
				<span class="qty" id="qty">0</span>
				<% } %>
		</div>
		<strong class="text-uppercase">IL MIO CARRELLO&nbsp;<i class="fa fa-caret-down"></i></strong><br>
		<%if (session.getAttribute("cart_total") != null) { %>
				<span>TOTALE: EUR&nbsp;<%=session.getAttribute("cart_total")%></span>
				<%} else {%>
				<span>TOTALE: EUR 0</span>
				<% } %>
	</a>
	<div class="custom-menu">
		<div id="shopping-cart">
			<div class="shopping-cart-list">
				<!-- CART ITEMS -->
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
							// trova il numero di occorrenze uguali ------------------------------------------------------//
							int gameCount = (int) gamesList.stream().filter(p -> p.getIDGioco() == g.getIDGioco()).count();
							//--------------------------------------------------------------------------------------------//
							
							// consente di evitare duplicati in lista -----------------------------------//
							if(listed.stream().filter(p -> p.getIDGioco() == g.getIDGioco()).count() < 1){
							listed.add(g);
							//---------------------------------------------------------------------------//	
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
						<form class="removeItemForm" action="EliminaElementoServlet" method="post">
							<input type="hidden" name="removeItemId" value="<%= g.getIDGioco()%>"/>
							<button type="submit" class="cancel-btn"><i class="fa fa-trash"></i></button>
						</form>
					</div>
				<% 		}
					  }
					}
				}catch (SQLException e){
					e.printStackTrace();
				} 
				%>
				<!-- /CART ITEMS -->
			</div>
			<div class="shopping-cart-btns">
				<a id="emptyCartBtn" class="primary-btn">SVUOTA&nbsp;<i class="fa fa-trash"></i></a>
				<a class="primary-btn" href="checkout.jsp" id="checkout_btn" onclick="return checkOut();">CHECKOUT&nbsp;<i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
	</div>
</li>
<% } %>
<!-- /CART -->
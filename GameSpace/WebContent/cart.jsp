<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Database.*"
	import="Beans.*"
	import="java.sql.*"
	import="java.util.*"%>
	
<!-- Cart -->
<% Connection connection = null;
		ResultSet rs = null;
		Statement stmt = null;
		Gioco g = null;
		Utente u = null;
		%>

<li id="cart_list" class="header-cart dropdown default-dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		<div class="header-btns-icon">
			<i class="fa fa-shopping-cart"></i>
				<%if (session.getAttribute("cart_count") != null) { %>
				<span class="qty"><%= session.getAttribute("cart_count") %></span>
				<%} else {%>
				<span class="qty">0</span>
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
				<!-- CART ITEM -->
				<%
					try{
									connection = Model.Database.getConnection();
									stmt = connection.createStatement();
									u = (Utente) session.getAttribute("user");
									if(u != null){
										rs = stmt.executeQuery("SELECT IDGioco FROM CARRELLO WHERE eMail = \"" + u.getEmail() + "\"");

										while(rs.next()){
											g = Model.DatabaseQuery.getGioco(Integer.parseInt(rs.getString("IDGioco")));
				%>
						<div class="product product-widget">
							<div class="product-thumb">
								<img src="./img/<%= g.getCover() %>" alt="">
							</div>
							<div class="product-body">
								<h3 class="product-price">EUR <%= g.getPrezzo() %><span class="qty">x1</span></h3>
								<h2 class="product-name"><a href="#"><%= g.getTitolo() %></a></h2>
							</div>
							<form class="removeItemForm" action="EliminaElementoServlet" method="post">
								<input type="hidden" name="removeItemId" value="<%= g.getIDGioco()%>"/>
								<button type="submit" class="cancel-btn"><i class="fa fa-trash"></i></button>
							</form>
						</div>
				<% 		}
					}
				}catch (SQLException e){
					
				} %>
				<!-- /CART ITEM -->
			</div>
			<div class="shopping-cart-btns">
				<button id="emptyCartBtn" class="primary-btn">SVUOTA</button>
				<button class="primary-btn">CHECKOUT&nbsp;<i class="fa fa-arrow-circle-right"></i></button>
			</div>
		</div>
	</div>
</li>
<!-- /Cart -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="Model.*"%>

<!-- Popup Details -->
<link type="text/css" rel="stylesheet" href="css/details.css">


<div id="details" class="modal">
 	<div id="details-content" class="modal-content animate">
 		<% Gioco g1 = (Gioco) session.getAttribute("gameDetails"); %>
		<h1 class="popup-h1">DETTAGLI</h1>
		<hr>
	    <% if (g1 != null) {  %>
	    <div class="product-modal-left">
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
						<img src="./img/<%=g1.getCover()%>" width="150" height="350"/>
					</div>
				</div>
		</div>
		<div class="product-modal-right">
			<h3>Titolo: </h3>
			<h4 class="product-nome"><a href="#"><%=g1.getTitolo() %></a></h4>
			<br>
			<div class="product-details-left">
				<h3>Piattaforma: </h3>
				<h4 class="product-nome"><a href="#"><%=g1.getPiattaforma() %></a></h4>
				<br>
				<h3>Genere: </h3>
				<h4 class="product-nome"><a href="#"><%=g1.getGenere() %></a></h4>
				<br>
				<h3>Descrizione: </h3>
				<h5 class="product-nome"><%=g1.getDescrizione() %></h5>
			</div>
			<div class="product-details-right">
				<h3>Rating: </h3>
				<div class="product-rating">
				<% for(int r=1; r<=g1.getRating(); r++){ %>
					<i class="fa fa-star"></i>
				<% } %>
	   			</div>
	   			<br>
	    		<h3 style="margin-top: 2%;">Prezzo: </h3>
				<h4 class="product-nome"><a href="#">€<%=g1.getPrezzo() %></a></h4>
			</div>
		</div>
		<% } %>
    </div>
</div>
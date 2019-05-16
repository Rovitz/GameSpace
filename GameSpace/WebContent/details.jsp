<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="Beans.*"%>

<!-- Popup Details -->
<link type="text/css" rel="stylesheet" href="css/details.css">


<div id="details" class="modal">
	<% Gioco g1 = (Gioco) request.getAttribute("gioco");  %>
	
 	<div class="modal-content animate">
		<h1 class="popup-h1">DETTAGLI</h1>
		<hr>
	    <% if (g1 != null) {  %>
	    <div class="product-modal-left">
	    		<div class="product product-single">
    				<div class="product-thumb">
						<div class="product-label">
							<span>Usato</span>
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
				<h4 class="product-nome"><a href="#">€<%=g1.getPrezzo() %></a></h4></h4>
			</div>
		</div>
		<% } %>
    </div>

    <script>
	var modal = document.getElementById('details');
	window.onclick = function(event) {
    	if (event.target == modal) {
        	modal.style.display = "none";
    	}
	}
	</script>
</div>
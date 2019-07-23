<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.*" %>
<!DOCTYPE html>

<div class="product product-single">
	<% Gioco g = (Gioco) session.getAttribute("showGame"); %>
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
		<form id="showDetailsForm">
			<input name="gameId" value="<%=g.getIDGioco()%>" style="display: none;">
			<button type="submit" class="main-btn quick-view"><i class="fa fa-search">&nbsp;</i>DETTAGLI</button>
		</form>									
		<img src="./img/<%=g.getCover()%>"  width="150" height="350" />
	</div>
	<div class="product-body">
		<h3 class="product-price">€<%=g.getPrezzo()%></h3>
		<div class="product-rating">
			<%
				for(int r=1; r<=g.getRating()-1; r++){
			%>
			<i class="fa fa-star"></i>
			<%
			}
			%>
			<i class="fa fa-star-o empty"></i>
		</div>
		<h4><span style="float:right;"">Q.tà:&nbsp;<input type="hidden" class="" value="<%=g.getDisponibilita()%>"><%=g.getDisponibilita()%></span></h4>
		<h3 class="product-nome"><a href="#"><%=g.getTitolo()%></a></h3>
		<h4 class="product-console"><a href="#"><%=g.getPiattaforma()%></a></h4>
		<div class="product-btns">
			<form class="addToCartForm">
				<div class="product-btns">
					<input type="hidden" name="idProduct" value="<%=g.getIDGioco()%>">
					<button type="submit" name="addToCartBtn" class="primary-btn add-to-cart">
							<i class="fa fa-shopping-cart">&nbsp;</i>Aggiungi al carrello</button>
				</div>
			</form>
		</div>
	</div>
</div>
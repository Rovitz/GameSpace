<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.*" %>
	
<% Utente u = null; %>

<!-- USER -->
					<li class="header-account dropdown default-dropdown">
					<%  u = (Utente) session.getAttribute("user");
					if (u != null) {%>
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							<strong class="text-uppercase">BENVENUTO, <%= u.getNome() %>!</strong>&nbsp;<i class="fa fa-caret-down"></i>
						</div>
							<a id="logoutBtn" class="text-uppercase" style="cursor: pointer;">LOGOUT</a>
							<ul class="custom-menu">
								<li><a href="account.jsp"><i class="fa fa-user-o" style="color: red;"></i>IL MIO ACCOUNT&nbsp;</a></li>
								<li><a id="logoutBtn" style="cursor: pointer;"><i class="fa fa-unlock-alt" style="color: red;"></i>&nbsp;LOGOUT</a></li>
							</ul>
					<% } else { %>
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							
							<a onclick="document.getElementById('modal-wrapper').style.display='block'" class="text-uppercase" style="cursor: pointer;">ENTRA</a>
							<span style="color: white;"> / </span><a href="register.jsp" class="text-uppercase">REGISTRATI</a>
						</div>
					<% } %>
					</li>
<!-- /USER -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.*" %>
	
<% Utente u = null;
   Admin a = null;%>

<!-- USER -->
					<li class="header-account dropdown default-dropdown">
					<%  u = (Utente) session.getAttribute("user");
					 	a = (Admin) session.getAttribute("admin");
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
					<% } else if (a != null) {%>
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							<strong class="text-uppercase">SEI ADMIN, <%= a.getUserName() %>!</strong>&nbsp;<i class="fa fa-caret-down"></i>
						</div>
							<a id="logoutBtn" class="text-uppercase" style="cursor: pointer;">LOGOUT</a>
							<ul class="custom-menu">
								<li><a href="account.jsp"><i class="fa fa-user-o" style="color: red;"></i>IL MIO ACCOUNT&nbsp;</a></li>
								<li><a id="logoutBtn" style="cursor: pointer;"><i class="fa fa-unlock-alt" style="color: red;"></i>&nbsp;LOGOUT</a></li>
							</ul>
					<% } else { %>
						<div>
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							<a class="list-links" href="register.jsp">REGISTRATI</a>
							<br>
							<a class="list-links" onclick="document.getElementById('modal-wrapper').style.display='block'" style="cursor: pointer;">ENTRA</a>
						</div>
					<% } %>
					</li>
<!-- /USER -->
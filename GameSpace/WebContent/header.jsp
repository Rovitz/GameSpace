<%@ page language="java"  import="Model.Utente" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- HEADER -->
<header>
	<!-- POPUP LOGIN -->
	<jsp:include page="login.jsp" />
	
	<!-- TOP HEADER -->
	<div id="top-header"></div>

	<!-- HEADER -->
	<div id="header">
		<div class="container">
			<div class="pull-left">
				<!-- LOGO -->
				<div class="header-logo">
					<a class="logo" href="index.jsp">
						<img src="./img/logosito.png">
					</a>
				</div>
				<!-- /LOGO -->
				
				<!-- SEARCH -->
					<div class="header-search">
						<form action="result.jsp" method="get">
							<input class="input search-input" type="text" placeholder="Cerca nel sito" name="search">
							<button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
						</form>
					</div>
					<!-- /SEARCH -->
			</div>
			<div id="user_cart" class="pull-right">
				<ul class="header-btns">
					<!-- Account -->
					<li class="header-account dropdown default-dropdown">
					<% Utente u = (Utente) session.getAttribute("user");
					if (u != null) {%>
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							<strong class="text-uppercase">BENVENUTO, <%= u.getNome() %>!</strong><i class="fa fa-caret-down"></i>
						</div>
							<a id="logoutBtn" class="text-uppercase" style="cursor: pointer;">LOGOUT</a>
							<ul class="custom-menu">
								<li><a href="#"><i class="fa fa-user-o" style="color: red;"></i>IL MIO ACCOUNT</a></li>
								<li><a id="logoutBtn" style="cursor: pointer;"><i class="fa fa-unlock-alt" style="color: red;"></i>&nbsp;LOGOUT</a></li>
							</ul>
					<% } else { %>
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							<strong class="text-uppercase">IL MIO ACCOUNT</strong><i class="fa fa-caret-down"></i>
						</div>
							<a onclick="document.getElementById('modal-wrapper').style.display='block'" class="text-uppercase" style="cursor: pointer;">LOGIN</a>
							<span style="color: white;"> / </span><a href="register.jsp" class="text-uppercase">REGISTRATI</a>
							<ul class="custom-menu">
								<li><a href="#"><i class="fa fa-user-o" style="color: red;"></i>IL MIO ACCOUNT</a></li>
								<li><a href="#"><i class="fa fa-unlock-alt" style="color: red;"></i>LOGIN</a></li>
							</ul>
					<% } %>
					</li>
					<!-- /Account -->

					<!-- CART -->
					<jsp:include page="cart.jsp" />

					<!-- Mobile nav toggle-->
					<li class="nav-toggle">
						<button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
					</li>
					<!-- / Mobile nav toggle -->
				</ul>
			</div>
		</div>
		<!-- header -->
	</div>
</header>
<!-- /HEADER -->
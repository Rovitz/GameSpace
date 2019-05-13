<%@ page language="java"  import="Beans.Utente" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- HEADER -->
<header>
	<!-- top Header -->
	<div id="top-header">
		<div class="container">
			<div class="pull-left"></div>
			<div class="pull-right">
				<ul class="header-top-links">
					<li><a href="#">Store</a></li>
					<li class="dropdown default-dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">ENG <i class="fa fa-caret-down"></i></a>
						<ul class="custom-menu">
							<li><a href="#">English (ENG)</a></li>
							<li><a href="#">Russian (Ru)</a></li>
							<li><a href="#">French (FR)</a></li>
							<li><a href="#">Spanish (Es)</a></li>
							<li><a href="#">Italian (It)</a></li>
						</ul>
					</li>
					<li class="dropdown default-dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">USD <i class="fa fa-caret-down"></i></a>
						<ul class="custom-menu">
							<li><a href="#">USD ()</a></li>
							<li><a href="#">EUR ()</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /top Header -->

	<!-- header -->
	<div id="header">
		<div class="container">
			<div class="pull-left">
				<!-- Logo -->
				<div class="header-logo">
					<a class="logo" href="index.jsp">
						<img src="./img/logosito.png" alt="">
					</a>
				</div>
				<!-- /Logo -->
			</div>
			<div class="pull-right">
				<ul class="header-btns">
					<!-- Account -->
					<li class="header-account dropdown default-dropdown">
					<% Utente u = (Utente) session.getAttribute("user");
					if (u != null) {%>
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							<strong class="text-uppercase marginright">BENVENUTO, <%= u.getNome() %>!</strong><i class="fa fa-caret-down"></i>
						</div>
							<a href="LogoutServlet" class="text-uppercase">LOGOUT</a>
							<ul class="custom-menu">
								<li><a href="#"><i class="fa fa-user-o"></i>IL MIO ACCOUNT</a></li>
								<li><a href="LogoutServlet"><i class="fa fa-unlock-alt"></i>&nbsp;LOGOUT</a></li>
							</ul>
					<% } else { %>
						<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
							<div class="header-btns-icon">
								<i class="fa fa-user-o"></i>
							</div>
							<strong class="text-uppercase marginright">IL MIO ACCOUNT</strong><i class="fa fa-caret-down"></i>
						</div>
							<a href="login.jsp" class="text-uppercase">LOGIN</a> / <a href="register.jsp" class="text-uppercase">REGISTRATI</a>
							<ul class="custom-menu">
								<li><a href="#"><i class="fa fa-user-o"></i>IL MIO ACCOUNT</a></li>
								<li><a href="#"><i class="fa fa-unlock-alt"></i>LOGIN</a></li>
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
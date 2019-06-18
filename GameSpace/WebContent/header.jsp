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
					<!-- USER -->
					<jsp:include page="user.jsp"/>

					<!-- CART -->
					<jsp:include page="cart.jsp"/>

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
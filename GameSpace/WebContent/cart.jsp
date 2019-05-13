<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Cart -->
<li class="header-cart dropdown default-dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		<div class="header-btns-icon">
			<i class="fa fa-shopping-cart"></i>
				<span class="qty">3</span>
		</div>
		<strong class="text-uppercase">Il mio carrello:</strong><br>
		<span>$35.20</span>
	</a>
	<div class="custom-menu">
		<div id="shopping-cart">
			<div class="shopping-cart-list">
				<!-- CART ITEM -->
				<div class="product product-widget">
					<div class="product-thumb">
						<img src="./img/thumb-product01.jpg" alt="">
					</div>
					<div class="product-body">
						<h3 class="product-price">$32.50 <span class="qty">x3</span></h3>
						<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
					</div>
					<button class="cancel-btn"><i class="fa fa-trash"></i></button>
				</div>
				<!-- /CART ITEM -->
			</div>
			<div class="shopping-cart-btns">
				<button class="primary-btn">VISUALIZZA</button>
				<button class="primary-btn">CHECKOUT&nbsp;<i class="fa fa-arrow-circle-right"></i></button>
			</div>
		</div>
	</div>
</li>
<!-- /Cart -->
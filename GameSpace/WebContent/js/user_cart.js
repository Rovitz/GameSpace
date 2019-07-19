/**
 * Auto-refresh sezione utente e carrello
 */

$(document).ready(function() {
	$('.addToCartForm').submit(function(e) {
		e.preventDefault();
		var form_data = $(this).serialize();
		$.ajax({
			type: "post",
			url: "AddCarrelloServlet",
			data: form_data,
			success: function(data, status, xhr){
				if(xhr.getResponseHeader("error") != null){ 
						alert(xhr.getResponseHeader("error"));
				}
				else{
					$('#ok').fadeIn("fast").delay(500).fadeOut("fast");
					//$('[id="prod"]').load(location.href + ' [id="prod"]');
					$("#user_cart").load(location.href + " #user_cart>*","");
				}
			}
		 });
	});
	
	$('[id="showDetailsForm"]').submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: "post",
			data: $(this).serialize(),
			url: "DetailsServlet",
			success: function(){
				$("#details-content").load(location.href + " #details-content>*","");
				$('[id="details"]').css("display", "block");
				}
		});
	});
	
	$('[id="details"]').click(function(){
		$(this).css("display", "none");
	});
	
	$('[id="popupLoginForm"]').submit(function(e) {
		e.preventDefault();
		$(this).ajaxSubmit({
			target: function(){
				$('[id="modal-wrapper"]').css("display", "none");
				$("#user_cart").load(location.href + " #user_cart>*","");
				}
		});
	});
	
	$(document).on('click' , '[id="logoutBtn"]' , function(e) {
		e.preventDefault();
		$.ajax({
			type: "get",
			url: "LogoutServlet",
			success: function(){
				$("#user_cart").load(location.href + " #user_cart>*","");
				}
		 });
	});
	
	$(document).on('click' , '[id="emptyCartBtn"]' , function(e) {
		e.preventDefault();
		$.ajax({
			type: "get",
			url: "SvuotaCarrelloServlet",
			success: function(data, status, xhr){
				if(xhr.getResponseHeader("error") != null){ 
					alert(xhr.getResponseHeader("error"));
				}
				else{
					$('#ok').fadeIn(200).fadeOut(1000);
					$("#user_cart").load(location.href + " #user_cart>*","");
				}
			}
		 });
	});
		
	$(document).on('submit' , '.removeItemForm' , function(e) {
		e.preventDefault();
		$(this).ajaxSubmit({
			target: function(){
				$(".shopping-cart-list").load(location.href + " .shopping-cart-list>*","");
				$(".header-cart").load(location.href + " .header-cart>*","");
			}
		});
	});
	
	$('.removeUserForm').submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: "post",
			url: "EliminaUtenteServlet",
			data: $(this).serialize(), 
			success: function(data, status, xhr){
					$("#removeUserSelect").load(location.href + " #removeUserSelect>*","");
			}
		});
	});
	
	$('select.removeOrderSelectUser').click(function(e) {
		e.preventDefault();
		$.ajax({
			type: "post",
			url: "Admin_SelectedUserServlet",
			data: $(this).serialize(), 
			success: function(data, status, xhr){
					$(".removeOrderSelect").load(location.href + " .removeOrderSelect>*","");
			}
		});
	});
	
});

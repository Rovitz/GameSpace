/**
 * Auto-refresh sezione utente e carrello
 */

$(document).ready(function() {
	$(document).on('submit' , '.addToCartForm' , function(e) {
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
	
	// [ADMIN] elimina utente selezionato
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
	
	// [ADMIN] aggiungi utente
	$('.addUserForm').submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: "post",
			url: "AggiungiUtenteServlet",
			data: $(this).serialize(), 
			success: function(data, status, xhr){
					$("#removeUserSelect").load(location.href + " #removeUserSelect>*","");
					$("#removeOrderSelectUser").load(location.href + " #removeOrderSelectUser>*","");
			}
		});
	});
	
	// [ADMIN] elimina prodotto selezionato
	$('.removeProductForm').submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: "post",
			url: "EliminaProdottoServlet",
			data: $(this).serialize(), 
			success: function(data, status, xhr){
					$("#removeProductSelect").load(location.href + " #removeProductSelect>*","");
			}
		});
	});
	
	
	// [ADMIN] selezione utente per ordini da eliminare
	$('#removeOrderSelectUser').click(function() {
		$.ajax({
			method: "POST",
			url: "GetSelectedUserServlet",
			data: $(this).serialize(),
			success: function(data, status, xhr){
				$("#removeOrderSelect").load(location.href + " #removeOrderSelect>*","");
			}
		});
	});
	
	// [ADMIN] cancella ordine selezionato
	$('.removeOrderForm').submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: "post",
			url: "EliminaOrdineServlet",
			data: $(this).serialize(), 
			success: function(data, status, xhr){
					$("#removeOrderSelect").load(location.href + " #removeOrderSelect>*","");
			}
		});
	});
	
	$('select.userOrderSelect').click(function() {
		$.ajax({
			method: "POST",
			url: "GetSelectedOrderServlet",
			data: $(this).serialize(),
			success: function(data, status, xhr){
				$("#orderContent").load(location.href + " #orderContent>*","");
			}
		});
	});


	//[ADMIN] aggiungi gioco selezionato
	$('.addProductForm').submit(function(e) {
	e.preventDefault();
	$.ajax({
		type: "post",
		url: "AggiungiGiocoServlet",
		data: $(this).serialize(), 
		success: function(data, status, xhr){
				$("#removeProductSelect").load(location.href + " #removeProductSelect>*","");
			}
		});
	});
});
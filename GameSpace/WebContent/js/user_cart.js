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
					$('#ok').fadeIn(600).delay(600).fadeOut(600);
					$("#user_cart").load(location.href + " #user_cart>*","");
				}
			}
		 });
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
		
	$(document).on('submit' , '.removeItemForm' , function(e) {
		e.preventDefault();
		$(this).ajaxSubmit({
			target: function(){
				$("#user_cart").load(location.href + " #user_cart>*","");
				}
		});
	});
	
	 //$(document).ajaxStart(function () {
	 //   });
});

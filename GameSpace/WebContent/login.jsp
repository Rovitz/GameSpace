<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Popup Login -->
<link type="text/css" rel="stylesheet" href="css/popup_login.css">

<div id="modal-wrapper" class="modal-1">
  <form id="popupLoginForm" class="modal-content-1 animate">
	<h1>LOGIN</h1>
	<hr>
    <div class="popup-align-center">
      <input class="contact" required name="user_email" placeholder="e-Mail"/>
      <input class="contact" type="password" name="user_password" placeholder="Password"/>
      <br><br>  
      <input class="submit" type="submit" name="contact_submitted" value="Entra" />
    </div>
    
    <script>
	var modal = document.getElementById('modal-wrapper');
	window.onclick = function(event) {
    	if (event.target == modal) {
        	modal.style.display = "none";
    	}
	}
	</script>
  </form>
</div>

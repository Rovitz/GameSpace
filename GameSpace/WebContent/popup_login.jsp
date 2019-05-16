<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Popup Login -->
<link type="text/css" rel="stylesheet" href="css/popup_login.css">


<div id="modal-wrapper" class="modal-1">
  <form class="modal-content-1 animate" action="LoginServlet" method="post">
  
	<h1 class="popup-h1">LOGIN</h1>
	
    <div class="popup-align-center">
      <strong><font color="white">Email</font></strong>
      <br>
      <input class="contact" required name="user_email"/>
      <br><br>
      <strong><font color="white">Password</font></strong>
      <br>
      <input class="contact" type="password" name="user_password" id="user_password"/>
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

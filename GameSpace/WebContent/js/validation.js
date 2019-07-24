function validateCheckout(){
	var cvv= document.checkout.cvv.value;
	var numeroCarta= document.checkout.numero_carta.value;
	var intestatarioCarta=document.checkout.intestatario.value;
	var card_valid = /^([0-9])+$/;
		if(cvv.length!=3 && (document.checkout.cvv.disabled=false)){
			alert("ERRORE: CVV Errato!");
			return false;
		}
		if((numeroCarta.length!=16 || !card_valid.test(numeroCarta)) && (document.checkout.numero_carta.disabled=false)){
			  alert("ERRORE: Numero carta non valido!");
			  return false;
		}
		
		if((intestatarioCarta=="" || intestatario.length<5) && (document.checkout.intestatario.disabled=false)){
			alert("ERRORE: Nome intestatario non valido!");
			return false;
		}
		else {
			  alert("Ordine effettuato con successo!");
			  return true;
		}
} 

 
function validateRegister(){
	var password= document.register.user_password.value;
	var ripetipassword= document.register.user_confpassword.value;
	var cap= document.register.cap.value;
	var email= document.register.user_email.value;
	var email_valid = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-]{2,})+.)+([a-zA-Z0-9]{2,})+$/;
	if (!email_valid.test(email) || (email == "") || (email == "undefined")) {
		alert("ERRORE: Devi inserire un indirizzo email corretto!");
	return false;
	}
	if(password.length<=4){
		alert("ERRORE: La password deve contenere più di 4 caratteri!");
		return false;
	}
	if(password != ripetipassword){
		alert("ERRORE: Le password non coincidono!");
		return false;
	}
	if(cap.length!=5){
		alert("ERRORE: CAP errato!");
		return false;
	}
	
	else{
		alert("Registrazione avvenuta con successo!");
		return true;
	}	
}

function checkOut(){
	var quantita=document.getElementById("qty").innerHTML;
	var qty=parseInt(quantita);
	
	if(qty==0){
		alert("ERRORE: Non hai elementi nel carrello!");
		return false;
	}
	
}

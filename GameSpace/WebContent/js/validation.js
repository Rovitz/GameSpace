function validateCheckout(){
	var cvv= document.checkout.cvv.value;
	var numeroCarta= document.checkout.numero_carta.value;
		if(cvv.length!=3){
			alert("CVV Errato");
			return false;
		}
		if(numeroCarta.length!=16){
			  alert("Numero carta non valido");
			  return false;
		}
		else {
			  alert("Ordine effettuato con successo");
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
	alert("Devi inserire un indirizzo mail corretto");
	return false;
	}
	if(password.length<=4){
		alert("La password deve contenere più di 4 caratteri");
		return false;
	}
	if(password != ripetipassword){
		alert("Le password non coincidono");
		return false;
	}
	if(cap.length!=5){
		alert("Cap errato");
		return false;
	}
	
	else{
		alert("Registrazione avvenuta con successo!");
		return true;
	}	
}
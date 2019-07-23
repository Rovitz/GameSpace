package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DatabaseQuery;
import Model.Indirizzo;
import Model.Utente;

/**
 * Servlet per la registrazione degli utenti
 */

@WebServlet("/RegistrazioneServlet")
public class RegistrazioneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Dati utente
		String Email = request.getParameter("user_email");
		String Nome = request.getParameter("user_nome");
		String Cognome = request.getParameter("user_cognome");
		String Password = request.getParameter("user_password");
		String Sesso = request.getParameter("user_sesso");

		// Dati indirizzo
		String Nominativo = request.getParameter("nominativo");
		String Via = request.getParameter("via");
		String Comune = request.getParameter("comune");
		String Provincia = request.getParameter("provincia");
		int CAP = Integer.parseInt(request.getParameter("cap"));
		long Telefono = Long.parseLong(request.getParameter("telefono"));

		// Crea utente
		Utente u = new Utente(Email, Nome, Cognome, Password, Sesso);

		// Crea indirizzo
		Indirizzo i = new Indirizzo(Email, Via, Comune, Provincia, CAP, Telefono, Nominativo);

		try {
			DatabaseQuery.addUser(u);
			DatabaseQuery.addIndirizzo(i);
			response.sendRedirect("/GameSpace/index.jsp");
		} catch (SQLException e) {
			System.out.println(e.getLocalizedMessage());
			if(e.getLocalizedMessage().startsWith("Duplicate entry")) {
				request.setAttribute("error", "eMail già presente nel database!");
			}
			else {
				request.setAttribute("error", "Si è verificato un errore con il database!");
			}
		}
	}
}

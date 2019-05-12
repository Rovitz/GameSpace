package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.Utente;
import Database.DatabaseQuery;

/**
 * Servlet per la registrazione degli utenti
 */

@WebServlet("/RegistrazioneServlet")
public class RegistrazioneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email = request.getParameter("user_email");
		String Nome = request.getParameter("user_nome");
		String Cognome = request.getParameter("user_cognome");
		String Password = request.getParameter("user_password");
		String confPassword = request.getParameter("user_confpassword");
		String Sesso = request.getParameter("user_sesso");

		// Crea utente
		Utente u = new Utente(Email, Nome, Cognome, Password, Sesso);

		// Stampa utente creato
		System.out.println(u);

		try {
			DatabaseQuery.addUser(u);
			request.setAttribute("success", "Registrazione avvenuta correttamente, ora puoi effettuare il login!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} catch (SQLException e) {
			if(e.getLocalizedMessage().startsWith("Duplicate entry")) {
				request.setAttribute("error", "eMail già presente nel database!");
			}
			else {
				request.setAttribute("error", "Si è verificato un errore con il database!");
			}
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	}
}

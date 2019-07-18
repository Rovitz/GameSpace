package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DatabaseQuery;
import Model.Utente;

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

		try {
			DatabaseQuery.addUser(u);
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		} catch (SQLException e) {
			if(e.getLocalizedMessage().startsWith("Duplicate entry")) {
				request.setAttribute("error", "eMail gi� presente nel database!");
			}
			else {
				request.setAttribute("error", "Si � verificato un errore con il database!");
			}
		}
	}
}

package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DatabaseQuery;
import Model.Utente;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected synchronized void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Serve a rimanere nella pagina che effettua la richiesta
		response.setStatus(HttpServletResponse.SC_NO_CONTENT);

		String Email = request.getParameter("user_email");
		String Password = request.getParameter("user_password");

		try {
			Utente u = DatabaseQuery.getUtenteByID(Email);
			if(u!=null)
			{
				if(u.getPassword().toString().equals(Password))
				{
					// Crea sessione e aggiunge un utente alla sessione
					HttpSession session = request.getSession();
					session.setAttribute("user", u);

					// Carica numero elementi nel carrello
					int cart_count = DatabaseQuery.getCountCarrello(Email);
					session.setAttribute("cart_count", cart_count);

					// Carica totale elementi nel carrello
					double cart_total = DatabaseQuery.getTotalCarrello(Email);
					session.setAttribute("cart_total", cart_total);
				}
				else
				{
					request.setAttribute("error", "Si è verificato un errore durante il login!");
				}
			} else {
				request.setAttribute("error", "Si è verificato un errore durante il login!");
			}
		} catch (SQLException e) {
			request.setAttribute("error", "Si è verificato un errore con il database!");
		}
	}
}

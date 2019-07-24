package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Admin;
import Model.DatabaseQuery;
import Model.Indirizzo;
import Model.Utente;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected synchronized void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email = request.getParameter("user_email");
		String Password = request.getParameter("user_password");

		try {
			Admin a= DatabaseQuery.getAdmin(Email);
			Utente u = DatabaseQuery.getUtenteByID(Email);
			Indirizzo i = DatabaseQuery.getIndirizzo(Email);
			if(u!=null && i!=null)
			{
				if(u.getPassword().toString().equals(Password))
				{
					HttpSession session = request.getSession();
					session.setAttribute("user", u);
					session.setAttribute("address", i);

					// Carica numero elementi nel carrello
					int cart_count = DatabaseQuery.getCountCarrello(Email);
					session.setAttribute("cart_count", cart_count);

					// Carica totale elementi nel carrello
					double cart_total = DatabaseQuery.getTotalCarrello(Email);
					session.setAttribute("cart_total", cart_total);
				}
				else {
					response.setHeader("loginerror", "EMAIL O PASSWORD ERRATI!");
				}
			}
			else if (a != null) {
				if(a.getPassword().toString().equals(Password))
				{
					HttpSession session = request.getSession();
					session.setAttribute("admin", a);
				}
				else {
					response.setHeader("loginerror", "EMAIL O PASSWORD ERRATI!");
				}
			}
		} catch (SQLException e) {
			response.setHeader("loginerror", "Si è verificato un errore con il database!");
		}
	}
}

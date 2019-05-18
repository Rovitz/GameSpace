package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Utente;
import Database.DatabaseQuery;

/**
 * Permette il Login
 * @param <Utente>
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected synchronized void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email = request.getParameter("user_email");
		String Password = request.getParameter("user_password");

		try {
			Utente u = DatabaseQuery.getUtenteByID(Email);
			if(u!=null)
			{
				if(u.getPassword().toString().equals(Password))
				{
					HttpSession session = request.getSession();
					session.setAttribute("user", u);
					int cart_count = DatabaseQuery.getCountCarrello(Email);
					session.setAttribute("cart_count", cart_count);
					double cart_total = DatabaseQuery.getTotalCarrello(Email);
					session.setAttribute("cart_total", cart_total);

					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("error", "Si è verificato un errore durante il login!");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			} else {
				request.setAttribute("error", "Si è verificato un errore durante il login!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			request.setAttribute("error", "Si è verificato un errore con il database!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
}

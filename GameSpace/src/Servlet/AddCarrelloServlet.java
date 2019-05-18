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

@WebServlet("/AddCarrelloServlet")
public class AddCarrelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Serve a rimanere nella pagina che effettua la richiesta
		response.setStatus(HttpServletResponse.SC_NO_CONTENT);

		HttpSession session = request.getSession();

		// Controlla che ci sia un utente nella sessione
		if(session.getAttribute("user") == null) {
			request.setAttribute("error", "Devi effettuare prima il login!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}

		Utente u = (Utente) session.getAttribute("user");
		String user = u.getEmail();

		String Prodotto = request.getParameter("idProduct");
		System.out.println(Prodotto);

		if(Prodotto == null){
			System.out.println("Servlet: Valore null ricevuto dalla jsp");
		} else {
			System.out.println("Servlet: ricevuta richiesta inserimento");
			int idProdotto = Integer.parseInt(Prodotto);

			try {
				DatabaseQuery.addCarrello(idProdotto, user);
				int cart_count = DatabaseQuery.getCountCarrello(user);
				session.setAttribute("cart_count", cart_count);
				double cart_total = DatabaseQuery.getTotalCarrello(user);
				session.setAttribute("cart_total", cart_total);
			} catch (SQLException e) {
				System.out.println("Impossibile aggiungere al carrello...");
				System.out.println(e.getLocalizedMessage());
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}

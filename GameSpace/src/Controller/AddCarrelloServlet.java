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

@WebServlet("/AddCarrelloServlet")
public class AddCarrelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Serve a rimanere nella pagina che effettua la richiesta
		response.setStatus(HttpServletResponse.SC_NO_CONTENT);

		HttpSession session = request.getSession();
		Utente u = (Utente) session.getAttribute("user");

		// Controlla che ci sia un utente nella sessione
		if(u == null) {
			response.setHeader("error", "DEVI EFFETTUARE PRIMA IL LOGIN!");
		}
		else {
			String user = u.getEmail();
			String Prodotto = request.getParameter("idProduct");

			if(Prodotto != null) {
				int idProdotto = Integer.parseInt(Prodotto);

				try {
					// Inserimento prodotto nel carrello
					DatabaseQuery.addCarrello(idProdotto, user);

					// Decrementa disponibilità prodotto
					DatabaseQuery.getGioco(idProdotto).setDisponibilita(DatabaseQuery.getGioco(idProdotto).getDisponibilita()-1);

					// Carica numero elementi nel carrello
					int cart_count = DatabaseQuery.getCountCarrello(user);
					session.setAttribute("cart_count", cart_count);

					// Carica totale elementi nel carrello
					double cart_total = DatabaseQuery.getTotalCarrello(user);
					session.setAttribute("cart_total", cart_total);
				} catch (SQLException e) {
					System.out.println(e.getLocalizedMessage());
				}
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

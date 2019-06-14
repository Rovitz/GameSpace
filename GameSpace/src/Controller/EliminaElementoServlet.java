package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Database;
import Model.DatabaseQuery;
import Model.Utente;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/EliminaElementoServlet")
public class EliminaElementoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Serve a rimanere nella pagina che effettua la richiesta
		response.setStatus(HttpServletResponse.SC_NO_CONTENT);

		HttpSession session = request.getSession();
		int delProductId = Integer.parseInt(request.getParameter("removeItemId"));

		Connection connection = null;
		Statement stmt = null;
		Utente u = null;

		try{
			connection = Database.getConnection();
			stmt = connection.createStatement();
			u = (Utente) session.getAttribute("user");

			if(u != null){
				// Cancella elemento nel carrello
				stmt.executeUpdate("DELETE FROM CARRELLO WHERE IDGioco = \"" + delProductId + "\" AND eMail = \"" + u.getEmail() + "\" LIMIT 1");
				connection.commit();

				// Decrementa numero elementi nel carrello
				int cart_count = DatabaseQuery.getCountCarrello(u.getEmail());
				session.setAttribute("cart_count", cart_count);

				// Ricalcola il totale
				double cart_total = DatabaseQuery.getTotalCarrello(u.getEmail());
				session.setAttribute("cart_total", cart_total);
			}
		} catch (SQLException e) {
			System.out.println(e.getLocalizedMessage());
		}
	}


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

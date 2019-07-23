package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DatabaseQuery;
import Model.Gioco;
import Model.Ordine;
import Model.Utente;

/**
 *	Servlet che permette il checkout (creazione ordine nel database)
 */

@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Utente utente = (Utente) session.getAttribute("user");
		double cart_total = (double) session.getAttribute("cart_total");
		String pagamento = request.getParameter("user_payment");
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		LocalDate localDate = LocalDate.now();

		Ordine ordine = null;

		try {
			List<Gioco> giochi = DatabaseQuery.getElementiCarrello(utente.getEmail());
			int maxID = DatabaseQuery.getMaxIDOrdine();
			if(giochi != null) {
				ordine = new Ordine(maxID+1, giochi, utente.getEmail(), pagamento, cart_total, "inoltrato", dtf.format(localDate));
				DatabaseQuery.addOrdine(ordine);
				session.setAttribute("order", ordine);
				DatabaseQuery.delCarrello(utente.getEmail());
				session.removeAttribute("cart_count");
				session.removeAttribute("cart_total");
				this.getServletContext().getRequestDispatcher("/invoice.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			System.out.println(e.getLocalizedMessage());
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}

package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DatabaseQuery;
import Model.Ordine;
import Model.Utente;

/**
 * Permette all'utente di vedere la propria lista degli ordini
 */

@WebServlet("/GetListaOrdiniUtente")
public class GetListaOrdiniUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Ordine> lista = new ArrayList<>();

		HttpSession session = request.getSession();
		Utente u = (Utente) session.getAttribute("user");
		String email = u.getEmail();
		try {

			lista=DatabaseQuery.getOrdiniUtente(email);
			request.setAttribute("lista", lista);

			if(lista.toString() == "[]"){
				request.setAttribute("vis", "nulla");
			} else{
				request.setAttribute("vis", "visible");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

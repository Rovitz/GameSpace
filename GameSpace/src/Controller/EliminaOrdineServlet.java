package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DatabaseQuery;

/**
 * La servlet permette all'amministratore di eliminare un ordine
 */

@WebServlet("/EliminaOrdineServlet")
public class EliminaOrdineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ordine = Integer.parseInt(request.getParameter("removeOrderSelect"));

		try {
			DatabaseQuery.delOrdine(ordine);
		} catch (SQLException e) {
			System.out.println(e.getLocalizedMessage());
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

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
import Model.Gioco;

/**
 * Servlet implementation class DetailsServlet
 */

@WebServlet("/DetailsServlet")
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int gameId = Integer.parseInt(request.getParameter("gameId"));
		HttpSession session = request.getSession();

		try {
			Gioco g = DatabaseQuery.getGioco(gameId);
			session.setAttribute("gameDetails", g);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
}

package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DatabaseQuery;

/**
 * Servlet implementation class AggiornaOrdineServlet
 */
@WebServlet("/AggiornaOrdineServlet")
public class AggiornaOrdineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ordine = Integer.parseInt(request.getParameter("modifyOrderSelect"));
		String stato = request.getParameter("changeOrderState");
		
		try {
			DatabaseQuery.updateOrdine(ordine, stato);
		} catch (Exception e) {
			System.out.println(e.getLocalizedMessage());
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

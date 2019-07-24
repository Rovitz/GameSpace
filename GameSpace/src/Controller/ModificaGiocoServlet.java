package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DatabaseQuery;
import Model.Gioco;


@WebServlet("/ModificaGiocoServlet")
public class ModificaGiocoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String titolo=request.getParameter("game_titolo");
		String piattaforma=request.getParameter("game_piattaforma");
		String genere=request.getParameter("game_genere");
		Double prezzo=Double.parseDouble(request.getParameter("game_prezzo"));
		String descrizione=request.getParameter("game_descrizione");
		String dataRilascio=request.getParameter("game_datarilascio");
		int disponibilità=Integer.parseInt(request.getParameter("game_disponibilità"));	
		String cover=request.getParameter("game_cover");
		int rating=Integer.parseInt(request.getParameter("game_rating"));
		
		Gioco g= new Gioco(titolo,descrizione,disponibilità,prezzo,genere,piattaforma,rating,cover,dataRilascio);
		g.setIDGioco(Integer.parseInt(request.getParameter("modifyProductSelect")));
		try {
			DatabaseQuery.updateGioco(g);
			
		} catch (SQLException e) {
			System.out.println(e.getLocalizedMessage());

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

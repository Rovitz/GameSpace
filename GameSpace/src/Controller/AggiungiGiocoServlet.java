package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DatabaseQuery;
import Model.Gioco;

/**
 * Servlet implementation class AggiungiGioco
 */
@WebServlet("/AggiungiGiocoServlet")
public class AggiungiGiocoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AggiungiGiocoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
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
		try {
			DatabaseQuery.addGioco(g);
			
		} catch (SQLException e) {
			System.out.println(e.getLocalizedMessage());

		}
	}
}

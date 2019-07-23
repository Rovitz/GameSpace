package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DatabaseQuery;
import Model.Utente;

/**
 * Servlet implementation class AggiungiUtente
 */
@WebServlet("/AggiungiUtenteServlet")
public class AggiungiUtenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AggiungiUtenteServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Email = request.getParameter("user_email");
		String Nome = request.getParameter("user_nome");
		String Cognome = request.getParameter("user_cognome");
		String Password = request.getParameter("user_password");
		String Sesso=request.getParameter("user_sesso");
		
		Utente u = new Utente(Email, Nome, Cognome, Password,Sesso);
		try {
			DatabaseQuery.addUser(u);
			
		} catch (SQLException e) {
			System.out.println(e.getLocalizedMessage());
			if(e.getLocalizedMessage().startsWith("Duplicate entry")) {
				request.setAttribute("error", "eMail già presente nel database!");
			}
			else {
				request.setAttribute("error", "Si è verificato un errore con il database!");
			}
		}
	}

}

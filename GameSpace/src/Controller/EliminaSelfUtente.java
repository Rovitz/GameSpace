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

/**
 * La servlet permette ad un utente di eliminare il proprio account dal suo profilo utente
 */
@WebServlet("/EliminaSelfUtente")
public class EliminaSelfUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminaSelfUtente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Utente u = (Utente) session.getAttribute("user");
		String email = u.getEmail();
        
        try {
			DatabaseQuery.delUser(email);
			System.out.println("Servlet: Elimino account " +email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Del non riuscita");
			e.printStackTrace();
		}
        
        session.invalidate();
        
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

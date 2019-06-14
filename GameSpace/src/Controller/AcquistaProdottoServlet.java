package Controller;

/*@WebServlet("/AcquistaProdottoServlet")
public class AcquistaProdottoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		Utente u = (Utente) session.getAttribute("user");

		String email =  u.getEmail();

		String Pagamento = request.getParameter("pagamento");
		System.out.println(Pagamento);

		String Indirizzo = request.getParameter("indirizzo");
		System.out.print(Indirizzo);

		String Descrizione = request.getParameter("descrizione");
		System.out.println(Descrizione);

		LocalDate localDate = LocalDate.now();
		int day = localDate.getDayOfMonth();
		int mese = localDate.getMonthValue();
		int year = localDate.getYear();
		@SuppressWarnings("deprecation")
		Date data = new Date(year, mese, day);

		ArrayList<Carrello> lista = new ArrayList<>();
		try {
			lista = DatabaseQuery.getCarrello(email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println(lista);

		for (int i = 0; i < lista.size(); i++) {
			try {
				Gioco p = DatabaseQuery.getProdotto(lista.get(i).getIdProdotto());
				Ordine o = new Ordine(0, p.getIdProdotto(), email, data, Pagamento, Indirizzo, Descrizione,  p.getPrezzo());
				System.out.println(o);
				DatabaseQuery.addOrdine(o);
				p=null;
				o=null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}

			try {
				DatabaseQuery.delCarrello(email);
				request.getRequestDispatcher("MieiOrdini.jsp").forward(request, response);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("ERRORE INSERIMENTO (Ordine già presente)");
				request.getRequestDispatcher("MieiOrdini.jsp").forward(request, response);

			}
		}

		request.getRequestDispatcher("MieiOrdini.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}*/

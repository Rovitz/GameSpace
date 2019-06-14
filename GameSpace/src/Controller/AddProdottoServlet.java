package Controller;


/*@WebServlet("/AddProdottoServlet")
public class AddProdottoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		Admin a = (Admin) session.getAttribute("admin");

		String Nome = request.getParameter("prodotto_nome");
		System.out.println(Nome);

		String Tipo = request.getParameter("prodotto_tipo");
		System.out.print(Tipo);

		String Descrizione = request.getParameter("prodotto_descrizione");
		System.out.println(Descrizione);

		String quantita = request.getParameter("prodotto_quantita");
		int Quantita = Integer.parseInt(quantita);
		System.out.println(Quantita);

		String prezzo = request.getParameter("prodotto_prezzo");
		Double price = Double.parseDouble(prezzo);
		BigDecimal Prezzo = BigDecimal.valueOf(price);
		System.out.println(Prezzo);

		String Condizione = request.getParameter("prodotto_codizione");
		System.out.println(Condizione);

		String Path = request.getParameter("prodotto_path");
		System.out.println(Path);

		Gioco prodotto = new Gioco(0, Descrizione, Quantita, Prezzo, Tipo, Condizione, Nome, Path, null);
		System.out.println(prodotto);

		try {
			if(a == null) {
				System.out.println("Utente non loggato prodotto non inserito, jsp di errore.");
				request.getRequestDispatcher("InvitoLogReg.jsp").forward(request, response);
			} else  {
				DatabaseQuery.addProdotto(prodotto, a.getUserName());
				System.out.println("Prodotto aggiunto da: " + a.getUserName());
				request.getRequestDispatcher("AdminProdotto.jsp").forward(request, response);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}*/

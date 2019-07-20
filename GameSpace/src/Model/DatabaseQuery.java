package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DatabaseQuery {

	/**
	 * Query gestione Utente
	 */
	private static String queryAddUtente;
	private static String queryAddIndirizzo;
	private static String queryEliminaUtente;
	private static String queryGetUtente;
	private static String queryGetIndirizzo;
	private static String queryCambiaPassword;

	/*
	 * Query gestione Prodotti
	 */
	private static String queryAddProdotto;
	private static String queryEliminaProdotto;
	private static String queryGetProdotti;
	private static String queryCercaProdotto;
	private static String queryGetGiocoById;
	private static String queryGetProdottoByUser;
	private static String queryGetNumeroProdotto;
	private static String queryDecrementaQuantita;


	/*
	 * Query gestione Ordini e Carrello
	 */
	private static String queryAddOrdine;
	private static String queryDelOrdine;
	private static String queryGetMieiOrdini;
	private static String queryOrdini;
	private static String queryAddCarrello;
	private static String queryGetCarrello;
	private static String queryGetProdottiById;
	private static String queryEliminaCarrello;
	private static String queryGetMaxIDOrdine;

	/*
	 * Query Gestione Admin
	 */
	private static String queryGetUtenti;
	private static String queryGetAdmin;

	/*
	 * ArrayList per le query
	 */
	private static ArrayList listProdotti;
	private static ArrayList<Gioco> cercaProdotti;
	private static ArrayList listGiochi;
	private static ArrayList<Gioco> listCarrello;
	private static ArrayList listOrdini;
	private static ArrayList utenti;


	/**
	 * Aggiunge un utente nel database
	 */

	public synchronized static boolean addUser(Utente utente) throws SQLException{
		Connection connection = null;
		PreparedStatement psAddUtente = null;

		try{
			connection = Database.getConnection();
			psAddUtente = connection.prepareStatement(queryAddUtente);

			psAddUtente.setString(1, utente.getEmail());
			psAddUtente.setString(2, utente.getNome());
			psAddUtente.setString(3, utente.getCognome());
			psAddUtente.setString(4, utente.getPassword());
			psAddUtente.setString(5, utente.getSesso());

			System.out.println(psAddUtente.toString());

			psAddUtente.executeUpdate();

			connection.commit();
			System.out.println("GU Connessione...");
		} finally {
			try{
				if(psAddUtente != null)
					psAddUtente.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}

		return true;
	}

	/**
	 *	Aggiunge un indirizzo nel database
	 */

	public synchronized static boolean addIndirizzo(Indirizzo indirizzo) throws SQLException{
		Connection connection = null;
		PreparedStatement psAddIndirizzo = null;

		try{
			connection = Database.getConnection();
			psAddIndirizzo = connection.prepareStatement(queryAddIndirizzo);

			psAddIndirizzo.setString(1, indirizzo.geteMail());
			psAddIndirizzo.setString(2, indirizzo.getVia());
			psAddIndirizzo.setString(3, indirizzo.getComune());
			psAddIndirizzo.setString(4, indirizzo.getProvincia());
			psAddIndirizzo.setInt(5, indirizzo.getCAP());
			psAddIndirizzo.setLong(6, indirizzo.getTelefono());
			psAddIndirizzo.setString(7, indirizzo.getNominativo());

			psAddIndirizzo.executeUpdate();

			connection.commit();
		} finally {
			try{
				if(psAddIndirizzo != null)
					psAddIndirizzo.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}
		return true;
	}

	/**
	 * Elimina un utente dal database
	 */

	public synchronized static boolean delUser(String email) throws SQLException{
		Connection connection = null;
		PreparedStatement psDelUtente = null;

		try{
			connection = Database.getConnection();
			psDelUtente = connection.prepareStatement(queryEliminaUtente);
			psDelUtente.setString(1, email);

			psDelUtente.executeUpdate();

			connection.commit();
		} finally {
			try{
				if(psDelUtente != null)
					psDelUtente.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}

		return true;
	}

	/**
	 * Ritorna un utente dal DB
	 */
	public synchronized static boolean getUser(String email) throws SQLException{
		Connection connection = null;
		PreparedStatement psDelUtente = null;

		try{
			connection = Database.getConnection();
			psDelUtente = connection.prepareStatement(queryGetUtente);
			psDelUtente.setString(1, email);

			psDelUtente.executeUpdate();

			connection.commit();
		} finally {
			try{
				if(psDelUtente != null)
					psDelUtente.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}

		return true;
	}

	/**
	 * Restituisce ,se esiste, un oggetto Utente data una email
	 */

	public synchronized static Utente getUtenteByID(String email) throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		Utente utente = new Utente();

		try {
			connection = Database.getConnection();
			preparedStatement = connection.prepareStatement(queryGetUtente);
			preparedStatement.setString(1, email);

			ResultSet rs = preparedStatement.executeQuery();

			connection.commit();

			while (rs.next()) {
				utente.setEmail(rs.getString("eMail"));
				utente.setNome(rs.getString("Nome"));
				utente.setCognome(rs.getString("Cognome"));
				utente.setPassword(rs.getString("Password"));
				utente.setSesso(rs.getString("Sesso"));
			}
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}
		if (utente.getEmail() == null)
			return null;
		else
			return utente;
	}

	/**
	 * Restituisce ,se esiste, un oggetto indirizzo data una email
	 */

	public synchronized static Indirizzo getIndirizzo(String email) throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		Indirizzo i = new Indirizzo();

		try {
			connection = Database.getConnection();
			preparedStatement = connection.prepareStatement(queryGetIndirizzo);
			preparedStatement.setString(1, email);

			ResultSet rs = preparedStatement.executeQuery();

			connection.commit();

			while (rs.next()) {
				i.seteMail(rs.getString("eMail"));
				i.setVia(rs.getString("Via"));
				i.setComune(rs.getString("Comune"));
				i.setProvincia(rs.getString("Provincia"));
				i.setCAP(rs.getInt("CAP"));
				i.setTelefono(rs.getLong("Telefono"));
				i.setNominativo(rs.getString("Nominativo"));
			}
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}
		if (i.geteMail() == null)
			return null;
		else
			return i;
	}

	/**
	 * Restituisce ,se esiste, tutti gli Utenti
	 */

	public synchronized static ArrayList getUtentiAll() throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		utenti = new ArrayList<>();

		try {
			connection = Database.getConnection();
			preparedStatement = connection.prepareStatement(queryGetUtenti);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Utente utente = new Utente();
				utente.setEmail(rs.getString("email"));
				utente.setNome(rs.getString("Nome"));
				utente.setCognome(rs.getString("Cognome"));
				utente.setPassword(rs.getString("Password"));
				utente.setSesso(rs.getString("Sesso"));

				utenti.add(utente);
			}
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}
		return utenti;
	}

	/**
	 * Recupera un admin dal DB
	 */

	public synchronized static Admin getAdmin(String email) throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		Admin admin = new Admin();

		try {
			connection = Database.getConnection();
			preparedStatement = connection.prepareStatement(queryGetAdmin);
			preparedStatement.setString(1, email);

			ResultSet rs = preparedStatement.executeQuery();

			connection.commit();

			while (rs.next()) {
				admin.setUserName(rs.getString("idadmin"));
				admin.setPassword(rs.getString("PasswordAdmin"));

			}
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}
		if (admin.getUserName() == null)
			return null;
		else
			return admin;
	}

	/**
	 * Registra un prodotto nel database
	 */

	/*	public synchronized static boolean addProdotto(Gioco prodotto, String idUtente) throws SQLException{
		Connection connection = null;
		PreparedStatement psAddProdotto = null;

		try{
			connection = Database.getConnection();
			psAddProdotto = connection.prepareStatement(queryAddProdotto);

			psAddProdotto.setInt(1, prodotto.getIdProdotto());
			psAddProdotto.setString(2, prodotto.getDescrizione());
			psAddProdotto.setInt(3, prodotto.getQuantita());
			psAddProdotto.setBigDecimal(4, prodotto.getPrezzo());
			psAddProdotto.setString(5, prodotto.getTipo());
			psAddProdotto.setString(6, prodotto.getCondizione());
			psAddProdotto.setString(7, prodotto.getNome());
			psAddProdotto.setString(8, idUtente);
			psAddProdotto.setString(9, prodotto.getPath());


			System.out.println(psAddProdotto.toString());

			psAddProdotto.executeUpdate();

			connection.commit();
			System.out.println("Insert Prodotto Connessione...");
		} finally {
			try{
				if(psAddProdotto != null)
					psAddProdotto.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}

		return true;
	} */

	/**
	 * Elimina un prodotto nel database
	 */

	public synchronized static boolean delProdotto(int idProdotto) throws SQLException{
		Connection connection = null;
		PreparedStatement psDelProdotto = null;

		try{
			connection = Database.getConnection();
			psDelProdotto = connection.prepareStatement(queryEliminaProdotto);
			psDelProdotto.setInt(1, idProdotto);

			psDelProdotto.executeUpdate();

			connection.commit();
		} finally {
			try{
				if(psDelProdotto != null)
					psDelProdotto.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}

		return true;
	}

	/**
	 * Inserisce un ordine nella lista ordini dell'utente
	 */

	public synchronized static boolean addOrdine(Ordine ordine) throws SQLException{
		Connection connection = null;
		PreparedStatement psAddOrdine = null;

		try{
			connection = Database.getConnection();

			List<Gioco> giochi = ordine.getGiochi();

			if(giochi != null)
				for (Gioco g : giochi) {
					psAddOrdine = connection.prepareStatement(queryAddOrdine);
					psAddOrdine.setInt(1, ordine.getIDOrdine());
					psAddOrdine.setInt(2, g.getIDGioco());
					psAddOrdine.setString(3, ordine.geteMail());
					psAddOrdine.setString(4, ordine.getDataRicevuta());
					psAddOrdine.setString(5, ordine.getPagamento());
					psAddOrdine.setString(6, ordine.getStato());
					psAddOrdine.setDouble(7, ordine.getPrezzo());

					psAddOrdine.executeUpdate();

					connection.commit();
				}
		} finally {
			try{
				if(psAddOrdine != null)
					psAddOrdine.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}
		return true;
	}

	/**
	 * Elimina un ordine
	 */

	public synchronized static boolean delOrdine(int IDOrdine) throws SQLException{
		Connection connection = null;
		PreparedStatement psDelProdotto = null;

		try{
			connection = Database.getConnection();
			psDelProdotto = connection.prepareStatement(queryDelOrdine);
			psDelProdotto.setInt(1, IDOrdine);

			psDelProdotto.executeUpdate();

			connection.commit();
		} finally {
			try{
				if(psDelProdotto != null)
					psDelProdotto.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}

		return true;
	}

	/**
	 * Ritorna la lista di tutti i prodotti presenti nel DB
	 */

	public synchronized static ArrayList getGiochiAll() throws SQLException{
		Connection connection = null;
		PreparedStatement psListGiochi = null;
		listGiochi = new ArrayList<>();
		try{
			connection = Database.getConnection();
			psListGiochi = connection.prepareStatement(queryGetProdotti);

			ResultSet rs = psListGiochi.executeQuery();

			while(rs.next()){
				Gioco g = new Gioco();
				g.setIDGioco(rs.getInt("IDGioco"));
				g.setDescrizione(rs.getString("Descrizione"));
				g.setDisponibilita(rs.getInt("Disponibilita"));
				g.setRating(rs.getInt("Rating"));
				g.setPiattaforma(rs.getString("Piattaforma"));
				g.setPrezzo(rs.getDouble("Prezzo"));
				g.setGenere(rs.getString("Genere"));
				g.setTitolo(rs.getString("Titolo"));
				g.setCover(rs.getString("Cover"));
				g.setDataRilascio(rs.getDate("DataRilascio"));

				listGiochi.add(g);
			}

		}
		finally {
			try {
				if(psListGiochi != null)
					psListGiochi.close();
				if(psListGiochi !=null)
					psListGiochi.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				connection.close();
				Database.releaseConnection(connection);
			}
		}
		return listGiochi;
	}

	/**
	 * Ritorna la lista di tutti gli ordini di un utente nel DB
	 */

	public synchronized static ArrayList getOrdiniUtente(String email) throws SQLException{
		Connection connection = null;
		PreparedStatement psListProdotti= null;
		listOrdini = new ArrayList<>();
		try{
			connection = Database.getConnection();
			psListProdotti = connection.prepareStatement(queryGetMieiOrdini);

			psListProdotti.setString(1, email);
			ResultSet rs = psListProdotti.executeQuery();

			while(rs.next()){
				Ordine or = new Ordine();
				or.setIDOrdine(rs.getInt("IDOrdine"));
				or.setIDGioco(rs.getInt("IDGioco"));
				or.seteMail(rs.getString("eMail"));
				or.setDataRicevuta(rs.getDate("DataRicevuta"));
				or.setPagamento(rs.getString("Pagamento"));
				or.setIndirizzo(rs.getString("Indirizzo"));
				or.setStato(rs.getString("Stato"));
				or.setPrezzo(rs.getDouble("Prezzo"));

				listOrdini.add(or);
			}

		}
		finally {
			try {
				if(psListProdotti != null)
					psListProdotti.close();
				if(psListProdotti !=null)
					psListProdotti.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				connection.close();
				Database.releaseConnection(connection);
			}
		}
		return listOrdini;
	}

	/**
	 * Ritorna l'ordine con id maggiore
	 */

	public synchronized static int getMaxIDOrdine() throws SQLException{
		Connection connection = null;
		PreparedStatement psMaxIDOrdine= null;
		int maxIDOrdine = 0;

		try{
			connection = Database.getConnection();
			psMaxIDOrdine = connection.prepareStatement(queryGetMaxIDOrdine);

			ResultSet rs =  psMaxIDOrdine.executeQuery();
			while(rs.next())
				maxIDOrdine = rs.getInt("MaxVal");
		}
		finally {
			try {
				if(psMaxIDOrdine != null)
					psMaxIDOrdine.close();
				if(psMaxIDOrdine !=null)
					psMaxIDOrdine.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				connection.close();
				Database.releaseConnection(connection);
			}
		}
		return maxIDOrdine;
	}

	/**
	 * Ritorna una lista di prodotti dal database data una keyword
	 */

	/*	public synchronized static ArrayList cercaProdotti(String nomeProdotto) throws SQLException{
		Connection connection = null;
		PreparedStatement psListProdotti= null;
		cercaProdotti = new ArrayList<Gioco>();
		try{
			connection = Database.getConnection();
			psListProdotti = connection.prepareStatement(queryCercaProdotto);

			psListProdotti.setString(1, nomeProdotto);
			ResultSet rs = psListProdotti.executeQuery();

			while(rs.next()){
				Gioco pr = new Gioco();
				pr.setIdProdotto(rs.getInt("idProdotto"));
				pr.setDescrizione(rs.getString("Descrizione"));
				pr.setQuantita(rs.getInt("Quantita"));
				pr.setPrezzo(rs.getBigDecimal("PrezzoSingolo"));
				pr.setTipo(rs.getString("Tipo"));
				pr.setCondizione(rs.getString("Condizione"));
				pr.setNome(rs.getString("Nome"));
				pr.setIdUtente(rs.getString("idUtente"));
				pr.setPath(rs.getString("Path"));

				cercaProdotti.add(pr);
			}

		}
		finally {
			try {
				if(psListProdotti != null)
					psListProdotti.close();
				if(psListProdotti !=null)
					psListProdotti.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				connection.close();
				Database.releaseConnection(connection);
			}
		}
		return cercaProdotti;
	} */

	/**
	 * Ritorna un gioco dato un id
	 */
	public synchronized static Gioco getGioco(int idGioco) throws SQLException{
		Connection connection = null;
		PreparedStatement psGetGioco= null;
		Gioco g = new Gioco();

		try{
			connection = Database.getConnection();
			psGetGioco = connection.prepareStatement(queryGetGiocoById);

			psGetGioco.setInt(1, idGioco);
			ResultSet rs = psGetGioco.executeQuery();

			while(rs.next()){
				g.setIDGioco(rs.getInt("IDGioco"));
				g.setDescrizione(rs.getString("Descrizione"));
				g.setDisponibilita(rs.getInt("Disponibilita"));
				g.setPrezzo(rs.getDouble("Prezzo"));
				g.setTitolo(rs.getString("Titolo"));
				g.setRating(rs.getInt("Rating"));
				g.setPiattaforma(rs.getString("Piattaforma"));
				g.setGenere(rs.getString("Genere"));
				g.setCover(rs.getString("Cover"));
				g.setDataRilascio(rs.getDate("DataRilascio"));

			}
		}
		finally {
			try {
				if(psGetGioco != null)
					psGetGioco.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				connection.close();
				Database.releaseConnection(connection);
			}
		}
		return g;
	}

	/**
	 * Inserisce un prodotto nel carrello dell'utente
	 */

	public synchronized static boolean addCarrello(int idProdotto, String idUtente) throws SQLException{
		Connection connection = null;
		PreparedStatement psAddCarrello = null;

		try{
			connection = Database.getConnection();
			psAddCarrello = connection.prepareStatement(queryAddCarrello);

			psAddCarrello.setString(1, idUtente);
			psAddCarrello.setInt(2, idProdotto);

			psAddCarrello.executeUpdate();

			connection.commit();
		} finally {
			try{
				if(psAddCarrello != null)
					psAddCarrello.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}

		return true;
	}

	/**
	 * Ritorna il carrello di un utente dato un idUtente
	 */

	public synchronized static ArrayList<Gioco> getElementiCarrello(String idUtente) throws SQLException{
		Connection connection = null;
		PreparedStatement psListCarrello= null;
		listCarrello = new ArrayList<>();

		try{
			connection = Database.getConnection();
			psListCarrello = connection.prepareStatement(queryGetCarrello);

			psListCarrello.setString(1, idUtente);
			ResultSet rs = psListCarrello.executeQuery();

			while(rs.next()){
				listCarrello.add(getGioco(rs.getInt("IDGioco")));
			}
		}
		finally {
			try {
				if(psListCarrello != null)
					psListCarrello.close();
				if(psListCarrello !=null)
					psListCarrello.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				connection.close();
				Database.releaseConnection(connection);
			}
		}
		return listCarrello;
	}

	/**
	 * Ritorna il numero di prodotti che un utente ha nel carrello
	 */

	public synchronized static int getCountCarrello(String idUtente) throws SQLException{
		Connection connection = null;
		PreparedStatement psGetNumCarrello= null;

		int valore = 0;

		try{
			connection = Database.getConnection();
			psGetNumCarrello = connection.prepareStatement(queryGetCarrello);

			psGetNumCarrello.setString(1, idUtente);
			ResultSet rs = psGetNumCarrello.executeQuery();

			while(rs.next()){

				valore++;
			}

		}
		finally {
			try {
				if(psGetNumCarrello != null)
					psGetNumCarrello.close();
				if(psGetNumCarrello !=null)
					psGetNumCarrello.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				connection.close();
				Database.releaseConnection(connection);
			}
		}
		return valore;
	}

	public synchronized static double getTotalCarrello(String idUtente) throws SQLException{
		Connection connection = null;
		PreparedStatement psGetTotCarrello= null;
		Gioco g = null;
		double valore = 0;

		try{
			connection = Database.getConnection();
			psGetTotCarrello = connection.prepareStatement(queryGetCarrello);

			psGetTotCarrello.setString(1, idUtente);
			ResultSet rs = psGetTotCarrello.executeQuery();

			while(rs.next()){
				g = getGioco(rs.getInt("IDGioco"));
				valore += g.getPrezzo();
			}

		}
		finally {
			try {
				if(psGetTotCarrello != null)
					psGetTotCarrello.close();
				if(psGetTotCarrello !=null)
					psGetTotCarrello.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				connection.close();
				Database.releaseConnection(connection);
			}
		}
		return valore;
	}

	/**
	 * Elimina il carrello di un utente dal database
	 */

	public synchronized static boolean delCarrello(String email) throws SQLException{
		Connection connection = null;
		PreparedStatement psDelCarrello = null;

		try{
			connection = Database.getConnection();
			psDelCarrello = connection.prepareStatement(queryEliminaCarrello);
			psDelCarrello.setString(1, email);

			psDelCarrello.executeUpdate();

			connection.commit();
		} finally {
			try{
				if(psDelCarrello != null)
					psDelCarrello.close();
			} finally {
				Database.releaseConnection(connection);
			}
		}

		return true;
	}

	static {
		queryAddUtente = "INSERT INTO gamespace.utente (eMail, Nome, Cognome, Password, Sesso) VALUES (?,?,?,?,?);";
		queryEliminaUtente = "DELETE FROM gamespace.utente WHERE eMail = ?";
		queryGetUtente = "SELECT * FROM gamespace.utente WHERE eMail=?";
		queryAddProdotto = "INSERT INTO commerce1.prodotto (idProdotto, Descrizione, Quantità, PrezzoSingolo, Tipo, Condizione, Nome, idUtente, Path) VALUES (?,?,?,?,?,?,?,?,?);";
		queryEliminaProdotto = "DELETE FROM gamespace.gioco WHERE IDGioco = ?";
		queryGetProdotti = "SELECT * FROM gamespace.gioco";
		queryGetMieiOrdini = "SELECT * FROM gamespace.ordine WHERE eMail = ?";
		queryCercaProdotto = "SELECT * FROM commerce1.prodotto WHERE Nome = ?";
		queryGetGiocoById ="SELECT * FROM gamespace.gioco WHERE IDGioco = ?";
		queryGetProdottoByUser ="SELECT * FROM commerce1.prodotto WHERE idUtente = ?";
		queryAddCarrello = "INSERT INTO gamespace.carrello (eMail, IDGioco) VALUES (?, ?)";
		queryAddOrdine = "INSERT INTO gamespace.ordine (IDOrdine, IDGioco, eMail, DataRicevuta, Pagamento, Stato, Prezzo) VALUES (?,?,?,?,?,?,?)";
		queryDelOrdine = "DELETE FROM Ordine WHERE IDOrdine = ?";
		queryGetCarrello = "SELECT * FROM gamespace.carrello WHERE eMail = ?";
		queryEliminaCarrello = "DELETE FROM gamespace.carrello WHERE eMail = ?";
		queryGetNumeroProdotto = "SELECT * FROM commerce1.carrello WHERE idUtente = ?";
		queryGetUtenti = "SELECT * FROM gamespace.utente";
		queryGetAdmin = "SELECT * FROM gamespace.admin WHERE eMail = ?";
		queryAddIndirizzo = "INSERT INTO gamespace.indirizzo (eMail, Via, Comune, Provincia, CAP, Telefono, Nominativo) VALUES (?,?,?,?,?,?,?)";
		queryGetIndirizzo = "SELECT * FROM gamespace.indirizzo WHERE eMail = ?";
		queryGetMaxIDOrdine = "SELECT IFNULL(MAX(IDOrdine), 0) AS MaxVal FROM gamespace.ordine";
	}

}

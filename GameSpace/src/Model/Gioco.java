package Model;

import java.util.Date;

public class Gioco {
	private int IDGioco;
	private String Titolo;
	private String Descrizione;
	private int Disponibilita;
	private Double Prezzo;
	private String Genere;
	private String Piattaforma;
	private int Rating;
	private String Cover;
	private Date DataRilascio;
	private String IDUtente;

	public Gioco(int iDGioco, String titolo, String descrizione, int disponibilita, Double prezzo, String genere,
			String piattaforma, int rating, String cover, Date dataRilascio, String iDUtente) {
		super();
		IDGioco = iDGioco;
		Titolo = titolo;
		Descrizione = descrizione;
		Disponibilita = disponibilita;
		Prezzo = prezzo;
		Genere = genere;
		Piattaforma = piattaforma;
		Rating = rating;
		Cover = cover;
		DataRilascio = dataRilascio;
		IDUtente = iDUtente;
	}

	public Gioco() {
		// TODO Auto-generated constructor stub
	}

	public int getIDGioco() {
		return IDGioco;
	}

	public void setIDGioco(int iDGioco) {
		IDGioco = iDGioco;
	}

	public String getTitolo() {
		return Titolo;
	}

	public void setTitolo(String titolo) {
		Titolo = titolo;
	}

	public String getDescrizione() {
		return Descrizione;
	}

	public void setDescrizione(String descrizione) {
		Descrizione = descrizione;
	}

	public int getDisponibilita() {
		return Disponibilita;
	}

	public void setDisponibilita(int disponibilita) {
		Disponibilita = disponibilita;
	}

	public Double getPrezzo() {
		return Prezzo;
	}

	public void setPrezzo(Double prezzo) {
		Prezzo = prezzo;
	}

	public String getGenere() {
		return Genere;
	}

	public void setGenere(String genere) {
		Genere = genere;
	}

	public String getPiattaforma() {
		return Piattaforma;
	}

	public void setPiattaforma(String piattaforma) {
		Piattaforma = piattaforma;
	}

	public int getRating() {
		return Rating;
	}

	public void setRating(int rating) {
		Rating = rating;
	}

	public String getCover() {
		return Cover;
	}

	public void setCover(String cover) {
		Cover = cover;
	}

	public Date getDataRilascio() {
		return DataRilascio;
	}

	public void setDataRilascio(Date dataRilascio) {
		DataRilascio = dataRilascio;
	}

	public String getIDUtente() {
		return IDUtente;
	}

	public void setIDUtente(String iDUtente) {
		IDUtente = iDUtente;
	}
}

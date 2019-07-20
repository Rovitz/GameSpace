package Model;

import java.util.List;

public class Ordine {
	private int IDOrdine;
	private List<Gioco> giochi = null;
	private Indirizzo indirizzo;
	private String eMail;
	private String DataRicevuta;
	private String Pagamento;
	private Double Prezzo;
	private String Stato;

	public Ordine () {}

	public Ordine(int IDOrdine, List<Gioco> giochi, String eMail, String pagamento, Double prezzo, String stato, String DataRicevuta) {
		this.IDOrdine = IDOrdine;
		this.giochi = giochi;
		this.eMail = eMail;
		this.DataRicevuta = DataRicevuta;
		Pagamento = pagamento;
		Prezzo = prezzo;
		Stato = stato;
	}


	public Indirizzo getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(Indirizzo indirizzo) {
		this.indirizzo = indirizzo;
	}

	public List<Gioco> getGiochi() {
		return giochi;
	}

	public void setGiochi(List<Gioco> giochi) {
		this.giochi = giochi;
	}

	public int getIDOrdine() {
		return IDOrdine;
	}
	public void setIDOrdine(int iDOrdine) {
		IDOrdine = iDOrdine;
	}

	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getDataRicevuta() {
		return DataRicevuta;
	}
	public void setDataRicevuta(String dataRicevuta) {
		DataRicevuta = dataRicevuta;
	}
	public String getPagamento() {
		return Pagamento;
	}
	public void setPagamento(String pagamento) {
		Pagamento = pagamento;
	}
	public Double getPrezzo() {
		return Prezzo;
	}
	public void setPrezzo(Double prezzo) {
		Prezzo = prezzo;
	}
	public String getStato() {
		return Stato;
	}
	public void setStato(String stato) {
		Stato = stato;
	}
}

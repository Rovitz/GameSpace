package Model;

import java.sql.Date;

public class Ordine {
	private int IDOrdine;
	private int IDGioco;
	private String eMail;
	private Date DataRicevuta;
	private String Pagamento;
	private String Indirizzo;
	private Double Prezzo;
	private String Stato;

	public Ordine () {}

	public Ordine(int iDOrdine, int iDGioco, String eMail, Date dataRicevuta, String pagamento, String indirizzo, Double prezzo, String stato) {
		IDOrdine = iDOrdine;
		IDGioco = iDGioco;
		this.eMail = eMail;
		DataRicevuta = dataRicevuta;
		Pagamento = pagamento;
		Indirizzo = indirizzo;
		Prezzo = prezzo;
		Stato = stato;
	}
	public int getIDOrdine() {
		return IDOrdine;
	}
	public void setIDOrdine(int iDOrdine) {
		IDOrdine = iDOrdine;
	}
	public int getIDGioco() {
		return IDGioco;
	}
	public void setIDGioco(int iDGioco) {
		IDGioco = iDGioco;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public Date getDataRicevuta() {
		return DataRicevuta;
	}
	public void setDataRicevuta(Date dataRicevuta) {
		DataRicevuta = dataRicevuta;
	}
	public String getPagamento() {
		return Pagamento;
	}
	public void setPagamento(String pagamento) {
		Pagamento = pagamento;
	}
	public String getIndirizzo() {
		return Indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		Indirizzo = indirizzo;
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

	@Override
	public String toString() {
		return "Ordine [IDOrdine=" + IDOrdine + ", IDGioco=" + IDGioco + ", eMail=" + eMail + ", DataRicevuta="
				+ DataRicevuta + ", Pagamento=" + Pagamento + ", Indirizzo=" + Indirizzo + ", Prezzo=" + Prezzo
				+ ", Stato=" + Stato + "]";
	}
}

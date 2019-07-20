package Model;

public class Indirizzo {

	private String eMail;
	private String Nominativo;
	private String Via;
	private String Comune;
	private String Provincia;
	private int CAP;
	private long Telefono;

	public Indirizzo() {}

	public Indirizzo(String eMail, String via, String comune, String provincia, int cap, long telefono, String nominativo) {
		this.eMail = eMail;
		Via = via;
		Comune = comune;
		Provincia = provincia;
		CAP = cap;
		Telefono = telefono;
		Nominativo = nominativo;
	}

	public String getNominativo() {
		return Nominativo;
	}

	public void setNominativo(String nominativo) {
		Nominativo = nominativo;
	}

	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getVia() {
		return Via;
	}
	public void setVia(String via) {
		Via = via;
	}
	public String getComune() {
		return Comune;
	}
	public void setComune(String comune) {
		Comune = comune;
	}
	public String getProvincia() {
		return Provincia;
	}
	public void setProvincia(String provincia) {
		Provincia = provincia;
	}
	public int getCAP() {
		return CAP;
	}
	public void setCAP(int cap) {
		CAP = cap;
	}
	public long getTelefono() {
		return Telefono;
	}
	public void setTelefono(long telefono) {
		Telefono = telefono;
	}
}

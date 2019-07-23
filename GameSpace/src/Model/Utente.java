

package Model;

public class Utente {

	private String email;
	private String Nome;
	private String Cognome;
	private String Password;
	private String Sesso;

	public Utente () {}

	public Utente(String mail, String nome, String cognome, String pass, String sesso) {
		super();
		this.email = mail;
		this.Nome = nome;
		this.Cognome = cognome;
		this.Password = pass;
		this.Sesso = sesso;
	}
	public Utente(String mail, String nome, String cognome, String pass) {
		super();
		this.email = mail;
		this.Nome = nome;
		this.Cognome = cognome;
		this.Password = pass;
		
	}
	
	@Override
	public String toString() {
		return "Utente [email=" + email + ", Nome=" + Nome + ", Cognome=" + Cognome + ", Password=" + Password + ", Sesso=" + Sesso + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getCognome() {
		return Cognome;
	}

	public void setCognome(String cognome) {
		Cognome = cognome;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getSesso() {
		return Sesso;
	}

	public void setSesso(String sesso) {
		Sesso = sesso;
	}
}
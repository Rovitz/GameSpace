CREATE SCHEMA gamespace;

use gamespace;

CREATE TABLE Utente(
	eMail VARCHAR(30) PRIMARY KEY NOT NULL,
	Nome VARCHAR(20) NOT NULL,
    Cognome VARCHAR(20) NOT NULL,
	Password VARCHAR(20) NOT NULL,
	Sesso VARCHAR(10) NOT NULL
						CHECK(VALUE='uomo' OR VALUE='donna')
    );
     
     
CREATE TABLE Gioco(
	IDGioco INTEGER PRIMARY KEY NOT NULL auto_increment,
	Prezzo DOUBLE NOT NULL,
	Disponibilita INT DEFAULT 0,
	Rating INT DEFAULT 1
						CHECK(Rating>=1 AND Rating<=5),
	Piattaforma VARCHAR(20) NOT NULL,
	Genere VARCHAR(20) NOT NULL,
	Titolo VARCHAR(20) NOT NULL,
	Descrizione VARCHAR(100),
	DataRilascio DATE ,
	Cover VARCHAR(30)
	);
     
     
CREATE TABLE Ordine(
	IDOrdine INTEGER PRIMARY KEY NOT NULL,
	DataRicevuta DATE NOT NULL,
	Prezzo DOUBLE NOT NULL,
	Stato VARCHAR(20) NOT NULL DEFAULT 'inoltrato'
						CHECK(VALUE='inoltrato' OR VALUE='completato'),
	IDUtente INTEGER REFERENCES Utente(IDUtente)
									ON UPDATE CASCADE
                                    ON DELETE CASCADE,
	IDGioco INTEGER REFERENCES Gioco(IDGioco)
									ON UPDATE CASCADE
                                    ON DELETE CASCADE
	);


     

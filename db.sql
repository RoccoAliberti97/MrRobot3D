create schema mrrobot3d;
use mrrobot3d;

CREATE TABLE `fattura` (
  `NumOrdine` int(11) NOT NULL AUTO_INCREMENT,
  `Utente` varchar(45) NOT NULL,
  `Prodotto` text NOT NULL,
  `Prezzo` decimal(7,2) NOT NULL,
  `Quantità` varchar(45) NOT NULL,
  `Data` date not null,
  PRIMARY KEY (`NumOrdine`)
);

CREATE TABLE `prodotto` (
  `CodProdotto` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Prezzo` decimal(7,2) NOT NULL,
  `Descrizione` text NOT NULL,
  `Quantità` int(11),
  PRIMARY KEY (`CodProdotto`)
);

CREATE TABLE `utente` (
  `NumIscrizione` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Cognome` varchar(45) NOT NULL,
  `Sesso` varchar(45) NOT NULL,
  `Indirizzo` varchar(45) NOT NULL,
  `PayPal` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Admin` bit(1),
  PRIMARY KEY (`NumIscrizione`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ;

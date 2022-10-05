package Panel;

public class Item {
	
	int id;
	String immagine;
	String nome;
	String descrizione;
	double prezzo;
	int quantità;	
	
	public Item() {		
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
		
	public String getImmagine() {		
		return immagine;
	}
	
	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}
	
	public String getNome() {		
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getDescrizione() {
		return descrizione;
	}
	
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	public double getPrezzo() {
		return prezzo;
	}
	
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public int getQuantità() {
		return quantità;
	}

	public void setQuantità(int quantità) {
		this.quantità = quantità;
	}
	
	
	@Override
	public boolean equals(Object o) {
		if ( ! ( o instanceof Item ) ) return false;
		Item i = (Item)o;
		return i.getDescrizione().equals(this.descrizione);
	}
	
	@Override
	public int hashCode() {
		return this.descrizione.hashCode();
	}

}

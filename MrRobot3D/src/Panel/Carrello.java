package Panel;

import java.util.ArrayList;

public class Carrello {
    
   ArrayList<Item> oggetti_carrello;
    
   public Carrello() {
           oggetti_carrello = new ArrayList<Item>();
   }
        
   public void aggiungi(Item oggetto) {
           oggetti_carrello.add(oggetto);
   }
   public void rimuovi(Item oggetto) {
           oggetti_carrello.remove(oggetto);
   }   
   public ArrayList<Item> getOggettiCarrello() {
           return oggetti_carrello;
   }

}
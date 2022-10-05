package Panel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/carrelloServlet")
public class CarrelloServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	Carrello carrello = new Carrello() ;
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	
	    	Connessione c = new Connessione();
	    	
	    	HttpSession session = request.getSession();
	    	String strLogin = (String) session.getAttribute("Email");
	    	if (strLogin == null)
	    	{
	    	response.setContentType("text/html");
	    	PrintWriter out = response.getWriter();
	    	out.println("Utente non registrato!");
	    	request.getRequestDispatcher("login.jsp").include(request, response);
	    	out.close();
	    	return;
	    	}    	
	    	
	    	Item oggetto = new Item();
	
	if (request.getParameter("azione").equals("Aggiungi al carrello")) {
    	
		int id = Integer.parseInt(request.getParameter("Id"));
		int q = Integer.parseInt(request.getParameter("Quantità"));
		
		try{
			
		
			Connection conn = c.getConnessione();
			
			PreparedStatement ps = conn.prepareStatement("SELECT prodotto.* \n"
		    		+ "FROM prodotto WHERE CodProdotto =" + id);
		    
		    ResultSet rs = ps.executeQuery();

		     while(rs.next()) {
		    	 
		    	 oggetto.setId(id);
		    	 oggetto.setImmagine(rs.getString("Immagine"));
		    	 oggetto.setNome(rs.getString("Nome"));
		         oggetto.setDescrizione(rs.getString("Descrizione"));
		         oggetto.setPrezzo(rs.getDouble("Prezzo"));
		         oggetto.setQuantità(q);
		     }
		     
		}catch(Exception e){
			System.out.println(e);
		}
		
		boolean b = false;
		@SuppressWarnings("unchecked")
        ArrayList<Item> contenuto_carrello = (ArrayList<Item>)(session.getAttribute("carrello"));
		if (contenuto_carrello != null){
			for (Item oggetto1 : contenuto_carrello){
				if (oggetto1.getId() == oggetto.getId()){
					b = true;
					oggetto1.quantità = oggetto1.quantità + oggetto.quantità;
					break;
				}
			}
			if (!b) {
				carrello.aggiungi(oggetto);
			}
		}
		else
			carrello.aggiungi(oggetto);
        
        request.getSession().setAttribute("carrello", carrello.getOggettiCarrello());
        response.sendRedirect("checkout.jsp");
	}
	 }
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
    	HttpSession session = request.getSession();
    	String strLogin = (String) session.getAttribute("Email");
    	if (strLogin == null)
    	{
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	out.println("Utente non registrato!");
    	request.getRequestDispatcher("login.jsp").include(request, response);
    	out.close();
    	return;
    	}    	
    	
    	Item oggetto = new Item();
    	
    	if (request.getParameter("rimuovi") != null && request.getParameter("rimuovi").equals("ok")) {
        	
        	int id = Integer.parseInt(request.getParameter("Id"));
        	@SuppressWarnings("unchecked")
			ArrayList<Item> contenuto_carrello = (ArrayList<Item>)(session.getAttribute("carrello"));
			if (contenuto_carrello!=null) {
		            for (Item ogg: contenuto_carrello) {
		            	if(ogg.getId()== id){
		            		
		             oggetto.setId(ogg.getId());
		             oggetto.setImmagine(ogg.getImmagine());
			    	 oggetto.setNome(ogg.getNome());
			         oggetto.setDescrizione(ogg.getDescrizione());
			         oggetto.setPrezzo(ogg.getPrezzo());
			         oggetto.setQuantità(ogg.getQuantità());
		            	}
			     }
			     
            carrello.rimuovi(oggetto);
            }
			request.getSession().setAttribute("carrello", carrello.getOggettiCarrello());
	        response.sendRedirect("checkout.jsp");
        }
    	
    }
}


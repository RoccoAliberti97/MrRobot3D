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

@WebServlet("/checkout")
public class Checkout extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
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
    	
    	if (request.getParameter("azione").equals("Ordina!")) {
    		
    		double p = Double.parseDouble(request.getParameter("Totale"));
    		int q = 0;
    		String utente = null;
    		String prodotto = null;
            
            
            try {  
    			
    			Connection conn = c.getConnessione();  
    			
    			PreparedStatement ut = conn.prepareStatement("SELECT * FROM utente\r\n" + 
    					"WHERE Email = \""+ strLogin +"\"");
    			
    			ResultSet rs = ut.executeQuery();
    			
    			while(rs.next()){
    				utente = rs.getString("Email");
    			}
    			
    			 @SuppressWarnings("unchecked")
    			 ArrayList<Item> contenuto_carrello = (ArrayList<Item>)(session.getAttribute("carrello"));
					if (contenuto_carrello!=null) {
						for(Item oggetto : contenuto_carrello)
				            
							
							if(prodotto == null) {
								prodotto = oggetto.getNome();
								q = oggetto.getQuantità();
							}
							else{	prodotto = prodotto + "-" + oggetto.getNome();
				            	q = q + oggetto.getQuantità();
							
				            }
					}
    			
    			PreparedStatement ps = conn.prepareStatement("insert into fattura (Utente, Prodotto, Prezzo, Quantità) "
    					+ "values(?,?,?,?)"); 
    			
    			ps.setString(1, utente);  
    			ps.setString(2, prodotto);     
    			ps.setDouble(3, p);
    			ps.setInt(4, q);
    			ps.executeUpdate();  
				           
					
					contenuto_carrello.removeAll(contenuto_carrello);
					
					
				            
    		} catch (Exception e2) {
    			System.out.println(e2);
    			} 
            session.removeAttribute("carrello");
            response.sendRedirect("carrello.jsp");  
        }
	}

}

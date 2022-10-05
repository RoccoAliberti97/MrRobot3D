package Panel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/catalog")
public class Catalog extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	Connessione c = new Connessione();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
    	
    	if (request.getParameter("azione").equals("Aggiungi Prodotto")) {
    		String n = request.getParameter("NomeA"); 
    		String d = request.getParameter("Descrizione");  
    		double p = Double.parseDouble(request.getParameter("Prezzo"));  
    		int q = Integer.parseInt(request.getParameter("Quantità"));
    		String i = request.getParameter("Immagine");
           	
		try {  
			
			Connection conn =  c.getConnessione();
			
			PreparedStatement ps=conn.prepareStatement("insert into prodotto (Nome, Descrizione, Prezzo, Quantità, Immagine) "
					+ "values(?,?,?,?,?)"); 
			
			ps.setString(1,n);  
			ps.setString(2,d);     
			ps.setDouble(3,p);
			ps.setInt(4,q);
			ps.setString(5,i);
			ps.executeUpdate();  
			
		} catch (Exception e2) {
			System.out.println(e2);
			} 
    	response.sendRedirect("catalogo.jsp");
    	
    	}
    	else if (request.getParameter("azione").equals("Modifica")) {
    		
    	 int id = Integer.parseInt(request.getParameter("Id"));
   		 String n = request.getParameter("NomeA"); 
   		 String d = request.getParameter("Descrizione");  
   		 double p = Double.parseDouble(request.getParameter("Prezzo"));  
   		 int q = Integer.parseInt(request.getParameter("Quantità"));
   		 
   		try{ 
			
			Connection connessione = c.getConnessione();
			
			PreparedStatement ps = connessione.prepareStatement("SELECT prodotto.* \n"
		    		+ "FROM prodotto WHERE CodProdotto = " + id);
		    
		    ResultSet rs = ps.executeQuery(); 
		    
		    if (rs.next()){
		    if (n==null || n.equals(rs.getString("Nome"))) {
		    	n = rs.getString("Nome");
		    }
		    
		    if (d==null || d.equals(rs.getString("Descrizione"))) {
		    	d = rs.getString("Descrizione");
		    }
		    
		    if (p == rs.getDouble("Prezzo")) {
		    	p = rs.getDouble("Prezzo");
		    }
		    
		    if (q == rs.getInt("Quantità")) {
		    	q = rs.getInt("Quantità");
		    }
		    }
		    
				    
			ps = connessione.prepareStatement("UPDATE prodotto \n "
					+ "SET Nome = \"" + n +"\", Descrizione = \""+ d +"\", Prezzo = "+ p +", Quantità = "+ q +" \n"
				    	+ "WHERE CodProdotto = "+ id);

			ps.executeUpdate();
			
				 } catch (Exception e2) {
						System.out.println(e2);
						} 
      
      String page = "catalogo.jsp";
      response.sendRedirect(page);
    		
    	}
    	out.close();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page;
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		
    	  if (request.getParameter("rimuovi") != null && request.getParameter("rimuovi").equals("ok")) {
    				
    		 int id = Integer.parseInt(request.getParameter("Id"));
    		 
    		 try{ 
    					
    			Connection connessione = c.getConnessione();
    				    
    			PreparedStatement ps=connessione.prepareStatement("DELETE FROM prodotto \n"
    				    	+ "WHERE CodProdotto = "+ id);
   
    			ps.executeUpdate();
    			
    				 } catch (Exception e2) {
    						System.out.println(e2);
    						} 
    		 
    		 out.print(id);
             
             page = "catalogo.jsp";
             response.sendRedirect(page);
             }
	}

}

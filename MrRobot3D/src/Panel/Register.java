package Panel;

import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;  
  
@WebServlet("/register")
public class Register extends HttpServlet {  
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Connessione conn = new Connessione();
	boolean a;
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page;
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		
    	  if (request.getParameter("rimuovi") != null && request.getParameter("rimuovi").equals("ok")) {
    				
    		 int id = Integer.parseInt(request.getParameter("Id"));
    		 
    		 try{ 
    					
    			Connection connessione = conn.getConnessione();
    				    
    			PreparedStatement ps=connessione.prepareStatement("DELETE FROM utente \n"
    				    	+ "WHERE NumIscrizione = "+ id);
   
    			ps.executeUpdate();
    			
    				 } catch (Exception e2) {
    						System.out.println(e2);
    						} 
    		 
    		 out.print(id);
             
             page = "utenti.jsp";
             response.sendRedirect(page);
    		 
    	  }
		
		out.close();  
}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		
		
		response.setContentType("application/json");  
		PrintWriter out = response.getWriter();
		
		if (request.getParameter("azione").equals("Registrati")) {			
		
		String n = request.getParameter("Nome"); 
		String c = request.getParameter("Cognome");  
		String s = request.getParameter("Sesso");  
		String i = request.getParameter("Indirizzo");  
		String pa = request.getParameter("PayPal");
		String e = request.getParameter("Email");  
		String p = request.getParameter("Password");
		String cp = request.getParameter("cpassword");
		
		try {  
			
			Connection connessione = conn.getConnessione(); 
			
			PreparedStatement ps = connessione.prepareStatement("SELECT * FROM utente WHERE Email = \""+ e +"\"");
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()){
					out.println("{ \"title\": \"Errore\", \"response\": \"Email già registrata!\" }");
				}
			
			else if(!p.equals(cp)) {
				out.println("{ \"title\": \"Errore\", \"response\": \"Le password non corrispondono!\" }");
			}
			else {
				
				out.println("{ \"title\": \"Successo\", \"response\": \"Utente registrato correttamente!\" }");
			
			ps = connessione.prepareStatement("insert into utente (Nome, Cognome, Sesso, Indirizzo, PayPal, Email, Password) "
					+ "values(?,?,?,?,?,?,?)"); 
			
			ps.setString(1,n);  
			ps.setString(2,c);  
			ps.setString(3,s);  
			ps.setString(4,i);  
			ps.setString(5,pa); 
			ps.setString(6,e); 
			ps.setString(7,p); 
			
			ps.executeUpdate(); 
			}
			
		
			   
		} catch (Exception e2) {
			System.out.println(e2);
			}  
		}
    	else if (request.getParameter("azione").equals("Modifica")) {
    		
       	 	 int id = Integer.parseInt(request.getParameter("Id"));
      		 String n = request.getParameter("Nome"); 
      		 String c = request.getParameter("Cognome");  
      		 String s = request.getParameter("Sesso");
      	     String i = request.getParameter("Indirizzo");
      	     String pa = request.getParameter("PayPal");
      	     String p = request.getParameter("Password");
      	     
      	     String so = request.getParameter("Admin");
      		try{ 
   			
   			Connection connessione = conn.getConnessione();
   			
   			PreparedStatement ps = connessione.prepareStatement("SELECT utente.* \n"
   		    		+ "FROM utente WHERE NumIscrizione = " + id);
   		    
   		    ResultSet rs = ps.executeQuery(); 
   		    
   		    if (rs.next()){
   		    if (n ==null || n.equals("") || n.equals(rs.getString("Nome"))) {
   		    	n = rs.getString("Nome");
   		    }
   		    
   		    if (c==null || c.equals("") || c.equals(rs.getString("Cognome"))) {
   		    	c = rs.getString("Cognome");
   		    }
   		    
   		    if (s==null || s.equals("") || s.equals(rs.getString("Sesso"))) {
		    	s = rs.getString("Sesso");
		    }
   		
   		    if (i==null || i.equals("") || i.equals(rs.getString("Indirizzo"))) {
		    	i = rs.getString("Indirizzo");
		    }
   		
   		    if (pa==null || pa.equals("") || pa.equals(rs.getString("PayPal"))) {
		    	pa = rs.getString("PayPal");
		    }
   		
   		    if (p==null || p.equals("") || p.equals(rs.getString("Password"))) {
		    	p = rs.getString("Password");
		    }
   		   
   		    if (so.equals("on")) {
    		    	a = true;
    		    }
   		    else if (so.equals("off")){
   		    	a = false;
   		    }
   		    }
   		    
   				    
   			ps = connessione.prepareStatement("UPDATE utente \n "
   					+ "SET Nome = \"" + n +"\", Cognome = \""+ c +"\", Sesso = \""+ s +"\", Indirizzo = \""+ i +"\", PayPal = \""+ pa + "\", Password = \""+ p +"\", Admin = "+ a +" \n"
   				    	+ "WHERE NumIscrizione = "+ id);

   			ps.executeUpdate();
   			
   				 } catch (Exception e2) {
   						System.out.println(e2);
   						} 
         
         String page = "utenti.jsp";
         response.sendRedirect(page);
       		
       	}
    	else if (request.getParameter("azione").equals("Aggiorna")) {
    		
      	 	 int id = Integer.parseInt(request.getParameter("Id"));
     	     String i = request.getParameter("Indirizzo");
     	     String pa = request.getParameter("PayPal");
     	     String p = request.getParameter("Password");
     		try{ 
  			
  			Connection connessione = conn.getConnessione();
  			
  			PreparedStatement ps = connessione.prepareStatement("SELECT utente.* \n"
  		    		+ "FROM utente WHERE NumIscrizione = " + id);
  		    
  		    ResultSet rs = ps.executeQuery(); 
  		    
  		    if (rs.next()){
  		
  		    if (i==null || i.equals("") || i.equals(rs.getString("Indirizzo"))) {
		    	i = rs.getString("Indirizzo");
		    }
  		
  		    if (pa==null || pa.equals("") || pa.equals(rs.getString("PayPal"))) {
		    	pa = rs.getString("PayPal");
		    }
  		
  		    if (p==null || p.equals("") || p.equals(rs.getString("Password"))) {
		    	p = rs.getString("Password");
		    }
  		    }
  		    
  				    
  			ps = connessione.prepareStatement("UPDATE utente \n "
  					+ "SET Indirizzo = \""+ i +"\", PayPal = \""+ pa + "\", Password = \""+ p +"\", Admin = "+ a +" \n"
  				    	+ "WHERE NumIscrizione = "+ id);

  			ps.executeUpdate();
  			
  				 } catch (Exception e2) {
  						System.out.println(e2);
  						} 
     		String page = "profilo.jsp";
            response.sendRedirect(page);
		}
			
		out.close();  
}  
	
	@SuppressWarnings("unused")
	private int checkPassword(String p) {
	    // The result represent in binary the checks passed.
	    // The less significant bit is length check, the second is lower case letter,
	    // the third is upper case letter, the most significant is the number check
	    int n=0;
	    int i;
	    if(p.length()>=8) {
	    	for(i=0;i<p.length() && n<1;i++) {
	    		char ch = p.charAt(i);
	    		if(Character.isLowerCase(ch))
	    			n++;
	    	}
	    	if(n>0) {
		    	for(i=0;i<p.length() && n<2;i++) {
		    		char ch = p.charAt(i);
		    		if(Character.isUpperCase(ch))
		    			n++;
		    	}
		    	if(n>1) {
			    	for(i=0;i<p.length() && n<3;i++) {
			    		char ch = p.charAt(i);
			    		if(ch>='0' && ch<='9')
			    			n++;
			    	}
			    	if(n>2)
			    		n=4;
		    	}
	    	}
	    }
	    else n=-1;
	    return n;
	}	
  
} 
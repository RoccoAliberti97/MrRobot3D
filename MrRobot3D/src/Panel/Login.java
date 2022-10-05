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
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connessione c = new Connessione();
		
		response.setContentType("application/json"); 
		PrintWriter out = response.getWriter();  
		
		String e=request.getParameter("Email"); 
		String p=request.getParameter("Password"); 
		
		try {  
			 
			Connection conn = c.getConnessione();  
			
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM utente WHERE Email = \""+ e +"\"");
			
			ResultSet rs = ps.executeQuery(); 
			
			 if (rs.next()){
			        if(rs.getString("Password").equals(p)){
			        	HttpSession session = request.getSession();
						String strLogin = request.getParameter("Email");
						String nome = rs.getString("Nome");
						boolean a = rs.getBoolean("Admin");
						session.setAttribute("Email", strLogin);
						session.setAttribute("Admin", a);  
						session.setAttribute("Nome", nome);
			            out.println("{ \"title\": \"Successo\", \"response\": \"Benvenuto!\" }");
			        }
			 
			        else
			            out.println("{ \"title\": \"Errore\", \"response\": \"La password non corrisponde!\" }");
			 }
			 else
	            out.println("{ \"title\": \"Errore\", \"response\": \"Email non trovata!\" }");

		} catch (Exception e2) {
			System.out.println(e2);
			}  
		
		out.close();  
		}

}

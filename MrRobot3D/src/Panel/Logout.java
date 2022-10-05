package Panel;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/logout")
public class Logout extends HttpServlet {
 
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		  response.setContentType("text/html");  
          PrintWriter out=response.getWriter(); 
            
          HttpSession session = request.getSession();  
          session.invalidate();  
          
          request.getRequestDispatcher("index.jsp").include(request, response); 
          out.close();  
    }
}
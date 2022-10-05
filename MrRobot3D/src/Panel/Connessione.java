package Panel;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class Connessione {
	
	public Connessione () {
		
	}
	
	public Connection getConnessione() {
		
		Connection conn = null;
		try{
		Class.forName("com.mysql.jdbc.Driver");  
		conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mrrobot3d","root","root");
		
		}catch(Exception e){
			System.out.println(e);
		}
		
		return conn;
	}

}

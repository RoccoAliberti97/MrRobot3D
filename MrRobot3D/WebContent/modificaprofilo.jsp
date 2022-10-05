<%@ page errorPage="../errors/failure.jsp"%>
<%@ page session="true"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page import="Panel.Connessione"%>
<%
Connessione c = new Connessione();
%>
<html>
<head>
<title>Admin Mr.Robot3D</title>
<!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- for fontawesome icon css file -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- superslides css -->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- for content animate css file -->
    <link rel="stylesheet" href="css/animate.css">    
    <!-- slick slider css file -->
    <link href="css/slick.css" rel="stylesheet">        
    <!-- website theme color file -->   
     <link id="switcher" href="css/themes/cyan-theme.css" rel="stylesheet">    
    <!-- main site css file -->    
    <link href="css/style.css" rel="stylesheet" type="text/css">    
    <!-- google fonts  -->  
    <link href="css/cyrillic.css" rel="stylesheet" type="text/css">    
    <link href="css/latin.css" rel="stylesheet" type="text/css">  
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
</head>
<body>

<%@ include file="../fragments/navbar.jsp"  %>

 <section id="imgbanner">  
    <h2>Profilo</h2>     
  </section>
		
			<div id="main" class="clear">
				
					<form action="register" method="post">
						<table>
						<%
						int id = Integer.parseInt(request.getParameter("Id"));
						
						Connection connessione = c.getConnessione();
						
					    PreparedStatement ps=connessione.prepareStatement("SELECT utente.* \n"
					    		+ "FROM utente WHERE NumIscrizione = " + id);
					    
					    ResultSet rs = ps.executeQuery();

					     while(rs.next()) { %>
						<tr><td>
						<label for="Nome">Nome:</label>
						</td><td>
							<%= rs.getString("Nome") %>
						</td></tr>
						<tr><td>
							<label for="Cognome">Cognome:</label>
						</td><td>
							<%= rs.getString("Cognome") %>
						</td></tr>
						<tr><td>
						<label for="Sesso">Sesso:</label>
						</td><td>
							<%= rs.getString("Sesso") %>
						</td></tr>
							<tr><td>
							<label for="Indirizzo">Indirizzo:</label>
						</td><td>
							<input type="text" name="Indirizzo" value="<%= rs.getString("Indirizzo") %>">
						</td></tr>
						<tr><td>
						<label for="PayPal">Pay-Pal:</label>
						</td><td>
							<input type="text" name="PayPal" value="<%= rs.getString("PayPal") %>">
						</td></tr>
						<tr><td>
							<label for="Password">Password:</label>
						</td><td>
							<input type="text" name="Password" value="<%= rs.getString("Password") %>">
						</td></tr>
						<tr><td colspan="2">
							<input type="hidden" name="Id" value="<%= id %>">
							<input type="submit" name="azione" value="Aggiorna" style="width:100%"/>
						</td></tr>
						<%
						}
						connessione.close();
						%>
					</table>
  
			</form>  
		
			</div>
			<%@ include file="../fragments/footer.jsp" %>

</body>
</html>
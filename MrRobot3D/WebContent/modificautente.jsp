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
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/default.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/admin.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     
     </head>

<body>	

			<%@ include file="../admin/fragments/header.jsp" %>
			<%@ include file="../admin/fragments/menu.jsp" %>
		
			<div id="main" class="clear">
				
					<p>Modifica un utente:</p>
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
							<input type="text" name="Nome" value="<%= rs.getString("Nome") %>"/>
						</td></tr>
						<tr><td>
							<label for="Cognome">Cognome:</label>
						</td><td>
							<input type="text" name="Cognome" value="<%= rs.getString("Cognome") %>">
						</td></tr>
						<tr><td>
						<label for="Sesso">Sesso:</label>
						</td><td>
							<input type="radio" name="Sesso" value="M">M
							<input type="radio" name="Sesso" value="F">F
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
							<input type="text" name="Password" value="<%= rs.getString("Nome") %>">
						</td></tr>
						<tr><td>
							<label for="Password">Diritti:</label>
						</td><td>
							<input type="checkbox" name="Admin">
						</td></tr>
						<tr><td colspan="2">
							<input type="hidden" name="Id" value="<%= id %>">
							<input type="submit" name="azione" value="Modifica" style="width:100%"/>
						</td></tr>
						<%
						}
						connessione.close();
						%>
					</table>
  
			</form>  
		
			</div>

</body>
</html>
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
		<p>Utenti:</p>
		<form action="register" method="post">
				<table class="formdata">
					<tr>
						<th style="width: 33%">ID</th>
						<th style="width: 33%">Nome</th>
						<th style="width: 33%">Cognome</th>
						<th style="width: 33%">Sesso</th>
						<th style="width: 33%">Indirizzo</th>
						<th style="width: 33%">PayPal</th>
						<th style="width: 33%">Email</th>
						<th style="width: 33%">Password</th>
						<th style="width: 33%">Diritti</th>
						<th style="width: 25%"></th>
					</tr>
					<%  
					
					Connection connessione = c.getConnessione();
					
				    PreparedStatement ps=connessione.prepareStatement("SELECT utente.* \n"
				    		+ "FROM utente");
				    
				    ResultSet rs = ps.executeQuery();

				     while(rs.next()) {
				    	 %> 
							
							
							<tr>
								<td><%= rs.getInt("NumIscrizione") %></td>
								<td><%= rs.getString("Nome") %></td>
								<td><%= rs.getString("Cognome")%></td>
								<td><%= rs.getString("Sesso")%></td>
								<td><%= rs.getString("Indirizzo")%></td>
								<td><%= rs.getString("Paypal")%></td>
								<td><%= rs.getString("Email")%></td>
								<td><%= rs.getString("Password")%></td>
								<td><%= rs.getBoolean("Admin")%></td>
								<td>
									<input type="hidden" name="Id" value="<%= rs.getInt("NumIscrizione") %>"/>
									<a href="modificautente.jsp?aggiorna=ok&Id=<%= rs.getInt("NumIscrizione") %>"><input type="button" value="Aggiorna"></a>
									<a href="register?rimuovi=ok&Id=<%= rs.getInt("NumIscrizione") %>"><input type="button" value="Rimuovi"></a>
								</td>
							</tr>
						<% } 
						connessione.close(); %>
					</table>
					</form>		
			
		</div>
	</body>
</html>

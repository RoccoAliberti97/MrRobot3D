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
			
			<%
					String descrizione = request.getParameter("Descrizione");
					String nome = request.getParameter("NomeA");
		
					if ( descrizione != null && ! descrizione.equals("") ) {

						if ( descrizione.contains(" ") ) {
							throw new Exception("La descrizione non può essere vuota!"); 					
						}
					}
				%>
				
				
				<div id="up" style="float: up; border-down: 1px solid grey">
				
					<p>Aggiungi un prodotto al catalogo:</p>
					<form action="catalog" method="post">
						<table>
							<tr><td>
							<label for="Nome">Nome:</label>
							</td><td>
								<input type="text" name="NomeA" required placeholder="inserire nome">
							</td></tr>
							<tr><td>
								<label for="Descrizione">Descrizione:</label>
							</td><td>
								 <textarea name="Descrizione" rows="3" cols="20" required placeholder="inserire descrizione" style="margin: 0px;border-style: ridge;width: 240px;height: 69px;"></textarea> 
							</td></tr>
							<tr><td>
								<label for="Prezzo">Prezzo (&#8364;):</label>
							</td><td>
								<input type="text" name="Prezzo" required placeholder="inserire prezzo">
							</td></tr>
							<tr><td>
								<label for="Quantità">Quantità:</label>
							</td><td>
								<input type="number" name="Quantità" min="1">
							</td></tr>
							<tr><td>
								<label for="Immagine">Immagine:</label>
							</td><td>
								<input type="file" name="Immagine">
							</td></tr>
							<tr><td colspan="2">
								<input type="submit" name="azione" value="Aggiungi Prodotto" style="width:100%"/>
							</td></tr>
						</table>
					</form>
			
				</div>
				
				<div id="down" style="float: down;">

					<p>Catalogo:</p>
					<form action="catalog" method="post">
					<table class="formdata">
						<tr>
							<th style="width: 5%">ID</th>
							<th style="width: 10%">Immagine</th>
							<th style="width: 31%">Nome</th>
							<th style="width: 31%">Descrizione</th>
							<th style="width: 31%">Prezzo</th>
							<th style="width: 31%">Quantità disponibile</th>
							<th style="width: 7%"></th>
						</tr>
						<%  
						
						Connection connessione = c.getConnessione();
						
					    PreparedStatement ps=connessione.prepareStatement("SELECT prodotto.* \n"
					    		+ "FROM prodotto");
					    
					    ResultSet rs = ps.executeQuery();

					     while(rs.next()) {
						%> 
						
						
							<tr>
								<td><%= rs.getInt("CodProdotto") %></td>
								<td><img src="<%=request.getContextPath()%>/images/<%= rs.getString("Immagine") %>" style="width: 100px"></td>
								<td><%= rs.getString("Nome") %></td>
								<td><%= rs.getString("Descrizione")%></td>
								<td><%= rs.getDouble("Prezzo") %> &#8364;</td>
								<td><%= rs.getInt("Quantità") %></td>
								<td>
									<input type="hidden" name="Id" value="<%= rs.getInt("CodProdotto") %>">
									<a href="modifica.jsp?aggiorna=ok&Id=<%= rs.getInt("CodProdotto") %>"><input type="button" value="Aggiorna"></a>
									<a href="catalog?rimuovi=ok&Id=<%= rs.getInt("CodProdotto") %>"><input type="button" value="Rimuovi"></a>
								</td>
							</tr>
						<% } 
						connessione.close(); %>
					</table>
					</form>			
				</div>
			
			</div>
		</body>
	</html>

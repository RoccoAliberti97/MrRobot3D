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
					} %>
				
					<p>Modifica un prodotto del catalogo:</p>
					<form action="catalog" method="post">
						<table>
						<%
						int id = Integer.parseInt(request.getParameter("Id"));
						
						Connection connessione = c.getConnessione();
						
					    PreparedStatement ps=connessione.prepareStatement("SELECT prodotto.* \n"
					    		+ "FROM prodotto WHERE CodProdotto = " + id);
					    
					    ResultSet rs = ps.executeQuery();

					     while(rs.next()) { %>
							<tr><td>
							<label for="Nome">Nome:</label>
							</td><td>
								<input type="text" name="NomeA" value="<%= rs.getString("Nome") %>">
							</td></tr>
							<tr><td>
								<label for="Descrizione">Descrizione:</label>
							</td><td>
								<textarea name="Descrizione" rows="3" cols="20" style="margin: 0px;border-style: ridge;width: 240px;height: 69px;"></textarea> 
							</td></tr>
							<tr><td>
								<label for="Prezzo">Prezzo (&#8364;):</label>
							</td><td>
								<input type="text" name="Prezzo" value="<%= rs.getString("Prezzo") %>">
							</td></tr>
							<tr><td>
								<label for="Quantità">Quantità:</label>
							</td><td>
								<input type="number" name="Quantità" value="<%= rs.getInt("Quantità") %>">
							</td></tr>
							<tr><td colspan="2">
								<input type="hidden" name="Id" value="<%= id %>">
								<input type="submit" name="azione" value="Modifica" style="width:100%"/>
							</td></tr>
							<%}
					     connessione.close();
					     %>
						</table>
					</form>
			
				</div>

</body>
</html>
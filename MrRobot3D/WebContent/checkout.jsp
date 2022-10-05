<%@page import="java.util.ArrayList"%>
<%@ page import="Panel.Item"%>

<html>
	<head>
		<title>Mr.Robot3D</title>

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
    <link href='css/cyrillic.css' rel="stylesheet" type="text/css">    
    <link href="css/latin.css" rel="stylesheet" type="text/css">  
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">  
  
  
  </head>
<body> 

<%@ include file="../fragments/navbar.jsp"  %>

  <!-- start banner area -->
  <section id="imgbanner">  
    <h2>Carrello</h2>     
  </section>
  <!-- End banner area -->
		
		<div id="main" class="clear">
		<p>Contenuto carrello:</p>
		<form action="checkout" method="post">
				<table class="formdata">
					<tr>
						<th style="widht: 20%"></th>
						<th style="width: 15%">Nome</th>
						<th style="width: 80%">Descrizione</th>
						<th style="width: 20%">Prezzo</th>
						<th style="width: 20%">Ordine</th>
						<th style="width: 20%"></th>
					</tr>
					<%  
					@SuppressWarnings("unchecked")
				        ArrayList<Item> contenuto_carrello = (ArrayList<Item>)(session.getAttribute("carrello"));
					double total = 0;
					int n = 0;
					if (contenuto_carrello!=null) {
				            for (Item oggetto: contenuto_carrello) {
				    %>
				    
					<tr>
						<td><img src="<%=request.getContextPath()%>/images/<%= oggetto.getImmagine() %>" style="width: 100px;"/>
						<td><% out.print(oggetto.getNome()); %></td>
						<td><% out.print(oggetto.getDescrizione()); %></td>
						<td><% out.print(oggetto.getPrezzo()); %> &#8364;</td>
						<td><% out.print(oggetto.getQuantità()); %></td>
						<td>
							<input type="hidden" name="NomeA" value="<% out.print(oggetto.getNome()); %>"/>
							<input type="hidden" name="Descrizione" value="<% out.print(oggetto.getDescrizione()); %>"/>
							<input type="hidden" name="Prezzo" value="<% out.print(oggetto.getPrezzo()); %>"/>
							<input type="hidden" name="Quantità" value="<% out.print(oggetto.getQuantità()); %>"/>
							<a href="carrelloServlet?rimuovi=ok&Id=<%= oggetto.getId() %>"><input type="button" value="Rimuovi"></a>
								
						</td>
					</tr>
					
					<% 
					n = oggetto.getQuantità();
					total = total + n * oggetto.getPrezzo();
					} 
				        }
					
					%>				
				</table>
				

				
				
				Total: <span style="font-size: x-large; color: red;"><%= total %> &#8364;</span>
				<input type="hidden" name="Totale" value="<%= total %>">
				<input type="submit" name="azione" value="Ordina!" onclick="Ordina()">
				<a href="<%=request.getContextPath()%>/carrello.jsp"><input type="button" value="Torna allo shopping"/></a>
				</form>
			
			<script type="text/javascript">
				function Ordina() {
					alert ("Prodotto ordinato con successo!");
					}
				</script>
				</div>
					<%@ include file="../fragments/footer.jsp" %>
					

	</body>
</html>

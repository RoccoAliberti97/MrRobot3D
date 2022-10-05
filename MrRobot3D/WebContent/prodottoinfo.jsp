<%@ page import="Panel.Connessione"%>
<%@ page language="java" import="java.sql.*"%>

<html>
<head >
	<title>Dettagli prodotto</title>
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
<%
Connessione c = new Connessione();

int id = Integer.parseInt(request.getParameter("id"));

Connection connessione =  c.getConnessione();
					
				    PreparedStatement ps = connessione.prepareStatement("SELECT prodotto.* \n"
				    		+ "FROM prodotto WHERE CodProdotto = "+ id);
				    
				    ResultSet rs = ps.executeQuery();

				     if(rs.next()) {	%>
				     				

<section id="imgbanner2">
<h1><%= rs.getString("Nome") %></h1>
</section>

<div id="main" class="clear" style="height: 110%;">

<div id="left" style="float: left; width: 40%; margin-top: 20px; margin-left: 15%">
				<div class="product media">
			<img src="<%=request.getContextPath()%>/images/<%= rs.getString("Immagine") %>" style="width: 500px;">
		</div>    
		</div>
                    
			<div id="right" style="float: right; width: 40%;">
			<form action="carrelloServlet" method="post">
			<h1>DESCRIZIONE:</h1>
			<p><%= rs.getString("Descrizione") %></p>
				
				<h3>Prezzo:</h3>
				        <p><%= rs.getDouble("Prezzo") %> &euro;</p>   
				                                              
           			 			
           			 			
           			 			
           			 					<label for="Quantità">Quantità:</label>
							<input type="hidden" name="Id" value="<%= rs.getInt("CodProdotto") %>"/>
								<input type="number" name="Quantità" min="1"/>
							
						                <input type="submit" name="azione" value="Aggiungi al carrello"/>
		
		</form>
              	</div>
            

<%}
				     connessione.close();%>


</div>   

<%@ include file="../fragments/footer.jsp"%>

</body>
</html>


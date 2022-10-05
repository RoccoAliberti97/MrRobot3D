<%@ page errorPage="../errors/failure.jsp"%>
<%@ page session="true"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page import="Panel.Connessione"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="Panel.Item"%>
<%
Connessione c = new Connessione();
%>

<html>
<head>
	<title>Profilo</title>
	
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
    
<div class="page-wrapper">

<%@ include file="../fragments/navbar.jsp"  %>

  <!-- start banner area -->
  <section id="imgbanner">  
    <h2>Profilo</h2>     
  </section>

<div class="columns">
<%  session = request.getSession();
	String e = (String) session.getAttribute("Email");
    if (e == null){
%>
<%}else{ %>
		<div class="main">
	<%
	Connection connessione = c.getConnessione();
					
				    PreparedStatement ps=connessione.prepareStatement("SELECT utente.* \n"
				    		+ "FROM utente WHERE Email = \""+ e +"\"");
				    
				    ResultSet rs = ps.executeQuery();

				     while(rs.next()) {%>
	
	<!--  ACCOUNT INFORMATION -->
	<div class="block block-dashboard-info">
    	<div class="block-content">
        	<div class="box box-information">
	            <strong class="box-title">
	            </strong>
	            <div class="box-content">
	                <p>
	                  <label>Nome:</label>  <% out.println(rs.getString("Nome")); %> <br>
	                 <label> Cognome: </label>  <% out.println(rs.getString("Cognome")); %><br>
	                 <label> Email: </label> <% out.println(rs.getString("Email")); %><br>
	               <label>   Sesso: </label> <%out.println(rs.getString("Sesso")); %> <br>
	                <label>  Indirizzo:</label> <%out.println(rs.getString("Indirizzo")); %> <br>
	                <label>  PayPal:</label> <%out.println(rs.getString("PayPal"));%> <br>
	                <label>  Password:</label> <%out.println(rs.getString("Password"));%> <br>
	                  
	                  <a href="modificaprofilo.jsp?aggiorna=ok&Id=<%= rs.getInt("NumIscrizione") %>"><input type="button" value="Modifica"></a>
	                  </p>
	            </div>
        	</div>
       </div>
 	</div>
</div>
<%} connessione.close();   %>
</div>

<h1>Carrello</h1>
<%
@SuppressWarnings("unchecked")
ArrayList<Item> contenuto_carrello = (ArrayList<Item>)(session.getAttribute("carrello"));
if (contenuto_carrello!=null) {
				            for (Item oggetto: contenuto_carrello) {%>
<ul class="team_nav">

<li>
<div class="team_img">
     <img src="<%=request.getContextPath()%>/images/<%= oggetto.getImmagine() %>" alt="team-img">
    </div>
    <div class="team_content">
     <h4 class="team_name"><%= oggetto.getNome() %></h4>
     <p>EURO <%= oggetto.getPrezzo() %> &#8364;</p>
    </div>
</li>
</ul>
</div>
<% } } } %>
<%@ include file="../fragments/footer.jsp" %>

</body>
</html>
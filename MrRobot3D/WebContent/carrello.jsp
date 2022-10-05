<%@page import="java.util.ArrayList"%>
<%@ page errorPage="../errors/failure.jsp"%>
<%@ page session="true"%>
<%@ page import="Panel.Item"%>
<%@ page import="Panel.Connessione"%>
<%@ page language="java" import="java.sql.*"%>
<%
Connessione c = new Connessione();
%>
<html>
<head>
<title>Mr. Robot 3D: Catalogo</title>

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

  <section id="imgbanner">  
    <h2>Catalogo</h2>     
  </section>
  
  <section id="blogArchive">
	
		<div id="main" class="clear">	
		<div class="team_title">
              <hr>
              <h2>Seleziona un prodotto:</h2>
            </div>
		<form action="carrelloServlet" method="post">
		<%
				Connection connessione =  c.getConnessione();
					
				    PreparedStatement ps = connessione.prepareStatement("SELECT prodotto.* \n"
				    		+ "FROM prodotto");
				    
				    ResultSet rs = ps.executeQuery();

				     while(rs.next()) {	%>
			 
			
			
			 
             
		<div id="left" style="float: left; width: 110%;">		    
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="team">
            
              <ul class="team_nav">
             
              <li>
              <div class="team_img">
                   <a href="<%=request.getContextPath()%>/prodottoinfo.jsp?id=<%= rs.getInt("CodProdotto")%>"><img src="<%=request.getContextPath()%>/images/<%= rs.getString("Immagine") %>" alt="team-img">
                 </a> </div>
                  <div class="team_content">
                   <a href="<%=request.getContextPath()%>/prodottoinfo.jsp?id=<%= rs.getInt("CodProdotto")%>"> <h4 class="team_name"><%= rs.getString("Nome") %></h4>
                   </a> <p>EURO <%= rs.getDouble("Prezzo") %> &#8364;</p>
                  </div>
              </li>
              <%if(rs.next()) {%>
                <li>
                  <div class="team_img">
                   <a href="<%=request.getContextPath()%>/prodottoinfo.jsp?id=<%= rs.getInt("CodProdotto")%>"> <img src="<%=request.getContextPath()%>/images/<%= rs.getString("Immagine") %>" alt="team-img">
                 </a> </div>
                  <div class="team_content">
                   <a href="<%=request.getContextPath()%>/prodottoinfo.jsp?id=<%= rs.getInt("CodProdotto")%>"> <h4 class="team_name"><%= rs.getString("Nome") %></h4>
                    </a><p>EURO <%= rs.getDouble("Prezzo") %> &#8364;</p>
                  </div>
                </li>
                <%} if(rs.next()) { %>
               	<li>
                  <div class="team_img">
                <a href="<%=request.getContextPath()%>/prodottoinfo.jsp?id=<%= rs.getInt("CodProdotto")%>"><img src="<%=request.getContextPath()%>/images/<%= rs.getString("Immagine") %>" alt="team-img">
                 </a> </div>
                  <div class="team_content">
                  <a href="<%=request.getContextPath()%>/prodottoinfo.jsp?id=<%= rs.getInt("CodProdotto")%>"><h4 class="team_name"><%= rs.getString("Nome") %></h4>
                  </a>  <p>EURO <%= rs.getDouble("Prezzo") %> &#8364;</p>
                  </div>
                </li>
                <%} if(rs.next()) {%>
                <li>
                  <div class="team_img">
                  <a href="<%=request.getContextPath()%>/prodottoinfo.jsp?id=<%= rs.getInt("CodProdotto")%>">  <img src="<%=request.getContextPath()%>/images/<%= rs.getString("Immagine") %>" alt="team-img">
                 </a> </div>
                  <div class="team_content">
                 <a href="<%=request.getContextPath()%>/prodottoinfo.jsp?id=<%= rs.getInt("CodProdotto")%>"><h4 class="team_name"><%= rs.getString("Nome") %></h4>
                  </a>  <p>EURO <%= rs.getDouble("Prezzo") %> &#8364;</p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
      </div>
     
    </div>
     </form>
     </div>
    
    
    <%} }
				     connessione.close();
				     %>
		</section>
		
		<%@ include file="../fragments/footer.jsp"%>

	</body>
</html>

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
	</head>

	<body>	

		<%@ include file="../admin/fragments/header.jsp" %>
		<%@ include file="../admin/fragments/menu.jsp" %>
		
		<div id="main" class="clear">
		<div class="container-fluid">
		<%  
						
						Connection connessione = c.getConnessione();
						
					    PreparedStatement ps=connessione.prepareStatement("SELECT COUNT(*) FROM utente;");
					    
					    ResultSet rs = ps.executeQuery();

					     while(rs.next()) {
						%> 
                <div class="row">
                    <div class="col">
                        <div class="card">
                            <div class="card-body text-center">
                                <h2 class="card-title"><i class="fa fa-users fa-3x"></i>
                                </h2>
                                <h5 class="card-subtitle mb-2 text-muted"><%= rs.getInt(1) %></h5>
                                <p class="card-text">Users</p>
                            </div>
                        </div>
                    </div>
                    <% } 
					     ps=connessione.prepareStatement("SELECT COUNT(*) FROM prodotto;");
						    
						    rs = ps.executeQuery();
						    
						    while(rs.next()) {
						 %>
                    <div class="col">
                        <div class="card">
                            <div class="card-body text-center">
                                <h2 class="card-title"><i class="fa fa-shopping-basket fa-3x"></i></h2>
                                <h5 class="card-subtitle mb-2 text-muted"><%= rs.getInt(1) %></h5>
                                <p class="card-text">Products</p>
                            </div>
                        </div>
                    </div>
                    <% } 
					     ps=connessione.prepareStatement("SELECT COUNT(*) FROM fattura;");
						    
						    rs = ps.executeQuery();
						    
						    while(rs.next()) {
						 %>
                <div class="row">
                    <div class="col">
                        <div class="card">
                            <div class="card-body text-center">
                                <h2 class="card-title"><i class="fa fa-cubes fa-3x"></i></h2>
                                <h5 class="card-subtitle mb-2 text-muted">${model.doRetrieveByNumber("`order`")}</h5>
                                <p class="card-text">Orders</p>
                            </div>
                        </div>
                    </div>
                    <% } 
					    connessione.close();
						 %>
                </div>
           </div>
        </div>
        </div>
</body>
</html>

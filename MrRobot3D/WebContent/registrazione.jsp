<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page errorPage="../errors/failure.jsp"%>
<%@ page session="true"%>
<html>
<head>
<title>Registrazione</title>
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
    <h2>Registrazione</h2>     
  </section>
  <!-- End banner area -->
	
		 <div id="reg" class="clear">
		 		
				<div id="left" style="float: left; width: 48%;">
				
				<form action="register" method="post">  
				<table>
						<tr><td>
						<label for="Nome">Nome:</label>
						</td><td>
							<input type="text" name="Nome" required placeholder="inserire nome">
						</td></tr>
						<tr><td>
							<label for="Cognome">Cognome:</label>
						</td><td>
							<input type="text" name="Cognome" required placeholder="inserire cognome">
						</td></tr>
						<tr><td>
						<label for="Sesso">Sesso:</label>
						</td><td>
							<input type="radio" name="Sesso" value="M" required>M
							<input type="radio" name="Sesso" value="F" required>F
						</td></tr>
							<tr><td>
							<label for="Indirizzo">Indirizzo:</label>
						</td><td>
							<input type="text" name="Indirizzo" required placeholder="inserire l'indirizzo">
						</td></tr>
						<tr><td>
						<label for="PayPal">Pay-Pal:</label>
						</td><td>
							<input type="text" name="PayPal" required placeholder="inserire paypal">
						</td></tr>
						<tr><td>
							<label for="Email">Email:</label>
						</td><td>
							<input type="email" name="Email" required placeholder="inserire email">
						</td></tr>
						<tr><td>
							<label for="Password">Password:</label>
						</td><td>
							<input type="password" name="Password" required placeholder="inserire password">
						</td></tr>
						 <tr><td>
		            		<label for="password-confirmation">Conferma Password:</label>
		            	</td><td>
		                <input type="password" name="cpassword" required placehorder="inserire password">
		                </td></tr>
						<tr><td colspan="2">
							<input type="submit" name="azione" id="registra" value="Registrati" style="width:100%"/>
						</td></tr>
					</table>
  
			</form>  
		
			</div>
			</div>
			
			<div class="modal fade" id="myModal" style="top: 50px;">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h5 class="modal-title"></h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">

                            </div>
                            </div>
                            </div>
                            </div>
                            
                            <script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/register.js"></script>
			
		<%@ include file="../fragments/footer.jsp" %>
			
				
</body>
</html>
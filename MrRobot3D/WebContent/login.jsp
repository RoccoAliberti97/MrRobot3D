<!DOCTYPE form PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page errorPage="../errors/failure.jsp"%>
<%@ page session="true"%>
<html>
<head>
<title>Mr. Robot 3D: Login</title>

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

<%@ include file="../fragments/navbar.jsp" %>

  <!-- start banner area -->
  <section id="imgbanner">  
    <h2>Login</h2>     
  </section>
  <!-- End banner area -->
	
		

			
				<div id="left" style="float: left; width: 48%; margin-top: 20px">
				<form action = "login"  method = "post" >
				<table><tr><td>
							<label for="Email">Email:</label>
						</td><td>
							<input type="email" name="Email" required placeholder="inserire email">
						</td></tr>
						<tr><td>
							<label for="Password">Password:</label>
						</td><td>
							<input type="password" name="Password" required placeholder="inserire password">
						</td></tr>
						<tr><td colspan="2">
							<input type="submit" name="Login" id="loginb" style="width:100%"/>
						</td></tr>
					</table>
					</form>
           
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
			<div class="clear">
			</div>
			
			</div>
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/signin.js"></script>

	
		<%@ include file="../fragments/footer.jsp" %>
</body>
</html>
 <!-- Preloader --
  <div id="preloader">
    <div id="status">&nbsp;</div>
  </div>
 
  <!-- End Preloader --   
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
  
  <!-- start navbar -->
  <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="true" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span><ul class="nav navbar-nav navbar-right custom_nav"> </ul></button>
      <!--  <a class="navbar-brand" href="index.jsp">Mr. <span>Robot</span>3D</a> -->
         <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp"><img src="img/Logo1.jpg" alt="logo"></a> 
      </div>
      <div id="navbar" class="navbar-collapse collapse navbar_area">          
        <ul class="nav navbar-nav navbar-right custom_nav">
          <li class="active"><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
          <li><a href="<%=request.getContextPath()%>/carrello.jsp">Catalogo</a></li>      
          <li><a href="<%=request.getContextPath()%>/page.jsp">About Us</a></li>
         <%
         session = request.getSession();
 		 String strLogin = (String) session.getAttribute("Email");
         if (strLogin == null) { %>
          <li><a href="<%=request.getContextPath()%>/registrazione.jsp">Registrazione</a></li> 
          <li><a href="<%=request.getContextPath()%>/login.jsp">Login</a></li> 
          <% 
         }
    	if (strLogin != null)
    	{
    		boolean a = (boolean) session.getAttribute("Admin");
    		String b = Boolean.toString(a);
    		if (b == "true"){
    	%> 
    	  <li><a href="<%=request.getContextPath()%>/admin/index.jsp">Admin</a></li>
    	  <%
    	  }%>
    	  <li><a href="<%=request.getContextPath()%>/checkout.jsp">Carrello</a></li>
		<li><a href="<%=request.getContextPath()%>/profilo.jsp">Ciao <% String nome=(String) session.getAttribute("Nome"); out.print(nome);%>! </a></li>
		<li><a href="logout?">Logout</a></li>
			<%} %>
	</ul>
	<script type="text/javascript">
	function logout(){
		alert("You are successfully logged out!")
	}
	</script>
      </div><!--/.nav-collapse -->
    </div>
  </nav>
  <!-- End navbar -->
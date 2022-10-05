<div id="menu">
	<ul id="tabs">
	<li <%= request.getRequestURI().contains("Home") ? "style=\"background-color: #aaa;\"" : ""%>>
			 <a class="nav-link" href="<%=request.getContextPath()%>/admin/index.jsp"><i class="fa fa-home fa-lg"></i> Home </a>
		<li <%= request.getRequestURI().contains("Catalogo") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a class="nav-link" href="<%=request.getContextPath()%>/catalogo.jsp"><i class="fa fa-shopping-cart fa-lg"></i> Catalogo </a>
		</li>
		<li <%= request.getRequestURI().contains("Utente") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a class="nav-link" href="<%=request.getContextPath()%>/utenti.jsp"><i class="fa fa-user fa-lg"></i> Utenti </a>
		</li>
		<li <%= request.getRequestURI().contains("Home") ? "style=\"background-color: #aaa;\"" : ""%>>
			 <a class="nav-link" href="<%=request.getContextPath()%>/index.jsp"><i class="fa fa-home fa-lg"></i> Website </a>
		<li><a href="logout?">Logout</a></li>
	</ul>
	<script type="text/javascript">
	function logout(){
		alert("You are successfully logged out!")
	}
	</script>
	
</div>

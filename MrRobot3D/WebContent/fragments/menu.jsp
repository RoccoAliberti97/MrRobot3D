<div id="menu">
	<ul id="tabs">
		<li <%= request.getRequestURI().contains("Home") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%=request.getContextPath()%>/index.jsp">Home</a>
		</li>
			<li <%= request.getRequestURI().contains("Carrello") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%=request.getContextPath()%>/carrello.jsp">Carrello</a>
		</li>	
		<% 
		session = request.getSession();
		String strLogin = (String) session.getAttribute("Email");
    	if (strLogin != null)
    	{
    	%>
		<li <%= request.getRequestURI().contains("Checkout") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%=request.getContextPath()%>/checkout.jsp">Checkout</a>
		</li>	
		<%} 
		if (strLogin == null) {
		%>
		<li <%= request.getRequestURI().contains("Registrazione") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%=request.getContextPath()%>/registrazione.jsp">Registrazione</a>
		</li>
		<li <%= request.getRequestURI().contains("Login") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%=request.getContextPath()%>/login.jsp">Login</a>
			</li>
			<% }
    	if (strLogin != null)
    	{
    		boolean a = (boolean) session.getAttribute("Admin");
    		String b = Boolean.toString(a);
    		if (b == "true"){
		%>
		<li <%= request.getRequestURI().contains("Admin") ? "style=\"background-color: #aaa;\"" : ""%>>
			<a href="<%=request.getContextPath()%>/admin/index.jsp">Admin</a>
		</li>
		<%} 
		%>
		<li <%= request.getRequestURI().contains("Logout") ? "style=\"background-color: #aaa;\"" : ""%>>
			<form action="logout" method="get">
		<input type="submit" value="Logout" onclick="logout()">
	</form>
			</li>
			<%} %>
	</ul>
	<script type="text/javascript">
	function logout(){
		alert("You are successfully logged out!")
	}
	</script>
	
</div>

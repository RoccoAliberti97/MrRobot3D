<%@ page contentType="text/html; charset=US-ASCII" %>
<%@ page isErrorPage="true" %>

<html>

<head>
	<title>Error</title>
	<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/default.css" type="text/css"/>
</head>

<body>



	<div id="err" class="clear">
		<p>
			<b>E' stata riscontrata un eccezione!</b><br/>
			<%= exception.toString() %>
		</p>
		<p>
			<b>Messaggio d'errore:</b><br/>
			<%= exception.getMessage() %>
		</p>
		<p>
			<b>Stacktrace is:</b><br/>
<%
			// this will send trace to the browser's screen
			exception.printStackTrace(new java.io.PrintWriter(out));
			// this will send it to the log file
			exception.printStackTrace();
%>
		</p>

	</div>

	<%@ include file="../fragments/footer.jsp" %>

</body>
</html>
<%
	String ses[] = session.getValueNames();
	
	if(ses.length==0){
		response.sendRedirect("login.jsp");
	}
%>

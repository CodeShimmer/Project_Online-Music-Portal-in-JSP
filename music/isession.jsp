<%
String ses[] = session.getValueNames();	
	if(ses.length==2){
		response.sendRedirect("login.jsp");
	}	
%>
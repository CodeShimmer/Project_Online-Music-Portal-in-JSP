<%
	session.removeAttribute("username");
	response.sendRedirect("index.jsp");
%>
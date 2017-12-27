<%@page import="java.sql.*" %>
<%@include file="VDConnection.jsp" %>
<%@ include file="asession.jsp" %>

<%
	
	 String id = request.getParameter("id");
	 if(id!=""){
	 	VDConnection db = new VDConnection();
	 	String qry1="delete from video where vid='"+id+"'";
	 	db.setData(qry1);
		response.sendRedirect("vdelete.jsp?msg=delete sucessful");
	 }
	else{
		response.sendRedirect("vdelete.jsp?msg=delete Unsucessful");
	}
%>
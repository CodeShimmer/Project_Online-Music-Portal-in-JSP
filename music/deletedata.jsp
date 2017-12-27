<%@page import="java.sql.*" %>
<%@include file="DConnection.jsp" %>
<%@ include file="asession.jsp" %>

<%
	
	 String id = request.getParameter("id");
	 
	 if(id!=""){
	 	DConnection db = new DConnection();
	 	String qry1="delete from movie where id='"+id+"'";
	 	db.setData(qry1);
		qry1="delete from link where id='"+id+"'";
	 	db.setData(qry1);
		response.sendRedirect("delete.jsp?msg=delete sucessful");
	 }
	else{
		response.sendRedirect("delete.jsp?msg=delete Unsucessful");
	}
%>
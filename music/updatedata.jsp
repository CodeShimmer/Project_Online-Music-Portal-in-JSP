<%@page import="java.sql.*" %>
<%@include file="DConnection.jsp" %>
<%@ include file="asession.jsp" %>

<%
	
	 String id = request.getParameter("id");
	 String name = request.getParameter("name");
	 String l128 = request.getParameter("l128");
	 String l320 = request.getParameter("l320");
	 String limg = request.getParameter("limg");
	
	 
	 if(id!=""&&name!=""&&l128!=""&&l320!=""&&limg!=""){
	 	DConnection db = new DConnection();
	 	String qry1="update movie set name='"+name+"' where id='"+id+"'";
	 	db.setData(qry1);
		qry1="update link set link128='"+l128+"',link320='"+l320+"',limg='"+limg+"' where id='"+id+"'";
	 	db.setData(qry1);
		response.sendRedirect("update.jsp?msg=Update sucessful");
	 }
	else{
		response.sendRedirect("update.jsp?msg=Update Unsucessful");
	}
%>
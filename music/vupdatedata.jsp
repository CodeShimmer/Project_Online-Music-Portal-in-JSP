<%@page import="java.sql.*" %>
<%@include file="VDConnection.jsp" %>
<%@ include file="asession.jsp" %>

<%
	 String id = request.getParameter("id");
	 String vname = request.getParameter("vname");
	 String vlmp4 = request.getParameter("vlmp4");
	 String vlavi = request.getParameter("vlavi");
	 String vl3gp = request.getParameter("vl3gp");
	 String vlimg = request.getParameter("vlimg");
	 
	 if(id!=""&&vname!=""&&vlmp4!=""&&vlavi!=""&&vl3gp!=""&&vlimg!=""){
	 	VDConnection db = new VDConnection();
		String qry1="update video set vname='"+vname+"',vlmp4='"+vlmp4+"',vlavi='"+vlavi+"',vl3gp='"+vl3gp+"',vlimg='"+vlimg+"' where vid='"+id+"'";
	 	db.setData(qry1);
		response.sendRedirect("vupdate.jsp?msg=Update sucessful");
	 }
	else{
		response.sendRedirect("vupdate.jsp?msg=Update Unsucessful");
	}
%>
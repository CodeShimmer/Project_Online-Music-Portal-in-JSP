<%@page import="java.sql.*" %>
<%@include file="DConnection.jsp" %>

<%
	String user = request.getParameter("user");
    String pwd = request.getParameter("password");
	
	DConnection db = new DConnection();
	ResultSet rs1=null;
	String qry = "select * from login where lid='"+user+"' and pwd ='"+pwd+"'";
	rs1 = db.getData(qry);
	String u="",p="";
	while(rs1.next()){
		u = rs1.getString("lid");
		p = rs1.getString("pwd");
	}
	if(u.equals(""))
		response.sendRedirect("login.jsp?msg=User Name or PassWord Worng");
	else{
		session.setAttribute("username",u);
		response.sendRedirect("aindex.jsp");
	}
%>
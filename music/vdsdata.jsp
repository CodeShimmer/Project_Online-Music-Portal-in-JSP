<%@page import="java.sql.*" %>
<%@include file="VDConnection.jsp" %>
<%@ include file="asession.jsp" %>
<%
 		String id="";
		id = request.getParameter("value");
		if(id!=null){
			 String type = request.getParameter("type");
			 VDConnection db = new VDConnection();
	 		 ResultSet rs1=null;
	 		 String qry = "select vid,vname from video where vtype='"+type+"' and vname LIKE '"+id+"%'";
	 		 rs1 = db.getData(qry);
	         String pid="",nm="";
			 out.println("<table border='0' align='center' width='94%'><tr align='center' height='50px'><td><b>ID</b></td><td><b>Name</b></td><td></td></tr>");
	         while(rs1.next()){
				pid = rs1.getString("vid");
				nm = rs1.getString("vname");
				%>	
                <tr align='center'>
                	<td><% out.println(pid); %></td>
					<td><% out.println(nm); %></td>
					<td><a href='vdeletedata.jsp?id=<%=pid %>' >Delete</a></td>
                </tr>
		   <%  }
			 out.println("</table>");
	 }
 %> 
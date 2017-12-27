<%@page import="java.sql.*" %>
<%@include file="DConnection.jsp" %>
<%@ include file="asession.jsp" %>
<%
 		String id="";
		id = request.getParameter("value");
		if(id!=null){
			 String type = request.getParameter("type");
			 DConnection db = new DConnection();
	 		 ResultSet rs1=null;
	 		 String qry = "select m.id,m.name from movie m,link l  where m.id=l.id and m.type='"+type+"' and m.name LIKE '"+id+"%'";
	 		 rs1 = db.getData(qry);
	         String pid="",nm="";
			 out.println("<table border='0' align='center' width='94%'><tr align='center' height='50px'><td><b>ID</b></td><td><b>Name</b></td><td></td></tr>");
	         while(rs1.next()){
				pid = rs1.getString("m.id");
				nm = rs1.getString("m.name");
				%>	
                <tr align='center'>
                	<td><% out.println(pid); %></td>
					<td><% out.println(nm); %></td>
					<td><a href='deletedata.jsp?id=<%=pid %>' >Delete</a></td>
                </tr>
		   <%  }
			 out.println("</table>");
	 }
 %> 
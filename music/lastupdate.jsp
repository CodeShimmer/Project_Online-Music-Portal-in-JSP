<%@page import="java.sql.*" %>
<%@include file="DConnection.jsp" %>        
		<%
			 DConnection db = new DConnection();
	 		 ResultSet rs1=null;
	 		 String qry = "select * from movie ORDER BY date DESC LIMIT 15";
	 		 rs1 = db.getData(qry);
	         String name="",type="",id="";
			 
			 out.println("<h1>New Songs</h1><br>");
			 out.println("<table border='0' align='center' width='94%'><tr><td width='55%'>");
			 out.println("<table border='0' width='100%'><tr align='center' height='50px'><td><b>Movie Name</b></td><td width='30%'><b>Type</b></td></tr>");
	         while(rs1.next()){
				id = rs1.getString("id");
				name = rs1.getString("name");
				type = rs1.getString("type");
				%>
                <tr align='center' >
                	<td><a href='download.jsp?id=<%=id %>' ><% out.println(name); %></a></td>
                    <td><% 	
						if(type.equals("b")){
							out.println("Movie");
						}
						else{
							out.println("Pop");
						}
					%></td>
                </tr>
		   <%  }
			 out.println("</table>");
			 out.println("</td><td></td></tr></table>");
 %> 
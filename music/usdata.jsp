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
	 		 String qry = "select m.id,m.name,l.link128,l.link320,l.limg from movie m,link l  where m.id=l.id and m.type='"+type+"' and m.name LIKE '"+id+"%'";
	 		 rs1 = db.getData(qry);
	         String pid="",nm="",l12="",l32="",lim="";
			 out.println("<table border='0' align='center' width='94%'><tr align='center' height='50px'><td><b>ID</b></td><td><b>Name</b></td><td><b>Link 128</b><td><b>Link 320</b></td><td><b>link img</b></td><td></td></tr>");
	         while(rs1.next()){
				pid = rs1.getString("m.id");
				nm = rs1.getString("m.name");
				l12 = rs1.getString("l.link128");
				l32 = rs1.getString("l.link320");
				lim = rs1.getString("l.limg");
				%>	
				<form method="get" action="updatedata.jsp" >
                <tr align='center'>
				 
                	<td><% out.println(pid); %>
					<input type='hidden' value=<%=pid %> name='id' />
					</td>
                    <td><input type="text" size="11" value="<%=nm%>" name="name" id="name" /></td>
                    <td><input type="text" size="11" value="<%=l12%>" name="l128" id="l128" /> </td>
                    <td><input type="text" size="11" value="<%=l32%>" name="l320" id="l320" /></td>
					<td><input type="text" size="11" value="<%=lim%>" name="limg" id="limg" /></td>
					<td><input type="submit" value="UPDATE" ></td>
					
                </tr>
				
				</form>
		   <%  }
			 out.println("</table>");
	 }
		
 %> 
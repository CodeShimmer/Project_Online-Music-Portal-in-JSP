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
	 		 String qry = "select * from video where vtype='"+type+"' and vname LIKE '"+id+"%'";
	 		 rs1 = db.getData(qry);
	         String pid="",vname="",vlmp4="",vlavi="",vl3gp="",vlimg="";
			 out.println("<table border='0' align='center' width='94%'><tr align='center' height='50px'><td><b>ID</b></td><td><b>Name</b></td><td><b>Mp4</b><td><b>avi</b></td><td><b>3gp</b></td><td><b>image</b></td><td></td></tr>");
	         while(rs1.next()){
				pid = rs1.getString("vid");
				vname = rs1.getString("vname");
				vlmp4 = rs1.getString("vlmp4");
				vlavi = rs1.getString("vlavi");
				vl3gp = rs1.getString("vl3gp");
				vlimg = rs1.getString("vlimg");
				%>	
				<form method="get" action="vupdatedata.jsp" >
                <tr align='center'>
				 
                	<td><% out.println(pid); %>
					<input type='hidden' value=<%=pid %> name='id' />
					</td>
                    <td><input type="text" size="11" value="<%=vname%>" name="vname" id="vname" /></td>
                    <td><input type="text" size="11" value="<%=vlmp4%>" name="vlmp4" id="vlmp4" /> </td>
                    <td><input type="text" size="11" value="<%=vlavi%>" name="vlavi" id="vlavi" /></td>
					<td><input type="text" size="11" value="<%=vl3gp%>" name="vl3gp" id="vl3gp" /></td>
					<td><input type="text" size="11" value="<%=vlimg%>" name="vlimg" id="vlimg" /></td>
					<td><input type="submit" value="UPDATE" ></td>
                </tr>
				</form>
		   <%  }
			 out.println("</table>");
	 }
 %> 
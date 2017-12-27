<%@page import="java.sql.*" %>
<%@include file="DConnection.jsp" %>

<%
 		String id="";
		id = request.getParameter("value");
		if(id!=null){
			 String type = request.getParameter("type");
			 DConnection db = new DConnection();
	 		 ResultSet rs1=null;
	 		 String qry = "select m.id,m.name,l.link128,l.link320,l.limg from movie m,link l  where m.id=l.id and m.type='"+type+"' and m.name LIKE '"+id+"%' ORDER BY m.name";
	 		 rs1 = db.getData(qry);
	         String pid="",nm="",l12="",l32="",lim="";
			 int i=0;
			 out.println("<table border='0' align='center' width='94%'><tr align='center' height='50px'><td><b>Movie Name</b></td><td><b>Movie Name</b></td>");
	         while(rs1.next()){
				pid = rs1.getString("m.id");
				nm = rs1.getString("m.name");
				if(i%2==0){
					out.println("</tr><tr>");
				}
				out.println("<td align='center'><a href='download.jsp?id="+pid+"' >"+nm+"</a></td>");	
				i++;
		  }
			 out.println("</tr>");
			 out.println("</table>");
	 }
		
 %> 
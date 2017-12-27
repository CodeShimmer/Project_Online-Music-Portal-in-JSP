<%@page import="java.sql.*" %>
<%@include file="VDConnection.jsp" %>
<%@ include file="asession.jsp" %>

<%	
	 String name="";
	 name = request.getParameter("name");
	 if(name!=null){
	 	String vlmp4 = request.getParameter("vlmp4");
		String vlavi = request.getParameter("vlavi");
	 	String vl3gp = request.getParameter("vl3gp");
		String vlimg = request.getParameter("vlimg");
		String type1 = request.getParameter("type");

	 	VDConnection db = new VDConnection();
	 	ResultSet rs1=null;
	 	String qry = "select vname from video where vname='"+name+"'";
	 	rs1 = db.getData(qry);
	 	String pc="";
	 	while(rs1.next()){
			pc = rs1.getString("vname");
		}
		if(pc.equals("")){
			String nb = "Select MAX(vid)'No' from video";
			rs1 = db.getData(nb);
			int id=0;
			while(rs1.next()){			
			id = rs1.getInt("No")+1;	
			}
			String qry1 = "insert into video values('"+id+"','"+name+"','"+type1+"','"+vlmp4+"','"+vlavi+"','"+vl3gp+"','"+vlimg+"',CURDATE()+0)";
			db.setData(qry1);
			response.sendRedirect("vaindex.jsp?msg=Video Add Sucessfuly");		
		}
		else{
			response.sendRedirect("vaindex.jsp?msg=Video Already In Database");
		}
	 }
%>
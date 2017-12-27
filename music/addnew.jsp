<%@page import="java.sql.*" %>
<%@include file="DConnection.jsp" %>
<%@ include file="asession.jsp" %>

<%	
	 String name="";
	 name = request.getParameter("name");
	 if(name!=null){
	 	String l128 = request.getParameter("l128");
		String l320 = request.getParameter("l320");
	 	String limg = request.getParameter("limg");
		String type1 = request.getParameter("type");

	 	DConnection db = new DConnection();
	 	ResultSet rs1=null;
	 	String qry = "select * from movie where name='"+name+"'";
	 	rs1 = db.getData(qry);
	 	String pc="";
	 	while(rs1.next()){
			pc = rs1.getString("name");
		}
		if(pc.equals("")){
			String nb = "Select MAX(id)'No' from movie";
			rs1 = db.getData(nb);
			int id=0;
			while(rs1.next()){
				id = rs1.getInt("No")+1;
			}
			
			String qry1 = "insert into movie values('"+id+"','"+name+"','"+type1+"', CURDATE()+0)";
			db.setData(qry1);
			qry1 = "insert into link values('"+id+"','"+l128+"','"+l320+"','"+limg+"')";
			db.setData(qry1);
			
			response.sendRedirect("aindex.jsp?msg=Movie Add Sucessfuly");		
		}
		else{
			response.sendRedirect("aindex.jsp?msg=Movie Already In Database");
		}
	 }
%>
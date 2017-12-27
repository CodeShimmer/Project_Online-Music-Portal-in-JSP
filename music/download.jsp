<%@page import="java.sql.*" %>
<%@include file="DConnection.jsp" %>
<html><head>
  <title>Download Bollywood Songs</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/dmainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/sidemenu.jsp" %>	
    <div class="width75 floatRight">
      <div class="gradient">
        <h1>Download Bollywood Songs Here ..!</h1>
		<%@ include file="add/ad90.jsp" %>	
		<%
		String id="";
	    id = request.getParameter("id");
	    if(id!=null){
			DConnection db = new DConnection();
			ResultSet rs1=null;
			String qry = "select m.name,l.link128,l.link320,l.limg from movie m,link l where m.id=l.id and l.id='"+id+"'";
			rs1 = db.getData(qry);
			String name="",l128="",l320="",limg="";
			while(rs1.next()){
				name = rs1.getString("m.name");
				l128 = rs1.getString("l.link128");
				l320 = rs1.getString("l.link320");
				limg = rs1.getString("l.limg");
				%>
				<br>
		<table align='center' border='0'width="84%">
		<tr><td align='center'><h1><% out.println(name); %><h1></td><td width='170px' height='170px'><img src='<%=limg %>' width='170px' height='170px'></img></td><tr>
		<tr align='center' height='65px'><td>All Songs Zipfile 120Kbps &nbsp;&nbsp;&nbsp;&nbsp;<a href='<%=l128 %>' >Download here</a></td></tr>
		<tr align='center' height='65px'><td>All Songs Zipfile 320Kbps &nbsp;&nbsp;&nbsp;&nbsp;<a href='<%=l320 %>' >Download here</a></td></tr>
		</table>	
			<%	
			}
		}
	    %>
      </div>
    </div>
  </div>
</div>
<%@ include file="menu/footer.jsp" %>
</div>
</body></html>
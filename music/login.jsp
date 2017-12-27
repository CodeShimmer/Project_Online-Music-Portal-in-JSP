<%@ include file="isession.jsp" %>

<html><head>
  <title>Download Bollywood Songs</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/mainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/sidemenu.jsp" %>	
    <div class="width75 floatRight">
      <div class="gradient">

        <a name="fluidity"></a>

        <h1>Login only for Admin ..!</h1>
		
		        <center>
		<%
			String msg="";
			msg = request.getParameter("msg");
			if(msg!=null)
				out.println("<br>"+msg);
		%>

		<BR><BR>
		<form id="formID" method="get" action="logcheck.jsp">
        <table width="350px" border="0">
        <tr height="60px">
        <td width="136" align="center"> User Name:
        	</td>
			<td width="152"><input class="validate[required,custom[noSpecialCaracters],length[0,20],ajax[ajaxUser]]" type="text" name="user" id="user" /></td>
            </tr>
            <tr height="60px"><td width="136" align="center">PassWord : </td>
            <td>
			<input class="validate[required,length[2,11]]" type="password" name="password" id="firstname" />			</td>
             <tr height="60px"><td colspan="2" align="center">
			<input class="submit" type="submit" value="Log In"/>
            </td>
            </tr>
          </table>
		</form>
        <br>
</center>
      </div>
    </div>
  </div>
</div>
<%@ include file="menu/footer.jsp" %>
</div>
</body></html>
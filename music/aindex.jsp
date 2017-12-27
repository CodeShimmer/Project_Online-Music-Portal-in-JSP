<%@ include file="asession.jsp" %>
<html><head>
  <title>Download Bollywood Songs</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
  
  <script language="javascript" type="text/javascript">

function valid()      
{var v=true;
	if(document.getElementById("name").value=="")
	{
		alert("Enter Movie name");
		v=false;
	}
	else if(document.getElementById("l128").value=="")
	{
		alert("Enter Link 128kb");
		v=false;
	}
	else if(document.getElementById("l320").value=="")
	{
		alert("Enter Link 320kb");
		v=false;
	}
	else if(document.getElementById("limg").value=="")
	{
		alert("Enter Link img");
		v=false;
	}	
return v;
}
  
  </script>
</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/dmainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/adminsidemenu.jsp" %>	
    <div class="width75 floatRight">
      <div class="gradient">
        <h1>Add New Movie Song</h1>		
		        <center>
		<%
			String msg="";
			msg = request.getParameter("msg");
			if(msg!=null)
				out.println("<br>"+msg);
		%>

		<BR><BR>
		<form id="formID" method="get" action="addnew.jsp">
        <table width="350px" border="0">
        <tr height="60px">
        <td width="136" align="center">Name:
        	</td>
			<td width="152"><input  type="text" name="name" id="name" /></td>
            </tr>
			
			<tr height="60px">
        <td width="136" align="center">Link 128kb:
        	</td>
			<td width="152"><input type="text" name="l128" id="l128" /></td>
            </tr>

			<tr height="60px">
        <td width="136" align="center">Link 320kb:
        	</td>
			<td width="152"><input type="text" name="l320" id="l320" /></td>
            </tr>

			<tr height="60px">
        <td width="136" align="center">Link Image:
        	</td>
			<td width="152"><input type="text" name="limg" id="limg" /></td>
            </tr>
			
			       <tr align="center" height="50px">
            <td>
					<span>Bollywood </span>
					<input type="radio" name="type" id="radio2"  value="b" checked />
                    </td>
            
            <td>
            <span>Pop</span>
					<input type="radio" name="type"  id="radio1" value="p">
                    
                </td></tr>

            <tr height="60px"><td colspan="2" align="center">
			<input class="submit" type="submit" value="Submit" onclick="return valid();"/>
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
<%@ include file="menu/afooter.jsp" %>
</div>
</body></html>
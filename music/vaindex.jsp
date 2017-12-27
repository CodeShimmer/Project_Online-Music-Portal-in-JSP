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
	else if(document.getElementById("vlmp4").value=="")
	{
		alert("Enter Link Mp4");
		v=false;
	}
	else if(document.getElementById("vlavi").value=="")
	{
		alert("Enter Link avi");
		v=false;
	}
	else if(document.getElementById("vl3gp").value=="")
	{
		alert("Enter Link 3gp");
		v=false;
	}
	else if(document.getElementById("vlimg").value=="")
	{
		alert("Enter Link image");
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
        <h1>Add New Video Song</h1>		
		        <center>
		<%
			String msg="";
			msg = request.getParameter("msg");
			if(msg!=null)
				out.println("<br>"+msg);
		%>

		<BR><BR>
		<form id="formID" method="get" action="vaddnew.jsp">
        <table width="350px" border="0">
        <tr height="60px">
        <td width="136" align="center">Name:
        	</td>
			<td width="152"><input  type="text" name="name" id="name" /></td>
            </tr>
			
			<tr height="60px">
        <td width="136" align="center">Link Mp4:
        	</td>
			<td width="152"><input type="text" name="vlmp4" id="vlmp4" /></td>
            </tr>

			<tr height="60px">
        <td width="136" align="center">Link avi:
        	</td>
			<td width="152"><input type="text" name="vlavi" id="vlavi" /></td>
            </tr>

			<tr height="60px">
        <td width="136" align="center">Link 3gp:
        	</td>
			<td width="152"><input type="text" name="vl3gp" id="vl3gp" /></td>
            </tr>
			
			<tr height="60px">
        <td width="136" align="center">Link image:
        	</td>
			<td width="152"><input type="text" name="vlimg" id="vlimg" /></td>
            </tr>
			
			       <tr align="center" height="50px">
            <td>
					<span>Bollywood </span>
					<input type="radio" name="type" id="radio2"  value="b" checked />
                    </td>
            
            <td>
            <span>English</span>
					<input type="radio" name="type"  id="radio1" value="e">
                    
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
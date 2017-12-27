<html><head>
  <title>Download Bollywood Songs</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
  
  <script type="text/javascript">
function loadXMLDoc()
{
	var tex = document.srch.pname.value;
	if(tex!=""){
	for (var i=0; i<document.srch.type.length; i++)
   		{
   			if (document.srch.type[i].checked)
      		{
      			var rad_val = document.srch.type[i].value;
				var url = 'srchdata.jsp?value='+tex+'&type='+rad_val;
      		}
		}	
if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET",url,true);
xmlhttp.send();
}
}
</script>

</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/smainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/sidemenu.jsp" %>	
    <div class="width75 floatRight">
      <div class="gradient">
     <h1>Search Movie Song</h1>
		
		<%
			String msg="";
			msg = request.getParameter("msg");
			if(msg!=null)
				out.println("<br><center>"+msg+"</center><br>");
		%>

		
		<form name="srch"  id="formID" method="get" action="">
        <table width="95%" border="0" align="center" >
        <tr height="40px">
		
		<td align="center">
					<span>Bollywood </span>
					<input type="radio" name="type" id="radio2"  value="b" checked />
                    </td>
            
            <td>
            <span>Pop</span>
					<input type="radio" name="type"  id="radio1" value="p">
                    
                </td>
       
			<td width="152" align="right"><input onKeyUp="loadXMLDoc()" type="text" name="pname" id="pname" /></td>
             <td  width="150px" align="left">
			<input class="submit" type="button" onClick="loadXMLDoc()" value="search"/>
            </td>
            </tr>
          </table>
		</form>

		<BR><BR>
				<div id="myDiv"></div> 
        <br>
</center>
      </div>
    </div>
  </div>
</div>
<%@ include file="menu/footer.jsp" %>
</div>
</body></html>
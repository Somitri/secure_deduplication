<%@ page import="java.sql.*"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>dpaas</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

</head>
<body>

	<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="5"><storng><b> 
           A Secure Deduplication of Textual Data in Cloud Environments</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="public1.jsp"><b>Home</b></a></li>
					<li><a href="index.html"><b>LogOut</b></a></li>
					
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
  
<div class="box"> <br>
  <br>
  <br>
  <br>
  <br>
  <div style="position:absolute; left:36px;  top:10px;"> 
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+2" face="Times New Roman"  
	  style="text-decoration:underline">Share Token Generation</font></em></strong> <br/>
      <br>
    <form name="s" action="#" method="get" onSubmit="return valid()">
      <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="2" width="750" border="1">
        <tr> 
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>User Id
           </strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>File Id
           </strong></font></td>
          <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Req Id 
           </strong></font></td>
          <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>File Token
                  
           </strong></font></td>
                    <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Action
                  
           </strong></font></td>
        </tr>
        <%
        String userid=null;
String ftoken=null;
String b="no";
String reqid=null;
String fid=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");

PreparedStatement ps=con.prepareStatement("select  * from str where status='"+b+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {      
        reqid=rs.getString(1);
        userid=rs.getString(2);
       fid=rs.getString(3);
       ftoken=rs.getString(4);
 //data=rs.getString(2);

 %>
        <tr> 
            <td bgcolor="#CCFFFF"> 
            <%=userid%>
          </td>
            <td bgcolor="#CCFFFF"> 
            <%=fid%>
          </td>
            <td bgcolor="#CCFFFF"> 
            <%=reqid%>
          </td>
          <td bgcolor="#CCFFFF"> 
            <%=ftoken%>
          </td>
          <td bgcolor="#CCFFFF"><a href="sharetokengen.jsp?  <%=fid%> <%=reqid%> <%=userid%>  <%=ftoken%>" style="color: red">Share Token</a></td>
        </tr>
        <%
}
%>
        <%

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
      </table>
    </form>
   
    <!-- Primary content area end -->
  </div>
  <div class="cleaner"> </div>
</div>
<!-- End Of Content area top -->
        
       <div id="menu"> </div>
    <div style="position:absolute; right:300px;  top:150px;"> <img src="images/ad.jpg" width="200" height="420"> 
    </div>
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>
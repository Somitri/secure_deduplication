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
				<li class="current"><a href="user2.jsp"><b>BACK</b></a></li>
					
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
  <div style="position:absolute; left:20px;  top:10px;"> 
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+2" face="Times New Roman"  
	  style="text-decoration:underline">File Token Request</font></em></strong> <br/>
      <br>
    <form name="s" action="#" method="get" onSubmit="return valid()">
      <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="2" width="850" border="1">
        <tr> 
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>User Id 
           </strong></font></td>
             <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>File Id 
           </strong></font></td>
          <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Request Id 
           </strong></font></td>
          <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>File Token
                  
           </strong></font></td>
           <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Status
                  
           </strong></font></td>
                    <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Action
                  
           </strong></font></td>
        </tr>
        <%
       String s=(String)session.getAttribute("s");
        System.out.println("suser="+s);
        String userid=null;
        String token=null;
         String status=null;   
         String treq=null;
         String fid=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");

PreparedStatement ps=con.prepareStatement("select  userid,filetoken,status,treq,fileid from filetoken where status='wait'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
        userid=rs.getString(1);
       token=rs.getString(2);
      status=rs.getString(3);
      treq=rs.getString(4);
      fid=rs.getString(5);
 %>
        <tr> 
            <td bgcolor="#CCFFFF"> 
            <%=userid%>
          </td>
          <td bgcolor="#CCFFFF"> 
            <%=fid%>
          </td>
          <td bgcolor="#CCFFFF"> 
            <%=treq%>
          </td>
          <td bgcolor="#CCFFFF"> 
            <%=token%>
          </td>
          <td bgcolor="#CCFFFF"> 
            <%=status%>
          </td>
          <td bgcolor="#CCFFFF"><a href="verify.jsp?  <%=fid%> <%=userid%> <%=treq%> <%=token%>" style="color: red">send to public cloud</a></td>
        </tr>
        <%
}
%>
        <%
session.setAttribute("token",token);
session.setAttribute("userid",token);
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
      </table>
    </form>
    <div id="menu"> </div>
   
    </div>
    <!-- Primary content area end -->
  </div>
  <div class="cleaner"> </div>
</div>
<!-- End Of Content area top -->
        
      
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>
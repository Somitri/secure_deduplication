<%@ page import="java.sql.*"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>secure_deduplication</title>

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
        	
   <table align="center">
                    <th>
                        A Secure Deduplication of Textual Data in Cloud Environments
                    </th>
                </table>
            
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
    <div style="position:absolute; left:100px;  top:10px;"> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+2" face="Times New Roman"  
	  style="text-decoration:underline">User View Data</font></em></strong> <br/>
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table align="right" bgcolor="#FFFFFF" cellpadding="5" cellspacing="2" width="700" border="1">
          <tr> 
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Name</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>UserId</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Password</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Mobile</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Email</strong></font></td>
          </tr>
          <%
String name=null,userid=null,password=null,mobile=null,email=null;
String uid=(String)session.getAttribute("ma");
System.out.println("uid=="+uid);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");

PreparedStatement ps=con.prepareStatement("select * from user where email='"+uid+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 name=rs.getString(1); 
     userid=rs.getString(2);
     password=rs.getString(3);
      mobile=rs.getString(4);
 email=rs.getString(5);

 %>
          <tr> 
            <td bgcolor="#CCFFFF"> 
              <%=name%>
            </td></td>
             <td bgcolor="#CCFFFF"> 
              <%=userid%>
            </td></td>
             <td bgcolor="#CCFFFF"> 
              **********
             <td bgcolor="#CCFFFF"> 
              <%=mobile%>
            </td></td>
             <td bgcolor="#CCFFFF"> 
              <%=email%>
            </td></td>
           
            </td>
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
    </div>
    <!-- Primary content area end -->
  </div>
            <div class="cleaner">
			
			
			</div>
        </div><!-- End Of Content area top -->
        
      
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>
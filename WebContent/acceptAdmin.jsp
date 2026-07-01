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


<script type="text/javascript">

function valid()
{
var a=document.s.uid.value;
if(a=="")
{
alert("Enter User ID");
document.s.uid.focus();
return false;
}
var a1=document.s.uname.value;
if(a1=="")
{
alert("Enter User Name");
document.s.uname.focus();
return false;
}
var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}

 

}

</script>
<script language="JavaScript">
javascript:window.history.forward(1);
</script>

</head>
<body>
	<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="4"><storng><b> 
           A Secure Deduplication of Textual Data in Cloud Environments</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
                                <li><a href="admin.jsp"><b>View Users Requests</b></a></li>
                                    <li class="current"><a href="acceptAdmin.jsp"><b>Accepted Users</b></a></li>
				
					
					
   					
					<li><a href="index.html"><b>Logout</b></a></li>
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
        	  
  <div class="box"> <br>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><font color="#990000" size="+2" face="Times New Roman" 
	  style="text-decoration:underline">CSP Acceptance</font></strong> <br/>
      <br>
      <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="2" width="725" border="1">
          <tr style="color: blue"><th>Name</th><th>User Id</th><th>Mobile</th><th>Email</th><th>Accept</th></tr>
    <%
    String x1=null,x2=null,x3=null,x4=null,x5=null,x6=null,x7=null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from user where 'accept'='accept'");
    while(rs.next())
               {
        x1=rs.getString(1);
        x2=rs.getString(2);
        x3=rs.getString(3);
        x4=rs.getString(4);
        x5=rs.getString(5);
        x6=rs.getString(6);
        
    
    %>
    
    <tr><td><%=x1%></td><td><%=x2%></td><td><%=x4%></td><td><%=x5%></td><td><%=x6%></td></tr>
    <%
       }
    %>
      </table>
  </div>
		  <div style="position:absolute; left:50px;  top:250px;"> 
		  <img src="images/ccc.png" width="340" height="180"></div>
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
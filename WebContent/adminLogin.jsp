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
                                    <li><a href="adminLogin.jsp"><b>CSP</b></a></li>
                                    <li><a href="CloudServiceProvider.jsp"><b>Key Distribution Center</b></a></li>	
									<li class="current"><a href="user.jsp"><b>USER</b></a></li>	
							
   					
					<li><a href="index.html"><b>HOME</b></a></li>
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
        	  
  <div class="box"> <br>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><font color="#990000" size="+2" face="Times New Roman" 
	  style="text-decoration:underline">CSP Login</font></strong> <br/>
      <br>
    <form name="s" action="admin1.jsp" method="get" onsubmit="return valid()">
      <table align="right" width="400" height="200" background="images/02.jpg">
        
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong><img src="images/Users.png" width="30" height="30">&nbsp;&nbsp;CSP 
            Name</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uname" class="b"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong><img src="images/bs.png" width="30" height="30">&nbsp;&nbsp;Password</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" class="b"></td>
        </tr>
        <tr> 
          <td></td>
          <td><input type="submit" name="s" value="submit" class="b1" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="reset" name="r" value="clear" class="b1"></td>
        </tr>
      </table>
    </form>
  </div>
		  <div style="position:absolute; left:556px;  top:250px;"> 
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
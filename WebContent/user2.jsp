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
<script language="JavaScript">
javascript:window.history.forward(1);
</script>
</head>
<body>
    <%
        String s=(String)session.getAttribute("a");
        System.out.println("s="+s);
    %>
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
				<li class="current"><a href="user2.jsp"><b>USER</b></a></li>
                                <li class="current"><a href="viewprofile.jsp"><b>USERProfile</b></a></li>
					<li><a href="user.jsp"><b>LogOut</b></a></li>
					
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
    <div id="menu"> 
      <div style="position:absolute; left:290px;  top:130px;"> 
        <ul>
          <li> <a href="file_upload.jsp"><font color="#CC3300" size="+1"><b>Data Production </b></font></a></li>
          <br>
     <!--  <li><a href="file_view11.jsp"><font color="#CC3300" size="+1"><b>VIEW 
            YOUR DATA</b></font></a></li> -->
          <br>
          <li><a href="total.jsp"><font color="#CC3300" size="+1"><b> Data Details</b></font></a></li>
          <br>
          <li><a href="ft.jsp"><font color="#CC3300" size="+1"><b>File Token</b></font></a></li>
          <br>
            <li><a href="filedownload.jsp"><font color="#CC3300" size="+1"><b>File Download</b></font></a></li>
            <br>
            <li><a href="sharetoken1.jsp"><font color="#CC3300" size="+1"><b>Duplicate File Download</b></font></a></li>
    
        </ul>
      </div>
    </div>
    <div style="position:absolute; left:568px;  top:100px;"> <img src="images/cloud1.jpg" width="320" height="220"> 
    </div>
    <div style="position:absolute; left:6px;  top:100px;"> <img src="images/cloud2.jpg" width="320" height="200"> 
    </div>
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
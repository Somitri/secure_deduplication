<%@page import="java.util.HashSet"%>
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
				<li class="current"><a href="user2.jsp"><b>Home</b></a></li>
				
					
					
					
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
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">Token Request</font></em></strong> <br/>
      <br>
        <form name="s" action="#" method="get" onSubmit="return valid()">
      <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="2" width="725" border="1">
        <tr> 
          
             <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>File Id 
           </strong></font></td>
          <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>File Name
           </strong></font></td>
          <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Download
                  
           </strong></font></td>
           
        </tr>
        <%
        String stoken=request.getParameter("pwd");
        String uid=(String)session.getAttribute("a");
        System.out.println("uid="+uid);
        String x1=null,fid=null,fname=null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select filetoken from sharetoken where filetoken='"+stoken+"'");
        if(!(rs.next()))
        {
            x1=stoken;
            PreparedStatement ps2=con.prepareStatement("select * from pcloud where  filetoken='"+x1+"' && uid='"+uid+"'");
 ResultSet rs2=ps2.executeQuery();
 while(rs2.next())
         {
                fid=rs2.getString(1);
                fname=rs2.getString(2);
        %>
 
 
        <tr> 
            
          <td bgcolor="#CCFFFF"> 
            <%=fid%>
          </td>
          
          <td bgcolor="#CCFFFF"> 
            <%=fname%>
          </td>
          <td bgcolor="#CCFFFF"><a href="d.jsp?<%=fid%>" style="color: red">Download</a></td>
        </tr>
        

        <%

}
        }
        else
        {
            response.sendRedirect("errorpage.jsp");
        }
        %>
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
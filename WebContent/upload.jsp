<%@page import="java.util.StringTokenizer"%>
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
				<li class="current"><a href="tpa2.jsp"><b>CSP</b></a></li>
					<li><a href="tpa.jsp"><b>BACK</b></a></li>
					
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
	  style="text-decoration:underline">Upload File</font></em></strong> <br/>
      <br>
    

    <div id="menu"> </div>
    <%
     String s=" ";
     String f=request.getQueryString();
     f=f.replace("%20",s);
     String fid=null;
     String userid=null;
     String token=null;
     System.out.println("f="+f);
   StringTokenizer st=new StringTokenizer(f);
   while (st.hasMoreElements()) {
                       		userid = st.nextToken();
                       fid=st.nextToken();
                       token=st.nextToken(); 
		}
   
        System.out.println("fid manoj="+fid);
        System.out.println("token="+token);
        session.setAttribute("fid",fid);
        session.setAttribute("token",token);
    Blob file2= null,file3= null,blob=null;
String data=null,fname=null;
   try
{
       System.out.println("a");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
PreparedStatement ps=con.prepareStatement("select file_name,filedata from file1 where id='"+fid+"'");
ResultSet rs=ps.executeQuery();
System.out.println("b");	
if(rs.next())
 {
 System.out.println("c");
fname=rs.getString(1);
data=rs.getString(2);
session.setAttribute("data",data);
session.setAttribute("fname",fname);
response.sendRedirect("view.jsp");
}
else
{
out.println("enter correct data name and key");
}
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}

%>
    </div>
    <!-- Primary content area end -->
  </div>
    
        
    </div>
</div>
<!-- End Of Content area top -->
   
            <div class="cleaner">
			
			
			</div>
        </div>    
      
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>
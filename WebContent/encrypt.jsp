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
				<!-- <li class="current"><a href="tpa2.jsp"><b>CSP</b></a></li> -->
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
  <div style="position:absolute; left:36px;  top:10px;"> 
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+2" face="Times New Roman"  
	  style="text-decoration:underline">Token Request</font></em></strong> <br/>
      <br>
       
        
        <%
            String data=(String)session.getAttribute("data");
            String fid=(String)session.getAttribute("fid");
            System.out.println("data123="+data);
            String fname=(String)session.getAttribute("fname");
            System.out.println("fname="+fname);
             System.out.println("fid="+fid);
              String dataEncrypt = aes.AESencrp.encrypt(data);
              session.setAttribute("dataenc", dataEncrypt);
        %>
         <div>
         <div style="position:absolute; left:6px;  top:5px;"> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;  <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline"></font></em></strong><br>
        <br>         
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form name="s" action="encrypt1.jsp" method="get" onSubmit="return valid()">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table align="center"  width="480">
           <tr> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><font face="Times New Roman"  size="+1"><strong>DATA NAME</strong></font></td>
            <td> <input type="text" name="name" class="b" value="<%=fname%>"></td>
          </tr>
          <tr> 
            <td height="172"><font face="Times New Roman"  size="+1"><strong>Encrypted Message</strong></font></td>
            <td> <textarea rows="11" cols="85" name="file"><%=dataEncrypt%></textarea> 
            </td>
            
          </tr> 
          <tr>
            <td><input type="submit" name="submit" value="submit" style="color: blue"></td>
          </tr>
          </tr></tr>
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String msg1=request.getParameter("file");
        String s=(String)session.getAttribute("a");
        int fid=(Integer)session.getAttribute("k");
        System.out.println("fid="+fid);
        //String msg1=(String)session.getAttribute("s2");
        String status="no";

try
{
    System.out.println("fu2="+msg1);
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
System.out.println("ok");
PreparedStatement ps1=con1.prepareStatement("insert into filetag(userid,filetag,status,fileId)values(?,?,?,?)");
System.out.println("ok1");
ps1.setString(1, s);
ps1.setString(2, msg1);
ps1.setString(3, status);
ps1.setInt(4,fid);
System.out.println("ok2");
ps1.executeUpdate();
response.sendRedirect("user21.jsp");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}

        
        %>
    </body>
</html>


<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
            String fid=(String)session.getAttribute("fid");
             String token=(String)session.getAttribute("token");
           // System.out.println("data123="+data);
            String fname=(String)session.getAttribute("fname");
            System.out.println("fname="+fname);
             System.out.println("fid="+fid);
              String uid=(String)session.getAttribute("a");
              String data1=(String)session.getAttribute("dataenc");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
               PreparedStatement ps=con.prepareStatement ("insert into pcloud(fid,fname,fdata,filetoken,uid) values (?,?,?,?,?)");
               ps.setString(1, fid);
               ps.setString(2, fname);
               ps.setString(3,data1 );
               ps.setString(4,token);
               ps.setString(5,uid);
               int n=ps.executeUpdate();
               if(n>0)
                                     {
                   response.sendRedirect("total1.jsp");
               }
               else
                                     {
                   response.sendRedirect("");
               }
                           
                           
        %>
    </body>
</html>

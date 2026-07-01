

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String uid=request.getQueryString();
        System.out.println("uid="+uid);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
        PreparedStatement ps=con.prepareStatement("update user set accept='accept' where userid='"+uid+"'");
        ps.executeUpdate();
        response.sendRedirect("admin.jsp");

%>
    </body>
</html>

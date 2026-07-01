
<%@page import="java.sql.*"%>
<%@page import="java.util.StringTokenizer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
   System.out.println("userid="+userid);
   System.out.println("fid="+fid);
   System.out.println("token="+ token);
   String status="no";
   try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
       PreparedStatement ps=con.prepareStatement("insert into str(userid,fid,token,status)values(?,?,?,?)");
       ps.setString(1,userid);
       ps.setString(2,fid);
       ps.setString(3,token);
       ps.setString(4,status);
       int n=ps.executeUpdate();
       if(n>0)
                     {
           response.sendRedirect("total2.jsp");
       }
       else
                     {
            response.sendRedirect("error.jsp");
       }
       }
   catch(Exception e)
                     {
       
   }
   %>
    </body>
</html>

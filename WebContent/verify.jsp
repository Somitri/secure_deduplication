
<%@page import="java.util.StringTokenizer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String userid1=request.getQueryString();
        String status="no";
        String userid="null";
        String token=null;
        String fid=null;
        String s=" ";
        String reqid=null;
        String s11="done";
        
    userid1=userid1.replace("%20",s);
    StringTokenizer st=new StringTokenizer(userid1);
    while (st.hasMoreElements()) {
                        fid=st.nextToken();
			userid = st.nextToken();
                        reqid=st.nextToken();
                       
                         token = st.nextToken();
                        
		}
   
        System.out.println("token="+token);
        
        try{
              Class.forName("com.mysql.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
		 PreparedStatement ps5=con.prepareStatement("update filetoken set status='"+s11+"' where treq='"+reqid+"'");
                ps5.executeUpdate();
             PreparedStatement ps=con.prepareStatement("insert into pcf(userid,filetoken,action,fileid) values(?,?,?,?)");
             
             ps.setString(1,userid);
             ps.setString(2,token);
             ps.setString(3,status);
             ps.setString(4,fid);
               ps.executeUpdate();
                System.out.println("mk");
              response.sendRedirect("user2.jsp");
        }
        catch(Exception e){
            
        }
      
        %>
        
     
    </body>
</html>

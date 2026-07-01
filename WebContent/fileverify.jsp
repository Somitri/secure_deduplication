
<%@page import="com.sun.crypto.provider.RSACipher"%>
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
        String status="NoDuplicate";
        String status1="Duplicate";
        String userid="null";
        String reqid=null;
        String tag=null;
        String fid=null;
        String s=" ";
        String s11="done";
    userid1=userid1.replace("%20",s);
    System.out.println("userid1=" +userid1);
    StringTokenizer st=new StringTokenizer(userid1);
    while (st.hasMoreElements()) {
                      //  fid=st.nextToken();
                        reqid= st.nextToken();
                        System.out.println("manoj=" +reqid);
			userid = st.nextToken();
                        System.out.println("userid=" +userid);
                       tag = st.nextToken();
                        System.out.println("tag=" +tag);
		}
    
        System.out.println("tag="+tag);

        try{
              Class.forName("com.mysql.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
               
		PreparedStatement ps1=con.prepareStatement("select * from pcloud where filetoken='"+tag+"'");
                  ResultSet rs=ps1.executeQuery();

                if(rs.next())
                {
                    PreparedStatement ps2=con.prepareStatement("update pcf set action='"+status1+"' where tkreq='"+reqid+"'");
                    ps2.executeUpdate();
                                }
                  else
                                           {
                                        System.out.println("welcome");
                      PreparedStatement ps3=con.prepareStatement("update pcf set action='"+status+"' where tkreq='"+reqid+"'");
                    ps3.executeUpdate();
                  }
              response.sendRedirect("public1.jsp");
        }
        catch(Exception e){
            
        }
      
        %>
    </body>
</html>

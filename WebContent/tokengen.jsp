
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
        String status="wait";
        String status1="yes";
        String userid="null";
        String reqid=null;
        String tag=null;
        String fid=null;
        String s="  ";
        String userid2="one";
    userid1=userid1.replace("%20",s);
    System.out.println("userid1=" +userid1);
    StringTokenizer st=new StringTokenizer(userid1);
    while (st.hasMoreElements()) {
                        fid=st.nextToken();
                        System.out.println("fid=" +fid);
                        reqid= st.nextToken();
                        System.out.println("reqid=" +reqid);
			userid = st.nextToken();
                        System.out.println("userid=" +userid);
                       tag = st.nextToken();
                        System.out.println("tag=" +tag);
		}
    
        System.out.println("tag="+tag);
        String hmac =SHA.HmacSha1Signature.calculateRFC2104HMAC(tag, userid2);
        System.out.println("hmac="+hmac);
        System.out.println("userid="+userid);
        try{
              Class.forName("com.mysql.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
		PreparedStatement ps1=con.prepareStatement("update filetag set status='"+status1+"' where sreq="+reqid+" and fileId="+fid+"");
                    ps1.executeUpdate();
                

             PreparedStatement ps=con.prepareStatement("insert into filetoken(userid,filetoken,status,fileid) values(?,?,?,?)");
             
             ps.setString(1,userid);
             ps.setString(2,hmac);
             ps.setString(3,status);
             ps.setString(4,fid);
               ps.executeUpdate();
                
               
               System.out.println("mk");
              response.sendRedirect("private21.jsp");
        }
        catch(Exception e){
            
        }
      
        %>
    </body>
</html>


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
    String email=(String)session.getAttribute("email");
    System.out.println("email="+email);
        System.out.println("tag="+tag);
        String hmac =SHA.HmacSha1Signature.calculateRFC2104HMAC(tag, userid);
       
        System.out.println("hmac="+hmac);
        System.out.println("userid="+userid);
        try{
              Class.forName("com.mysql.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
		PreparedStatement ps1=con.prepareStatement("update str set status='"+status1+"' where id="+reqid+" ");
                    ps1.executeUpdate();
                System.out.println("w");

             PreparedStatement ps=con.prepareStatement("insert into sharetoken(userid,filetoken,status,fileid,filetoken1) values(?,?,?,?,?)");
             
             ps.setString(1,userid);
             ps.setString(2,hmac);
             ps.setString(3,status);
             ps.setString(4,fid);
             ps.setString(5,tag);
               ps.executeUpdate();
                
               
               System.out.println("mk");
              response.sendRedirect("sharetokengen1.jsp");
        }
        catch(Exception e){
            
        }
      // com.SendMailTLS.SendMail(email, hmac); 
      response.sendRedirect("sharetokengen1.jsp");
        %>
    </body>
</html>

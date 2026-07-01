
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.File"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
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
        <h1>Hello World!</h1>
        <%
                String fid=request.getQueryString();
                
                String s="";
               
    String fid1=fid.replace("%20",s);
    System.out.println(fid1);
 String data=null;
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select fdata from pcloud where fid='"+fid1+"'");
        if(rs.next())
                       {
            data=rs.getString(1);
        }
        String decrypt=aes.AESencrp.decrypt(data);
        System.out.println("data="+decrypt);
        File file = new File("E:/newfile.txt");
        
        try {
            
            FileOutputStream fop = new FileOutputStream(file);
                
 
			// if file doesn't exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}
 
			// get the content in bytes
			byte[] contentInBytes =decrypt.getBytes();
 
			fop.write(contentInBytes);
			fop.flush();
			fop.close();
 
			System.out.println("Done");
                            response.sendRedirect("filedownload123.jsp");
		} 
                 catch (IOException e) {
			e.printStackTrace();
		}
        %>
    </body>
</html>


<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String dataname=(String)session.getAttribute("ffn");
System.out.println("dataname="+dataname);
String msg=(String)session.getAttribute("ff");
String msg1=(String)session.getAttribute("s2");

System.out.println("msg1====>"+msg1);

/*try
{
    System.out.println("fu2="+msg1);
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
System.out.println("ok");
PreparedStatement ps1=con1.prepareStatement("update file1 set sha1=(?) where file_name='"+dataname+"'");
System.out.println("ok1");
ps1.setString(1, msg1);
System.out.println("ok2");
ps1.executeUpdate();


}
catch(Exception e1)
{
out.println(e1.getMessage());
}*/
//out.print(dataname);
//out.print(msg);
//String a=getServletContext().getRealPath("/")+"\\file\\";
//String fname=a+msg;
//FileInputStream fis=null;

//File image=new File(fname);

try
{
//Class.forName("com.mysql.jdbc.Driver");
//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");

//PreparedStatement ps=con.prepareStatement("update file1 set auditor_data=AES_ENCRYPT(?,'key') where file_name='"+dataname+"'");
//fis=new FileInputStream(image);
//ps.setBinaryStream(1, (InputStream)fis, (int)(image.length()));
//ps.executeUpdate();
response.sendRedirect("file_view3.jsp");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>

<%@ page import="java.sql.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String x1=null,x2=null,x3="Waiting";
java.util.Date now = new java.util.Date();
String DATE_FORMAT = "yyyy-MM-dd";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;
String a=(String)session.getAttribute("a");
String x=(String)session.getAttribute("x");
String b=(String)session.getAttribute("b");
String c=(String)session.getAttribute("c");
String d=(String)session.getAttribute("d");
System.out.println("c="+c);
System.out.println("d="+d);
        
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from user where email='"+d+"'");

if(rs.next())
{ 
    response.sendRedirect("errorpage11.jsp");
}
else
{

Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from user where mobile='"+c+"'");

if(rs1.next())
{ 
    response.sendRedirect("errorpage12.jsp");
}
    else
{
        
System.out.println("else mobile");
PreparedStatement ps=con.prepareStatement("insert into user(name,userid,pass,mobile,email,accept,date) values(?,?,?,?,?,?,'"+strDateNew+"')");
ps.setString(1,x);
ps.setString(2,a);
ps.setString(3,b);
ps.setString(4,c);
ps.setString(5,d);
ps.setString(6,x3);



ps.executeUpdate();
out.println("Successfully Registered");
response.sendRedirect("sign_up2.jsp");

}
}
}



catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

</body>
</html>

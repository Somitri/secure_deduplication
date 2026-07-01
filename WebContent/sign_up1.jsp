<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>dpaas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

String a = request.getParameter("id");
String x = request.getParameter("unn");
String b = request.getParameter("passs");
String c = request.getParameter("mobb");
String d = request.getParameter("eidd");
session.setAttribute("a",a);
session.setAttribute("x",x);
session.setAttribute("b",b);
session.setAttribute("c",c);
session.setAttribute("d",d);

//String f=request.getParameter("date");
//out.print(strDateNew1);
//out.print(x);
//out.print(b);
//out.print(c);
//out.print(d);
//out.print(f);
java.util.Date now = new java.util.Date();
String DATE_FORMAT = "yyyy-MM-dd";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;
//response.sendRedirect("signup.jsp?message=success");
//String userid=null;
//String m="avl";

response.sendRedirect("sign_up3.jsp");

%>
</body>
</html>

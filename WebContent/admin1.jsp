<%@ page import="java.sql.*"  %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

Connection con = null;
	Statement st = null;
   String a=null;
	
        String a1=request.getParameter("uname");
String b=request.getParameter("pass");
	
	
 ResultSet rs=null;
	try{
		Class.forName("com.mysql.jdbc.Driver"); 
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
		System.out.println("connected");
                st = con.createStatement();
		String qry="select * from admin where pass='"+b+"' && userid='"+a1+"'";
		String qry1="select userid from user where name='"+a1+"'";
                rs=st.executeQuery(qry);
		if(rs.next())
		{
		//name2=rs.getString("name");		
		response.sendRedirect("admin.jsp");
		//session.setAttribute("name2",name2);
		//out.print(name2);
		}
		else
		{
		out.println("enter correct user name and password");
		}
                Statement st1=con.createStatement();
                ResultSet rs1=st1.executeQuery(qry1);
                while(rs1.next())
                {
                    a=rs1.getString(1);
                    System.out.println("user id="+a);
                    session.setAttribute("a",a);
                }

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
%>
</body>
</html>

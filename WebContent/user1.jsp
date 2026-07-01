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
	
        String a1=request.getParameter("email");
String b=request.getParameter("pass");
        session.setAttribute("ma", a1);
        session.setAttribute("email", a1);
        System.out.println("user email="+a1);
	
	
 ResultSet rs=null;
	try{
		Class.forName("com.mysql.jdbc.Driver"); 
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");
		st = con.createStatement();
		String qry="select * from user where email='"+a1+"'&& pass='"+b+"' && accept='accept'";
		String qry1="select userid from user where name='"+a1+"'";
                rs=st.executeQuery(qry);
		if(rs.next())
		{
		a=rs.getString("userid");		
		response.sendRedirect("user2.jsp");
		session.setAttribute("a",a);
		System.out.println("uid="+a);
		}
		else
		{
		out.println("enter correct user name and password");
		%>
		<H3><a href="user.jsp">Click here to retry...</a></H3>
		<%
		
		
		}
                Statement st1=con.createStatement();
                ResultSet rs1=st1.executeQuery(qry1);
                while(rs1.next())
                {
                    a=rs1.getString(1);
                    System.out.println("user id="+a);
                    session.setAttribute("a",a);
                    System.out.println("userid="+a);
                }
                    
	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
%>
</body>
</html>

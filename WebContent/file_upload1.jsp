
<%@page import="SHA.AeSimpleSHA1"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.io.*,java.util.*,javax.servlet.*, javax.servlet.http.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      
      String filedata=null;
String filename=null;
String paramname=null;
ArrayList list=new ArrayList();
//java.util.Date now = new java.util.Date();
//	 String DATE_FORMAT1 = "yyyy-MM-dd";
//	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String str = "2025-03-25";
String s="UNCHANGED";
String ffn=null;
String ff=null;
String line=null;
String fid=null;
System.out.println(ff);
String b=(String)session.getAttribute("a");
FileInputStream fis=null;
MultipartRequest multi = new MultipartRequest(request, getServletContext().getRealPath("/")+"//file",	10 * 1024 * 1024); // 10MB
	Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("id"))
				{
					fid=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("fn"))
				{
					ffn=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("file"))
				{
					ff=multi.getParameter(paramname);
				}
				
			}
				int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname != null)
		{
			f = 1;
			filename = multi.getFilesystemName(paramname);
			String fPath = getServletContext().getRealPath("/")+"//file//"+filename;
			File file1 = new File(fPath);
			 fis = new FileInputStream(file1);
			list.add(fis);
		}		
	}
	FileInputStream fs1 = null;		

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_deduplication","root","root");

PreparedStatement ps=con.prepareStatement("insert into file1(file_name,data,userid,status,date1,filedata) values(?,AES_ENCRYPT(?,'key'),?,?,'"+str+"',?)");

ps.setString(1,ffn);
if(f == 0)
		ps.setObject(1,null);
   // System.out.println("select file");
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
ps.setBinaryStream(2, (InputStream)fs1, (int)(fs1.available()));
BufferedReader reader = new BufferedReader(new InputStreamReader(fs1));
        StringBuilder out1 = new StringBuilder();
        
        while ((line = reader.readLine()) != null) {
            out1.append(line);
        }
        filedata=out1.toString();
            
               System.out.println("sm="+out1.toString());
          //Prints the string content read from input stream
       // reader.close();
		}
ps.setString(3,b);
ps.setString(4,s);
ps.setString(5,filedata);
ps.executeUpdate();
//out.print(Successfully Registered);
session.setAttribute("ffn",ffn);
session.setAttribute("ff",filename);
session.setAttribute("s",line);
session.setAttribute("fid =",fid);
System.out.println("File Id  ="+fid);
System.out.println("File Name ffn ="+ffn);
System.out.println("file data="+filedata);


String chunk1=filedata.substring(0,50);
String chunk2=filedata.substring(50,100);
String chunk3=filedata.substring(100,150);
String chunk4=filedata.substring(150);
System.out.println("Data Splitting the data tokenization in the File : "+Arrays.toString(filedata.split("")));

System.out.println("Data Splitting the data tokenization work,,,,,,,, in the File : "+Arrays.toString(filedata.split(" ")));


System.out.println("\n\nChunk 1 : "+Arrays.toString(chunk1.split(" ")));
System.out.println("Chunk 2 : "+Arrays.toString(chunk2.split(" ")));
System.out.println("Chunk 3 : "+Arrays.toString(chunk3.split(" ")));
System.out.println("Chunk 4 : "+Arrays.toString(chunk4.split(" "))+"\n\n");

String  s2=AeSimpleSHA1.SHA1(filedata);
System.out.println("s2="+s2);
//System.out.println("fid="+fid);
session.setAttribute("s2",s2);

System.out.println("CRC Computing values s2 ="+s2);
response.sendRedirect("file_upload2.jsp");


}
catch(Exception e1)
{
	e1.printStackTrace();
	System.out.println(e1);
out.println(e1.getMessage());
}

%>
    </body>
</html>

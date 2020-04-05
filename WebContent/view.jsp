<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LovejotC0743189</title>
<style>

						body{font-family:arial;}
						table{table-layout:fixed; width:50%;border:1px solid black;padding:0px 10px ;margin-top:50px;}
						a{text-decoration:none;border:1px solid black;}
						a:hover{color:red;}
 td {
  padding: 15px;
}
td {
  padding: 15px;
}
</style>
</head>
<body>
<table cellpadding="20"  width="50%" bgcolor="99FFFF" align="center"
cellspacing="2">

<tr>
<th>Id</th>
<th> Name</th>
<th>Address</th>
<th>City</th>
<th>Course</th>
<th>Mobile no.</th>
<th>Email</th>
<th>Edit</th>
<th>Delete</th>
<% 

response.setContentType("text/html");

Class.forName("oracle.jdbc.driver.OracleDriver"); 

Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lovejot","lovejot123");
PreparedStatement ps=conn.prepareStatement("select * from registration");
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	
	
	
	
	
	
	
	String id=rs.getString("id");
	
	%>
	<table width="100px;" bgcolor="99FFFF" align="center" padding="10px" layout="fixed"
cellspacing="2">
	

	
	</tr>
	<tr>
	<td><b><%=rs.getInt("id") %></b></td>
	<td><br><br><br><%=rs.getString("name") %></td>
	<td><%=rs.getString("address") %></td>
	<td><%=rs.getString("city") %></td>
	<td><%=rs.getString("course") %></td>
	<td><%=rs.getString("mobileno") %></td>
	<td><%=rs.getString("email") %></td>
	<td><a href="update.jsp?id=<%=id %>" ><Button style="color:gren">Edit</Button></a></td>
	<td><a href="delete.jsp?id=<%=id %>"><Button style="color:red">Delete</Button></a></td>
</tr>
	<% 
	
}
%>


</table>
</body>
</html>
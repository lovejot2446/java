<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>





<%

	
	String id=request.getParameter("id");




Class.forName("oracle.jdbc.driver.OracleDriver");

//Get a connection from the DriverManager
//Initialize the database 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lovejot","lovejot123");

// Create a SQL query to insert data into demo table 
// demo table consists of two columns, so twelve '?' is used 

PreparedStatement ps=con.prepareStatement("delete from job where id=?");


// sets the data to ps pointer 


ps.setString(1,id);

int i=ps.executeUpdate();

response.sendRedirect("services.jsp");
%>

<script>


alert("Record Deleted...");

</script>


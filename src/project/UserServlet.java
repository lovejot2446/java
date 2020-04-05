package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Servlet Name 
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
public UserServlet() {
super();
// TODO Auto-generated constructor stub
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// Set the response message's MIME type
	
	response.setContentType("text/html");

//Allocate a output writer to write the response message into the network socket
	// Get a writer pointer  
    // to display the successful result
	
PrintWriter out = response.getWriter();

//For the first parameter, 
//get the data using request object 



String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String username=request.getParameter("username");
String password=request.getParameter("password");
String address=request.getParameter("address");
String email=request.getParameter("email");

try{
Class.forName("oracle.jdbc.driver.OracleDriver");

//Get a connection from the DriverManager
//Initialize the database 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lovejot","lovejot123");

// Create a SQL query to insert data into demo table 
// demo table consists of two columns, so twelve '?' is used 

PreparedStatement ps=con.prepareStatement(
"insert into users values(id.nextval,?,?,?,?,?,?)");


// sets the data to ps pointer 


ps.setString(1,first_name);
ps.setString(2,last_name);
ps.setString(3,username);
ps.setString(4,password);
ps.setString(5,address);
ps.setString(6,email);
int i=ps.executeUpdate();
if(i>0)
	response.sendRedirect("login.jsp");
out.print("You are successfully registered...");

}catch (Exception e2) {System.out.println(e2);}
out.close();
}
}

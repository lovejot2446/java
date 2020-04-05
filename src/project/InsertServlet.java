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
@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
public InsertServlet() {
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



String job_title=request.getParameter("job_title");
String job_description=request.getParameter("job_description");
String contact=request.getParameter("contact");
String city=request.getParameter("city");
String province=request.getParameter("province");
String category_name=request.getParameter("category_name");
String username=request.getParameter("username");

try{
Class.forName("oracle.jdbc.driver.OracleDriver");

//Get a connection from the DriverManager
//Initialize the database 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lovejot","lovejot123");

// Create a SQL query to insert data into demo table 
// demo table consists of two columns, so twelve '?' is used 

PreparedStatement ps=con.prepareStatement(
"insert into job  values(id.nextval,?,?,?,?,?,?,?)");


// sets the data to ps pointer 

ps.setString(1,job_title);
ps.setString(2,job_description);
ps.setString(3,contact);
ps.setString(4,city);
ps.setString(5,province);
ps.setString(6,category_name);
ps.setString(7,username);

int i=ps.executeUpdate();
if(i>0)
out.print("You are successfully registered...");
response.sendRedirect("services.jsp");
}catch (Exception e2) {System.out.println(e2);}
out.close();
}
}

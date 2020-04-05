package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class LogInServlet
 */
@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
			
		PrintWriter out = response.getWriter();
		
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");

		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lovejot","lovejot123");
		
		 String username = request.getParameter("username");
		 String password = request.getParameter("password");
		 
		 String query="select password from users where username=?";
		 
		 PreparedStatement st=con.prepareStatement(query);


		

		st.setString(1,username);
		ResultSet rs=st.executeQuery();
		
		if(rs.next())
		{
			if(rs.getString(1).equalsIgnoreCase(password)){
				
				HttpSession session=request.getSession();
				out.println("Welcome"+username);
				
				
					session.setAttribute("username", username );
					response.sendRedirect("services.jsp");
				
			}
			
			else
			{
				out.println("Invalid Password");
				RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
	                rd.include(request,response);
				
				
			}
		}
		
		else{
			
			out.println("invalid username");
			RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
                rd.include(request,response);			
		}
		}
		catch(ClassNotFoundException e){
			
			e.printStackTrace();
			
			
			
		}
		catch(SQLException e){
			
			e.printStackTrace();
		}
		}
		

		
	}



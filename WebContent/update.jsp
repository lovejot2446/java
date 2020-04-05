<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="#">
<head>





<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/style4.css" rel="stylesheet" type="text/css">
        
         
     
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        
						
    </head>
   


<%
if(request.getParameter("submit")!=null)
{
	
	
	String job_title=request.getParameter("job_title");
	String job_description=request.getParameter("job_description");
	String contact=request.getParameter("contact");
	String city=request.getParameter("city");
	String province=request.getParameter("province");
	String category_name=request.getParameter("category_name");
	String username=request.getParameter("username");
	String id=request.getParameter("id");


Class.forName("oracle.jdbc.driver.OracleDriver");

//Get a connection from the DriverManager
//Initialize the database 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lovejot","lovejot123");

// Create a SQL query to insert data into demo table 
// demo table consists of two columns, so twelve '?' is used 

PreparedStatement ps=con.prepareStatement("update job set job_title=?,job_description=?,contact=?,city=?,province=?,category_name=?,username=? where id=?");


// sets the data to ps pointer 


ps.setString(1,job_title);
ps.setString(2,job_description);
ps.setString(3,contact);
ps.setString(4,city);
ps.setString(5,province);
ps.setString(6,category_name);
ps.setString(7,username);
ps.setString(8,id);
int i=ps.executeUpdate();


response.sendRedirect("services.jsp");
%>
<script>


alert("successfully updated...");

</script>

<% 
}

%>






<%
String id=request.getParameter("id");
try {
	response.setContentType("text/html");

	Class.forName("oracle.jdbc.driver.OracleDriver"); 

	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lovejot","lovejot123");
	PreparedStatement ps=conn.prepareStatement("select * from job where id =?");
	ps.setString(1,id);
	ResultSet rs=ps.executeQuery();
while(rs.next()){
%>



<header class="main-header">
            <nav class="nav">
                <ul>
                    <li><a href="services.jsp">HOME</a></li>
                    <li><a href="insert.jsp">POST</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>
                    </ul>
                    
            </nav>
            <h1 class="band-name band-name-large">Need Help?</h1>
        </header>









<div class="row">
<div class="col-sm-4">

<div alight="left">
<label class="form-label"></label>
<input type="hidden" class="form-control" placeholder="job id"value="<%=rs.getString("id")%>" name="id" required >
</div>

<div alight="left">
<label class="form-label">Job Title</label>
<input type="text" class="form-control" placeholder="job Title"value="<%=rs.getString("job_title")%>" name="job_title" required >
</div>

<div alight="left">
<label class="form-label">Job Description</label>
<input type="text" class="form-control" placeholder="job description"value="<%=rs.getString("job_description")%>" name="job_description" >
</div>


<div alight="left">
<label class="form-label">Contact</label>
<input type="text" class="form-control" placeholder="contact"value="<%=rs.getString("contact")%>" name="contact" required>
</div>

<div alight="left"><br>
<label class="form-label">City</label>
<select name="city" value="<%=rs.getString("city")%>"required><br>

<option value="Brampton">Brampton</option>
<option value="Mississauga">Mississauga</option>
<option value="Montreal">Montreal</option>
<option value="Toronto">Toronto</option>
</select>
</div>


<div alight="left"><br>
<label class="form-label">Province</label>
<select name="province" value="<%=rs.getString("province")%>"required>

<option value="Ontario">Ontario</option>
<option value="Alberta">Alberta</option>
<option value="Quebec">Quebec</option>
<option value="Manitoba">Manitoba</option>
</select>
</div>


<div alight="left"><br>
<label class="form-label">Category</label>
<select name="category_name" value="<%=rs.getString("category_name")%>" required><br>

<option value="Tutor">Tutor</option>
<option value="Cleaner">Cleaner</option>
<option value="Catering">Catering</option>
<option value="Photography">Photography</option>
</select>
</div>


<div alight="left">

<input type="hidden" class="form-control" placeholder="job description" value="<%=rs.getString("username")%>" name="username" value=${username} >
</div>

<div alight="left">
<input type="submit" id="submit" name="submit" value="Submit"class="btn btn-info" >
</div>
</div>
</div>

<%
}
}
catch(Exception e){}
%>
  

<section class="footer">
        <div class="container tex-center">
            <div class="row">
                <div class="col-md-3">
                    <h1>Useful Links</h1>
                    <p>Privacy Policy</p>
                    <p>Terms of Use</p>
                    <p>Return Policy</p>
                    <p>Discount Coupons</p>
                </div>
                <div class="col-md-3">
                    <h1>Company</h1>
                    <p>About Us</p>
                    <p>Contact Us</p>
                    <p>Career</p>
                    <p>Affiliate</p>
                </div>
                <div class="col-md-3">
                    <h1>Follow Us On</h1>
                    <p><i class="fab fa-facebook"></i> Facebook</p>
                    <p><i class="fab fa-youtube"></i> YouTube</p>
                    <p><i class="fab fa-linkedin"></i> Linkedin</p>
                    <p><i class="fab fa-twitter-square"></i> Twitter</p>
                </div>
                <div class="col-md-3 footer-image">
                    <h1>Download App</h1>
                    <img src="images/app-logo.png">
                </div>
            </div>
            <hr>
            <p class="copyright">@2020 <i class="fa fa-heart-o"></i> All right reserved </p>
        </div>
    </section>

  


  



</html>
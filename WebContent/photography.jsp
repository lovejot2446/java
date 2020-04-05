<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>  
    <%@ page import="java.sql.*" %>  
     
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %><!DOCTYPE html>
<html>
    <head>
        <title>Need Help?</title>
        <meta name="description" content="This is the description">
        
        
       
     
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="css/style4.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
					
						
						
    </head>
    <body>
    
     <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5e82709369e9320caabea3c7/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
               
       
    
    <%
    
   
    
    if(session.getAttribute("username")==null)
    	response.sendRedirect("login.jsp");
    
    
    %>
    <div class="login">
    
     Welcome${username}
     <a href="Logout">Logout</a>
    
    </div>
   
        <header class="main-header">
            <nav class="nav">
                <ul>
                    <li><a href="services.jsp">HOME</a></li>
                    <li><a href="insert.jsp">POST</a></li>
                    <li><a href="about.jsps">ABOUT</a></li>
                    </ul>
                    
            
            </nav>
            <h1 class="band-name band-name-large">Need Help?</h1>
        </header>
        
        <section class="container content-section">
             <h2 class="section-header">Photography</h2>
            <div class="shop-items">
                <div class="shop-item">
                
                <div class="boxed1">
        <div class="job-title">       
Mississauga Photographers
</div>

<div class="job-description">
Toronto Photographers is an award winning photo studio with best wedding photographers based in Brampton, Ontario. Born out of passion for photography, Pistu Studio has been providing wedding photography and videography services from over three decades. At Pistu Studio, we know that on your wedding day, every small thing is precious and meaningful

</div>

<div class="apply">Easily Apply</div>
<div class="contact">
missiphoto@gmail.com
</div>
<div class="job-location">
Toronto,Ontario

</div>
<div class="update">
<Button style="color:gren">Edit</Button></a>
 </edit>
 </div>
                   
                   
   <div class="delete">                
<button class="btn btn-primary shop-item-button" type="button">Delete</Button></a>
</div>

                
                   <div class="shop-item-details">
                 
                      <span class="shop-item-price"></span>
                      
                    </div>
                    </div>
                    </div>
                   </div>
             </section>
                
        
        
                
        
        
        <% 

response.setContentType("text/html");

Class.forName("oracle.jdbc.driver.OracleDriver"); 

Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lovejot","lovejot123");
PreparedStatement ps=conn.prepareStatement("select * from job where category_name='Photography'");
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	
	
	
	
	
	
	
	String job_id=rs.getString("id");
	
	%>
	

	
	
	

        
        
        <section class="container content-section">
            
            <div class="shop-items">
                <div class="shop-item">
                
                <div class="boxed">
        <div class="job-title">       
<%=rs.getString("job_title") %><br>
</div>

<div class="job-description">
<%=rs.getString("job_description") %><br>
</div>



<div class="apply">Easily Apply</div>
<div class="contact">
<%=rs.getString("contact") %>
</div>
<div class="job-location">
<%=rs.getString("city") %>,<%=rs.getString("province") %>

</div>
<div class="update">
 <a href="update.jsp?id=<%=job_id %>" ><Button style="color:gren">Edit</Button></a>
 </edit>
 </div>
                   
                   
   <div class="delete">                
<a href="delete.jsp?id=<%=job_id %>"> <button class="btn btn-primary shop-item-button" type="button">Delete</Button></a>
</div>

                
                   <div class="shop-item-details">
                 
                      <span class="shop-item-price"></span>
                      
                    </div>
                    </div>
                    </div>
                   </div>
             </section>
            <% 
	
}
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

    </body>
</html>
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
        <title>NEED HELP? </title>
        <meta name="description" content="This is the description">
        
     
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="css/style4.css" />
       <link href="https://fonts.googleapis.com/css?family=IBM+Plex+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

      <link href="css/style2.css" rel="stylesheet" type="text/css">
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
                    <li><a href="about.jsp">ABOUT</a></li>
                    
                    </ul>
                   
            
            </nav>
            <h1 class="band-name band-name-large">Need Help?</h1>
        </header>
        
    
    <!--feature categories-->
    <br><br>
    <div class="container">
            <div class="jumbotron jumbotron_style">
                <h1>Welcome to our Need help? store!</h1>
                <p> We have the best Tutors, Cleaners, Technicians and much more for you.No need to hunt it around,we have all in one
                    place.
                </p>
                
                
            </div>
            </div>
    
    <!----on sale products------>
    <section class="on-sale">
        <div class="container">
            <div class="title-box">
                <h2>SERVICES</h2>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="product-top">
                       <img src="images/1.jpg">
                        
                    </div>
                    <div class="product-bottom text-center">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        </i>
                       
                            <h3>Tutors</h3>
                            
                            <td><a href="tuitor.jsp"><button>More Info</button></a></td>	
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="product-top">
                        <img src="images/cleaner.jpg"></a>
                       
                    </div>
                    <div class="product-bottom text-center">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                       <h3>Cleaners</h3>
                            
                            <a href="cleaner.jsp"><button>More Info</button></a></td>	
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="product-top">
                        <img src="images/food.jpg"></a>
                       
                    </div>
                    <div class="product-bottom text-center">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                        <h3>Food or Catering</h3>
                            
                            <a href="catering.jsp"><button>More Info</button></a></td>	
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="product-top">
                      <img src="images/photography.jpg"></a>
                        
                    </div>
                    <div class="product-bottom text-center">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        
                        <i class="fa fa-star-half"></i>
                        <h3>Photography</h3>
                            
                            <a href="photography.jsp"><button>More Info</button></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

   <!-- new produets -->
    <section class="new-products">
        <div class="container">
            <div class="title-box">
                <h2>New Arrivals</h2>
            </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="product-top">
							<img src="images/fitness.jpg">
                            
                            
                        </div>
                        <div class="product-bottom text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                             <h3> Fitness Trainer</h3>
                            <p>Coming Soon</p>
                            <button class="add-to-cart">More Info</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="product-top">
                            <img src="images/childcare.jpg"></a>
                            
                        </div>
                        <div class="product-bottom text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                            <h3> Childcare or Nanny</h3>
                            <p>Coming Soon</p>
                            <button class="add-to-cart">More Info</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="product-top">
                            <img src="images/mover.jpg"></a>
                           
                        </div>
                        <div class="product-bottom text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                            <h3>Moving Stuff</h3>
                            <p>Coming Soon</p>
                            <button class="add-to-cart">More Info</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="product-top">
                            <img src="images/music.jpg"></a>
                            
                        </div>
                        <div class="product-bottom text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                            <h3>Music Lessons</h3>
                            <p>Coming Soon</p>
                            <button class="add-to-cart">More Info</button>
                        </div>
                    </div>
            </div>
        </div>
</section>

                 <section class="new-products">
        <div class="container">
            <div class="title-box">
                <h2>New Arrivals</h2>
            </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="product-top">
                            <img src="images/health.jpg"></a>
                            
                        </div>
                        <div class="product-bottom text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                             <h3>Health and Beauty</h3>
                            <p>Coming Soon</p>
                            <button class="add-to-cart">More Info</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="product-top">
                            <img src="images/plumber.jpg"></a>
                            
                        </div>
                        <div class="product-bottom text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                            <h3>Plumber</h3>
                            <p>Coming Soon</p>
                            <button class="add-to-cart">More Info</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="product-top">
                            <img src="images/wedding.jpg"></a>
                            
                        </div>
                        <div class="product-bottom text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                            <h3>Wedding</h3>
                            <p>Coming Soon</p>
                            <button class="add-to-cart">More Info</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="product-top">
                            <img src="images/technical.jpg"></a>
                           
                        </div>
                        <div class="product-bottom text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                            <h3>Technical Services</h3>
                            <p>Coming Soon</p>
                            <button class="add-to-cart">More Info</button>
                        </div>
                    </div>
            </div>
        </div>
</section>
   </section>
   
   <!-- website feature section -->

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
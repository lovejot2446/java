<html>
<head>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/style4.css" rel="stylesheet" type="text/css">
        
         
      
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

<div id="about1">
ABOUT
</div>

<div class="about">

<p>Our Company was found in the fourth semester of the college. By using our app clients can post  the jobs or services to hire people. One can post the jobs depending upon his needs according to  the location he wants.
   Soon, the app will be launch officially.We are going to add some new features in our app through which client can see the samples of the employee works.
In this project we have created an application in which clients can post the jobs depending on their location. While posting job individual have to mention the "Job Title", "Job Description","Category"," Contact", "Province", "City".Before posting the job one have to make sure that he has been registered and afterthat one have to login his account and start the process.There are three option in navigaton bar "Home", "Post", "About".A client can post the jobs by selecting and filling the required fileds from the post option  post option   in navigation bar. We have added some more features for our clients If the  client wants to edit or remove the job posting after the job posted  then he can do it by simply pressing edit or delete button.

For the job seekers , we also added some features like if the individual is looking for particular type of job then one can easily go to home page and can click on the button more info under each service.For example, if individual is looking for tutor then he can click the "more info" option under  the service "Tutor" and can see the posting there. 

</p>
</div>


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
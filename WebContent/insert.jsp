<html>
<head>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/style4.css" rel="stylesheet" type="text/css">
        
         
     
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
						
    </head>
    <body>
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
               
       
       

<form action="InsertServlet" method="post"> 
<table cellpadding="10"  width="50%" bgcolor="99FFFF" align="center"
cellspacing="2">


<div class="row">
<div class="col-sm-4">

<div alight="left">
<label class="form-label">Job Title</label>
<input type="text" class="form-control" placeholder="job Title" name="job_title" required >
</div>

<div alight="left">
<label class="form-label">Job Description</label>
<input type="text" class="form-control" placeholder="job description" name="job_description" >
</div>


<div alight="left">
<label class="form-label">Contact</label>
<input type="text" class="form-control" placeholder="contact" name="contact" required>
</div>

<div alight="left"><br>
<label class="form-label">City</label>
<select name="city" required><br>
<option value="-1" selected>select..</option>
<option value="Brampton">Brampton</option>
<option value="Mississauga">Mississauga</option>
<option value="Montreal">Montreal</option>
<option value="Toronto">Toronto</option>
</select>
</div>


<div alight="left"><br>
<label class="form-label">Province</label>
<select name="province" required><br>
<option value="-1" selected>select..</option>
<option value="Ontario">Ontario</option>
<option value="Alberta">Alberta</option>
<option value="Quebec">Quebec</option>
<option value="Manitoba">Manitoba</option>
</select>
</div>


<div alight="left"><br>
<label class="form-label">Category</label>
<select name="category_name" required><br>
<option value="-1" selected >select..</option>
<option value="Tutor">Tutor</option>
<option value="Cleaner">Cleaner</option>
<option value="Catering">Catering</option>
<option value="Photography">Photography</option>
</select>
</div>


<div alight="left">

<input type="hidden" class="form-control" placeholder="job description"  name="username" value=${username} >
</div>

<div alight="left">
<input type="submit" id="submit" value="Submit"class="btn btn-info" >
</div>
</div>
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
<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Custom Login Form Styling</title>
        <meta name="description" content="Custom Login Form Styling with CSS3" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="CustomLoginFormStyling/css/style.css" />
		<script src="js/modernizr.custom.63321.js"></script>
		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>	
			@import url(http://fonts.googleapis.com/css?family=Raleway:400,700);
			body {
				background: #7f9b4e url(CustomLoginFormStyling/images/bg2.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
		</style>
		<script>
		function valid()
{
var aa=document.s.Name.value;
if(aa=="")
{
alert("Enter Name");
document.s.Name.focus();
return false;
}

var pass=document.s.Password.value;
if(pass=="")
{
alert("Enter Password");
document.s.Password.focus();
return false;
}



// b=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;
//                 if(!b.test(document.s.Password.value))
//                 {
//                     alert("please Enter  One Uppercase,One Lowercase and One Digit and atleast 8 characters");
//                     document.s.Password.focus();
//                     return false;
//                 }

               var cpass=document.s.RetypePassword.value;
                if(cpass=="")
                {
                alert("Enter Retype Password");
                document.s.RetypePassword.focus();
                return false;
                }
                
                if(cpass!=pass)
                {
                alert("Enter Correct Retype Password");
                document.s.RetypePassword.focus();
                return false;
                }         
                var email=document.s.Email.value;
                if(email=="")
                {
                alert("Enter email");
                document.s.Email.focus();
                return false;
                }  
                
                var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
                var m=emailfilter.test(document.s.Email.value);
                if(m==false)
                {
                alert("Please enter a valid Email Id");
                document.s.Email.focus();
                return false;
                }            
var k = document.s.MobileNumber.value;
if(k=="")
{
alert("Enter mobile number");
document.s.MobileNumber.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.MobileNumber.focus();
return false;
}
if(k.charAt(0)!=9 && k.charAt(0)!=8 && k.charAt(0)!=7)
{
alert("Enter the correct mobile no");
document.s.MobileNumber.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.s.MobileNumber.focus();
return false;
}



}
</script>
    </head>
    <body>
        <div class="container">
		
			<!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="http://tympanus.net/Tutorials/RealtimeGeolocationNode/">
                    <strong>&laquo; Previous Demo: </strong>Real-Time Geolocation Service with Node.js
                </a>
                <span class="right">
                	<a href="http://www.flickr.com/photos/12943476@N04/4017721337/in/photostream">Background by Robert Hamilton</a>
                    <a href="http://tympanus.net/codrops/?p=11372">
                        <strong>Back to the Codrops Article</strong>
                    </a>
                </span>
            </div><!--/ Codrops top bar -->
			
			<header>
			
				
				<h1><strong><font color="brown">RELEVANCE FEATURE DISCOVERY FOR TEXT MINING</font></strong></h1>
				<h2><strong><font color="green">Task Mining Agent</font></strong></h2>
				<nav class="codrops-demos">
<!-- 					<a href="index.html">Demo 1</a> -->
<!-- 					<a href="index2.html">Demo 2</a> -->
<!-- 					<a href="index3.html">Demo 3</a> -->
<!-- 					<a class="current-demo" href="index4.html">Demo 4</a> -->
<!-- 					<a href="index5.html">Demo 5</a> -->
				</nav>

				<div class="support-note">
					<span class="note-ie">Sorry, only modern browsers.</span>
				</div>
				
			</header>
			
			<section class="main">
				<form class="form-4" action="RegisterServlet" method="post" name="s" onSubmit="return valid()">
				    <h1>Register</h1>
				    <p>
				        <label for="Name">Username or email</label>
				        <input type="text" name="Name" placeholder="Username">
				    </p>
				    <p>
				        <label for="Password">Password</label>
				        <input type="password" name="Password" placeholder="Password"> 
				    </p>
				     <p>
				        <label for="RetypePassword">RetypePassword</label>
				        <input type="password" name="RetypePassword" placeholder="RetypePassword" > 
				    </p>
				     <p>
				        <label for="Email">Email</label>
				        <input type="text" name="Email" placeholder="Email"> 
				    </p>
				     <p>
				        <label for="MobileNumber">Mobile Number</label>
				        <input type="text" name="MobileNumber" placeholder="MobileNumber"> 
				    </p>

				    <p>
				        <input type="submit" name="submit" value="Register">
				    </p>   
				        
				</form>€‹
			</section>
			
        </div>
    </body>
</html>
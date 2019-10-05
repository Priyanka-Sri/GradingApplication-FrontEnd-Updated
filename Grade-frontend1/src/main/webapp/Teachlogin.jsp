<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>TEACHER LOGIN HERE</title>
<script src="js/jquery-3.4.1.min.js"></script>
	<!-- meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Soft Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //meta-tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">


</head>
<body>

	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
                                    <span class="" aria-hidden="true"></span>APPLICATION OF GRADING SYSTEM 
				</p>
			</div>
			<div class="header-top-righ">
					
				
					<a href="index.jsp">
						<span class="fa fa-sign-out" aria-hidden="true"></span>HOME</a>
				</div> 
			<div class="bottom_header_right">
				
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header">
		<div class="content white">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.html">
							<h1>
								<span class=" fa fa-leanpub" aria-hidden="true"></span>  ONLINE GRADING SYSTEM 
								<label> WELCOME TO TEACHER LOGIN</label>
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	




<div class="register-form-main">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>L</span>ogin
					<span>F</span>orm
				</h3>
				<div class="tittle-style">

				</div>
			</div>
		
                    <div class="login-form">
				
					<div class="">
						<label for="username"><b>EMAIL-ID</b></label>
    <input type="text" name="UserName" id="UserName"   required autofocus />
					</div>
					<div class="">
						<label for="psw"><b>PASSWORD</b></label>
<input type="PassWord" name="PassWord" id="Password"   required  />
					</div>
					
					<div class="login-agileits-bottom wthree">
						
					</div>
					<input type = "button" value = "Submit" class="btn btn-success" onclick=login()>
<button type="submit" class="btn btn-danger" value="clear">clear </button>
					
				</form>
			</div>

		</div>
	</div>

<script>
function login()
{
	//alert('adminlogin');
   event.preventDefault();
 var admin_name = document.getElementById("UserName").value;
 var pass=document.getElementById("Password").value;
 var formData = "UserName=" + admin_name + "&Password=" + pass;
 console.log(formData);
// alert(formData);
  var url="http://localhost:8080/GradeWeb/TeacherLog?" + formData;
  console.log(url);
//alert(url);
  var formData = {};
  $.getJSON(url, function(response){
       //console.log(response);
       //alert(response);
       console.log(response.errorMessage);
       
       //var msg = JSON.parse(response);
       var msg = response;
       console.log("role=>"+msg.ROLE);
      // alert(msg);
           if (msg.ROLE == null) {
              // alert("Invalid Username/Password");
           } else {
             //  alert("Login Successful");
               window.location.href = "Teacherfeature.jsp";
           }
       
  });
}



</script> 
</body>
</html>
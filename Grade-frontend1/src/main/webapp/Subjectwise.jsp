<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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



	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
                                    <span class="" aria-hidden="true"></span>APPLICATION OF GRADING SYSTEM 
				</p>
			</div><div class="header-top-righ">
					
				
					<a href="index.jsp">
						<span class="fa fa-sign-out" aria-hidden="true"></span>Log Out</a>
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
								<label> GRADEWISE LIST</label>
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
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>
<script>
function mainmenu(){
	event.preventDefault();
		var sub = document.getElementById("sub").value;
		var formData = "sub=" + sub;
		 console.log(formData);
		 //alert(formData);
		  var url="http://localhost:8080/GradeWeb/Subjectwise?"+ formData;
		  console.log(url);
		//alert(url);
		  var formData = {};
		  $.get(url, function(response){
		       console.log(response);
		      // alert(response);
		       if ( response = null ) {
	               alert("Invalid Subject Name");
	           }
	               else{
	                window.location.href="Subjectwisetable.jsp";
	               }
		  });
	}
	</script>
<body>
<%--<jsp:include page="Header.jsp"></jsp:include>--%>
<form onsubmit="mainmenu()">
<div class="register-form-main">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>S</span>UBJECT
					<span>W</span>ISE
				</h3>
				<div class="tittle-style">

				</div>
			</div>
		
                    <div class="login-form">
				
					<div class="">

<input type="text" name="subject" id="sub" placeholder="Enter subject"  required autofocus />
<br/>

<CENTER>
<button type="submit" class="btn btn-success" value="clear">SUBMIT </button>
</CENTER>
</form>

</body>
</html>
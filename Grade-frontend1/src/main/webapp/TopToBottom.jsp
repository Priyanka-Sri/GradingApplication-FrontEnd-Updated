<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="ISO-8859-1">
<title>STUDENTS LIST </title>
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



	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
                                    <span class="" aria-hidden="true"></span>APPLICATION OF GRADING SYSTEM 
				</p>
			</div>
			<div class="header-top-righ">
					
				
					<a href="Adminfestures.jsp">
						<span class="fa fa-sign-out" aria-hidden="true"></span>Back</a>
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
								<label> STUDENTS LIST</label>
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
<script>
function loadBooks (){

//alert('enter');
	var url = "http://localhost:8080/GradeWeb/Toptobottom";
  $.getJSON(url, function(response){
        var books = response;
    //alert(response);
   document.getElementById("tbody").innerHTML = "";
   var content = "";
   var i = 0;
   for(let us of books){
       console.log(books);
       content += "<tr>";
       content += "<td>" + ++i + "</td>";
       content += "<td>" + us.Sname + "</td>";
       content += "<td>" + us.REGNO + "</td>";
       content += "<td>" + us.Total + "</td>";
       content += "<td>" + us.Avg + "</td>";
       content += "<td>" + us.Grade + "</td>";
      
       content += "</tr>";
   }
   console.log(content);
   document.getElementById("tbody").innerHTML =  content;
});
}
</script>

<center>
  
    <form>
        <div class="container-fluid">
            <div class="row">
                <div class="col"><div class="container-fluid">
           <div class="row">
               <div class="col"><div class="register-form-main">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>S</span>TUDENTS
					<span>L</span>IST
					
				</h3>
				<div class="tittle-style">

				</div>
			</div>
		
                    <div class="login-form">
				
					<div class="">
                    
                    <table border="1" class="table table-condensed" id="tbl">
                        <thead>
                            <tr>
                            <th>S.no</th>
                                <th>STUDENT NAME </th>
                                <th>REGNO</th>
                                <th>Total</th>
                                <th>Avg</th>
                                <th>Grade</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <script>
loadBooks();
</script>
    </form>
   
</body>
</html>
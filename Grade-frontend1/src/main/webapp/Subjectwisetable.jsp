<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>SUBJECT WISE RESULT</title>
<meta charset="ISO-8859-1">
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
					
				
					<a href="Teacherfeature.jsp">
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
<script>
function subjectwisetable(){
	var sub = $('#subject').val();
  var url = "http://localhost:8080/GradeWeb/Subjectwise?sub=" + sub;
  console.log(url);
 $.getJSON(url, function(response){
       var books = response;
  document.getElementById("tbody").innerHTML = "";
  var content = "";
  var i = 0;
  for(let us of books){
      console.log(books);
      content += "<tr>";
      content += "<td>" + ++i + "</td>";
      content += "<td>" + us.Sname + "</td>";
      content += "<td>" + us.REGNO + "</td>";
      content += "<td>" + us.SUBNAME  + "</td>";
      content += "<td>" + us.MARKS  + "</td>";
      content += "</tr>";
  }
  console.log(content);
  document.getElementById("tbody").innerHTML =  content;
});
}
</script>
</head>
<body>

<%
String sub = request.getParameter("sub");
%>
  <%--  <jsp:include page="Header.jsp"></jsp:include> --%>
 
   <form>
   <div class="container-fluid">
           <div class="row">
               <div class="col"><div class="register-form-main">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>S</span>UBJECT
					<span>W</span>ISE
					<span>R</span>ESULT
				</h3>
				<div class="tittle-style">

				</div>
			</div>
		
                    <div class="login-form">
				
					<div class="">
       <div class="container-fluid">
           <div class="row">
               <div class="col"> <center> 
                  <select onchange="subjectwisetable()" id="subject">
    <center>  <option value=""> SELECT YOUR SUBJECT
                 </option>
                 <option value="COM">COMPUTER
                 </option>
                 <option value="ENG">ENGLISH
                 </option>
                 <option value="SCI">SCIENCE
                 </option>
                 <option value="SOC">SOCIAL
                 </option>
                 <option value="MAT">MATHEMATICS
                 </option>
                  </select></center> <br><br>
                   <table border="1" class="table table-condensed" id="tbl">
                       <thead>
                           <tr>
                           <th>S.no</th>
                               <th>STUDENT NAME </th>
                               <th>REGISTER NUMBER</th>
                               <th>SUBJECT</th>
                               <th>MARK</th>
                           </tr>
                       </thead>
                       <tbody id="tbody">
                       </tbody>
                   </table>
               </div>
           </div>
       </div>
       <script>
       subjectwisetable(<%=sub%>);
</script>
   </form>
  
</body>
</html>
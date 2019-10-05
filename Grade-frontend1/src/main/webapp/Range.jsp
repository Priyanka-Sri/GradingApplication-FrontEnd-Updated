<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Score Range</title>
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
					
				
					<a href="Adminfestures.jsp">
						<span class="fa fa-sign-out" aria-hidden="true"></span>BACK</a>
				</div>
			<div class="bottom_header_right">
				
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	
</head>
<body>
<meta charset="ISO-8859-1">

<script src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
   <script src="js/util.js"></script>




    
    <form onsubmit="test()" >
        
    

		<center>	<table style="with: 50%">
				<tr>
                                   <td>  &nbsp;&nbsp;&nbsp;  MAX<br>
                                        <br><input type="number" name="max1" id="m1"min="0"max="100"/><br>
                                        <br> <input type="number" name="max2"id="m2" min="0"max="100" /><br>
                                        <br> <input type="number" name="max3" id="m3" min="0"max="100"/><br>
                                        <br> <input type="number" name="max4" id="m4" min="0"max="100"/></td><br>
				
                                <td>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;MIN<br><br>
					                   
					                   <input type="number" name="min1" id="n1"min="0"max="100"/><br>
                                        <br> <input type="number" name="min2" id="n2"min="0"max="100"/><br>
                                        <br> <input type="number" name="min3" id="n3" min="0"max="100"/><br>
                                       <br> <input type="number" name="min4" id="n4" min="0"max="100"/><br>
                                </td>
                                <td> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;GRADE<br><br>
					                        
<input type="text"name="g1"id="g1"pattern="[ABDF]{1}" title="It's accept only A/B/D/F"/><br>
<br><input type="text"name="g2"id="g2"pattern="[ABDF]{1}" title="It's accept only A/B/D/F"/><br>
<br><input type="text"name="g3"id="g3"pattern="[ABDF]{1}" title="It's accept only A/B/D/F"/><br>
<br><input type="text"name="g4"id="g4"pattern="[ABDF]{1}" title="It's accept only A/B/D/F"/><br>
					                        
                                </td>
				
				</tr></table>
  
 <br><br>
   
   
    <input type="submit" value="SUBMIT" class="btn btn-success"><br><br>
		<input type="reset" class="btn btn-danger" value="clear">	
       </center>
  
</form>



	<script>
	
	
		function test() {

event.preventDefault();
var min11 = document.getElementById("n1").value;
var max11 = document.getElementById("m1").value;
var grade11 = document.getElementById("g1").value;

var min22 = document.getElementById("n2").value;
var max22 = document.getElementById("m2").value;
var grade22 = document.getElementById("g2").value;


var min33 = document.getElementById("n3").value;
var max33 = document.getElementById("m3").value;
var grade33 = document.getElementById("g3").value;

var min44 = document.getElementById("n4").value;
var max44 = document.getElementById("m4").value;
var grade44 = document.getElementById("g4").value;


var formData ="min1=" + min11 +"&max1=" + max11 +"&grade1=" +grade11
+"&min2=" + min22 +"&max2=" + max22 +"&grade2=" +grade22
+"&min3=" + min33 +"&max3=" + max33 +"&grade3=" +grade33
+"&min4=" + min44 +"&max4=" + max44 +"&grade4=" +grade44;


console.log(formData);
//alert(formData);
var url = "http://localhost:8080/GradeWeb/Rage?"+ formData;
console.log(url);

var registerPromise = $.ajax(url, "GET", formData);

alert('successfully Range updated');
window.location.href = "Adminfestures.jsp";

   /*registerPromise.then(function(response) {
        console.log("Error:" + JSON.stringify(response));
        var msg = JSON.parse(response).responseMessage;
       
        console.log(msg);
        alert(msg);
        document.querySelector("#message").innerHTML = "<font color='red'>" + msg + "</font>";

       
    });*/
			
			
			} 

		
		</script>

</body>
</html>


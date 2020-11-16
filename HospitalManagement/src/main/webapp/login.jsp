<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="sf"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">



<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />

<style type="text/css">
.form-container {
	position: absolute; 
	top:5vh;
	background : #fff;
	padding: 50px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px 0px #000;
	background: #fff;
	margin-left: 40px;
}
</style>

<title>Log-in</title>
</head>
<body>

	<div class="container-fluid p-0 m-0">

		<%@include file="header.jsp"%>

	</div>

	<div class="col-md-6 text right">
		<br />
		<section class="container-fluid">
			<section class="row-justify-content-center">

				<form class="form-container" action="verifyuser" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Email Address :</label> <input
							type="email" placeholder="Enter Email" name="email" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"> <small
							id="emailHelp" class="form-text text-muted">We'll never
							share your email with anyone else.</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password :</label> <input
							type="password" name="password" placeholder="Enter Password" class="form-control"
							id="exampleInputPassword1">
					</div>

					<label for="exampleFormControlSelect1">User Type :</label>
					<div class="row">
						<div class="col-md-6 text right" style="margin-left: 200px">
							<select name="utype" class="form-control "
								id="exampleFormControlSelect1">


								<option>Admin</option>
								<option>Doctor</option>
								<option>Receptionist</option>

							</select>
						</div>
					</div>
					<br />
					<br />
					<div>
						<button type="submit" class="btn btn-primary">SignIn</button>
					</div>

				</form>

			</section>
		</section>
	</div>





	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

	<!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
</body>
</html>


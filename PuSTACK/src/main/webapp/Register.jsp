<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page isELIgnored = "false" %>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : Register</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="Components/navbar.jsp"%>

	<div class="container ">
		<div class="row my-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center my-1">
							<i class="fa-solid fa-book-open-reader"></i> Register
						</h3>
							
						<c:if test="${not empty succMsg }">
								<p class="text-center text-success">${succMsg }</p>
								<c:remove var="succMsg"/>
							</c:if>
							
							<c:if test="${not empty failedMsg }">
								<p class="text-center text-danger">${failedMsg }</p>
								<c:remove var="failedMsg"/>
							</c:if>
							
						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter name"
									required="required" name="fname">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="required" name="email">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone Number</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Mobile"
									required="required" name="phno">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name="password">
							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1" >
								<lable class="from-check-lable" for="exampleCheck1">Agree
								terms and conditions</lable>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary my-2">Register</button>
								<br />
							</div>
							<a href="Register.jsp">Login?</a>
						</form>



					</div>
				</div>
			</div>
		</div>
	</div>




	<footer>
		<%@include file="Components/footer.jsp"%>
	</footer>


</body>
</html>
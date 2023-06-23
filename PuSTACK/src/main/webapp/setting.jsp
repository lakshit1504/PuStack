<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page isELIgnored = "false" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : setings</title>
<%@include file="/Components/allCss.jsp"%>
<style type="text/css">
 a{
 	text-decoration:none;
 	color:#400080;
 }
 a:hover{
 	color:rgb(50, 10, 87);
 	background-color: rgb(192, 192, 192);
 	text-decoration:none;
 }
</style>
</head>
<body style="background-color: #f0f1f2;">

	<c:if test="${empty userobj}">
		<c:redirect url="Login.jsp"></c:redirect>
			
	</c:if>

	<%@include file="Components/navbar.jsp"%>
	

	<h3 class="text-center">Hello ${userobj.name}</h3>

		<div class="container">
			<div class="row pt-5 text-center">
				<div class="col-md-4">
					<div class="card">
						<a href="sell_book.jsp">
							<div class="card-body">
								<i class="fa-solid fa-book-open-reader fa-5x"></i>
								<h3 class="mt-3">Sell old Books</h3>
							</div>
						</a>
					</div>
				</div>
				
				<div class="col-md-4">
					<div class="card">
						<a href="old_book.jsp">
							<div class="card-body">
								<i class="fa-solid fa-book-open-reader fa-5x"></i>
								<h3 class="mt-3">Old Books</h3>
							</div>
						</a>
					</div>
				</div>
				
				<div class="col-md-4">
					<div class="card">
						<a href="edit_profile.jsp">
							<div class="card-body">
								<i class="fa-solid fa-user fa-5x"></i>
								<h3 class="mt-3">Login and Security</h3>
								
							</div>
						</a>
					</div>
				</div>
				
				<div class="col-md-4 mt-4">
					<div class="card">
						<a href="user_address.jsp">
							<div class="card-body">
								<i class="fa-solid fa-location-dot fa-5x"></i>
								<h3 class="mt-3">Your Address</h3>
								<h6>Edit Address</h6>
							</div>
						</a>
					</div>
				</div>
				
				<div class="col-md-4 mt-4">
					<div class="card">
						<a href="order.jsp">
							<div class="card-body">
								<i class="fa-solid fa-bag-shopping fa-5x"></i>
								<h3 class="mt-3"> My Orders</h3>
								<h6>Track Your Orders</h6>
							</div>
						</a>
					</div>
				</div>
				
				<div class="col-md-4 mt-4">
					<div class="card">
						<a href="helpline.jsp">
							<div class="card-body">
								<i class="fa-solid fa-phone fa-5x"></i>
								<h3 class="mt-3">Customer Care</h3>
								<h6>24x7 Service</h6>
							</div>
						</a>
					</div>
				</div>
				
				
			</div>
		</div>
<footer class="fixed-bottom">
		<%@include file="Components/footer.jsp"%>
	</footer>
</body>
</html>
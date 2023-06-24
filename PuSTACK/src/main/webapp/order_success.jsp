<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Successful</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="Components/navbar.jsp"%>
	
	<div class="container text-center mt-5">
		<i class="fas fa-check-circle fa-10x text-success"></i>
		<h1>Thank You</h1>
		<h2>Your order placed successfully</h2>
		<h5>Order will be delivered within 7 days</h5>
		<a href="index.jsp" class="btn btn-primary mt-3">Home</a>    <a href="order.jsp" class="btn btn-danger ml-2 mt-3">Orders</a>
	</div>

</body>
</html>
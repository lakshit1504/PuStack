<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : orders</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="Components/navbar.jsp"%>
	<div class="container">
		<h2 class="text-center my-4">Your Orders</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Order ID</th>
					<th scope="col">Name</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td>@mdo</td>
				</tr>
			</tbody>
		</table>

	</div>

</body>
</html>
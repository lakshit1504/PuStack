<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : orders</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color:#e3e3e3">
<c:if test="${empty userobj }">
		<c:redirect url="../Login.jsp"/>
	</c:if>
	<%@include file="navbar.jsp"%>

	
		<h2 class="text-center my-4">Orders</h2>

		<table class="table table-striped">
			<thead class="bg-dark text-white">
				<tr>
					<th scope="col">Order ID</th>
					<th scope="col">Customer Name</th>
					<th scope="col">Email</th>
					<th scope="col">Adress</th>
					<th scope="col">Phone No.</th>
					<th scope="col">Book</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Method</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@mdo</td>
					<td>the Bird</td>
					<td>@twitter</td>
					
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@mdo</td>
					<td>the Bird</td>
					<td>@twitter</td>
					
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@mdo</td>
					<td>the Bird</td>
					<td>@twitter</td>
					
				</tr>
			</tbody>
		</table>

	<footer class="fixed-bottom">
		<%@include file="../Components/footer.jsp"%>
	</footer>

</body>
</html>
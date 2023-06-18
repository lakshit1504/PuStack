<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : all books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color:#e3e3e3">
	<%@include file="navbar.jsp"%>

	<div class="container">
		<h2 class="text-center my-4">All Books</h2>

		<table class="table table-striped">
			<thead class="bg-dark text-white">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Auhtor</th>
					<th scope="col">Price</th>
					<th scope="col">Categories</th>
					<th scope="col">Status</th>
					<th scope="col">Action</th>
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
					<td>
						<a href="#" class="btn btn-sm btn-primary">Edit</a>
						<a href="#" class="btn btn-sm btn-danger">Remove</a>
					</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>
						<a href="#" class="btn btn-sm btn-primary">Edit</a>
						<a href="#" class="btn btn-sm btn-danger">Remove</a>
					</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>
						<a href="#" class="btn btn-sm btn-primary">Edit</a>
						<a href="#" class="btn btn-sm btn-danger">Remove</a>
					</td>
				</tr>
			</tbody>
		</table>


	</div>

	<footer class="fixed-bottom">
		<%@include file="../Components/footer.jsp"%>
	</footer>

</body>
</html>
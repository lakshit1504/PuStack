<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : home</title>
<%@include file="allCss.jsp"%>
<style type="text/css">

a{
	text-decoration:none;
}
a:hover{
	color:black;
	text-decoration:none;
}
.card{
	margin-top:50%;
	border-radius:20px;
}

.card:hover{

	background-color: #e3e3e3;
}


</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<a href="add_books.jsp" >
				<div class="card">
					<div class="card-body text-center text-primary">
							<i class="fas fa-plus-square fa-3x"></i><br/>
							<h4>Add Books</h4>
							----------
					</div>
				</div>
				</a>
			</div>
			
			<div class="col-md-3">
				<a href="all_books.jsp" >
				<div class="card">
					<div class="card-body text-center text-danger">
							<i class="fa-solid fa-book-open-reader fa-3x"></i><br/>
							<h4>All Books</h4>
							----------
					</div>
				</div>
				</a>
			</div>
			
			<div class="col-md-3">
				<a href="orders.jsp">
				<div class="card">
					<div class="card-body text-center text-warning">
							<i class="fa-solid fa-cart-flatbed-suitcase fa-3x"></i><br/>
							<h4>Orders</h4>
							----------
					</div>
				</div>
				</a>
			</div>
			
			<div class="col-md-3">
			<a href="add_books.jsp">
				<div class="card">
					<div class="card-body text-center text-primary">
							<i class="fa-solid fa-right-from-bracket fa-3x"></i><br/>
							<h4>Logout</h4>
							----------
					</div>
				</div>
				</a>
			</div>
		</div>
	</div>


	<footer class="fixed-bottom">
		<%@include file="../Components/footer.jsp"%>
	</footer>
</body>
</html>
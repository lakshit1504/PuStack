<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : home</title>
<%@include file="allCss.jsp"%>
	
	

<style type="text/css">
a {
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: none;
}

.card {
	margin-top: 50%;
	border-radius: 20px;
}

.card:hover {
	background-color: #e3e3e3;
}
</style>
</head>
<body>
<c:if test="${empty userobj }">
		<c:redirect url="../Login.jsp"/>
	</c:if>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center text-primary">
							<i class="fas fa-plus-square fa-3x"></i><br />
							<h4>Add Books</h4>
							----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center text-danger">
							<i class="fa-solid fa-book-open-reader fa-3x"></i><br />
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
							<i class="fa-solid fa-cart-flatbed-suitcase fa-3x"></i><br />
							<h4>Orders</h4>
							----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
					<div class="card">
						<div class="card-body text-center text-primary">
							<i class="fa-solid fa-right-from-bracket fa-3x"></i><br />
							<h4>Logout</h4>
							----------
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<!--logout modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Caution!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4 class="my-5">Confirm Logout?</h4>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<a href="../logout" type="button" class="btn btn-primary">Logout</a>
					</div>
				</div>
			</div>
		</div>
	</div>



	<footer class="fixed-bottom">
		<%@include file="../Components/footer.jsp"%>
	</footer>
</body>
</html>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK-Home</title>

<%@include file="/Components/allCss.jsp"%>
</head>
<body>
	<%@include file="Components/navbar.jsp"%>
	
	
	<div class="container-fluid back-img">
		<h2 class="text-center text-dark">
			<i class="fa-solid fa-list-check"></i> E-BOOK Management System
		</h2>
	</div>
	
	 
	
	<!-- recent books -->
	<div class="container">
			<h3 class="text-center my-3">Recent Books</h3>
			<div class="row">
				<!-- card-->
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: New</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
					<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: New</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: New</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: New</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
		</div>
	  <div class="text-center mt-4">
	   <a href="" class="btn btn-custom "> View More</a>
	  </div>
	  
	  <!-- New books -->
	<div class="container my-5">
			<h3 class="text-center my-3">New Books</h3>
			<div class="row">
				<!-- card-->
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: New</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
					<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: New</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: New</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: New</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
		</div>
	  <div class="text-center mt-4">
	   <a href="" class="btn btn-custom"> View More</a>
	  </div>
	  
	  <!-- Old books -->
	<div class="container my-5">
			<h3 class="text-center my-3">Old Books</h3>
			<div class="row">
				<!-- card-->
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: Old</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
					<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: Old</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: Old</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/javaa.png" width="150px" height="200px" >
							<p>Java Programming</p>
							<p>Herbert Schildt</p>
							<p>Category: Old</p>
							<div class="row">
								<a href="" class="btn btn-sm btn-custom	ml-2" >Add Cart</a>
								<a href="" class="btn btn-sm btn-success ml-1" >View Detail</a>
								<a href="" class="btn btn-sm btn-custom	ml-1 " >299/-</a>
							</div>
						</div>
					</div>
				</div>
		</div>
	  <div class="text-center mt-4">
	   <a href="" class="btn btn-custom "> View More</a>
	  </div>
	  
	  </div>
	  </div>
</div>	
  <footer>
	  <%@include file="Components/footer.jsp"%>
	  </footer>
	 
</body>
</html>
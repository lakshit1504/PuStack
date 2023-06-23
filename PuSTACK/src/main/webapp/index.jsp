<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK-Home</title>

<%@include file="/Components/allCss.jsp"%>
</head>
<body>

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<%@include file="Components/navbar.jsp"%>


	<div class="container-fluid back-img">
		<h1 class="text-center  text-warning" style="padding:20vh;">
			<i class="fa-solid fa-award "></i> India's No.1 Online Book Bazaar
		</h1>
	</div>



	<!-- recent books -->
	<div class="mx-5 p-2">
		<h3 class="text-center my-3">Recent Books</h3>
		<div class="row">
			<!-- card-->
			<%
			BookDAOImpl daoo = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> listt = daoo.getRecentBooks();
			for (BookDtls b : listt) {
			%>
			<div class="col-md-3">
				<div class="card card-bg">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>" width="150px"
							height="200px">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Category:<%=b.getBookCategory()%></p>

						<%
						if (b.getBookCategory().equals("New")) {
						%>
						<div class="row">
							<%
							if (u == null) {
							%>
							<a href="Login.jsp" class="btn btn-sm btn-custom ml-5">Add
								Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-sm btn-custom	ml-5">Add Cart</a>

							<%
							}
							%>
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-sm btn-success ml-3">View</a> <a href=""
								class="btn btn-sm btn-custom	ml-3 "><%=b.getPrice()%> <i
								class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>


						<%
						} else {
						%>
						<div class="row">


							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-sm btn-success ml-5">View Details</a> <a href=""
								class="btn btn-sm btn-custom ml-5"><%=b.getPrice()%> <i
								class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
						<%
						}
						%>

					</div>
				</div>
			</div>
			<%
			}
			%>




		</div>
		<div class="text-center mt-4">
			<a href="all_recent_books.jsp" class="btn btn-custom "> View More</a>
		</div>

		<!-- New books -->
		<div class=" my-5">
			<h3 class="text-center my-3">New Books</h3>
			<div class="row">

				<!-- card-->

				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getNewBook();
				for (BookDtls b : list) {
				%>
				<div class="col-md-3">
					<div class="card card-bg">
						<div class="card-body text-center">
							<img alt="" src="books/<%=b.getPhotoName()%>" width="150px"
								height="200px">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>Category: New</p>
							<div class="row">


								<%
								if (u == null) {
								%>
								<a href="Login.jsp" class="btn btn-sm btn-custom ml-5">Add
									Cart</a>
								<%
								} else {
								%>
								<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
									class="btn btn-sm btn-custom	ml-5">Add Cart</a>

								<%
								}
								%>

								<a href="view_books.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-sm btn-success ml-3">View</a> <a href=""
									class="btn btn-sm btn-custom	ml-3 "><%=b.getPrice()%> <i
									class="fa-solid fa-indian-rupee-sign"></i></a>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>



			</div>
			<div class="text-center mt-4">
				<a href="all_new_books.jsp" class="btn btn-custom"> View More</a>
			</div>

			<!-- Old books -->
			<div class=" my-5">
				<h3 class="text-center my-3">Old Books</h3>
				<div class="row">
					<!-- card-->
					<%
					BookDAOImpl daooo = new BookDAOImpl(DBConnect.getConn());
					List<BookDtls> listtt = daooo.getOldBooks();
					for (BookDtls b : listtt) {
					%>
					<div class="col-md-3">
						<div class="card card-bg">
							<div class="card-body text-center">
								<img alt="" src="books/<%=b.getPhotoName()%>" width="150px"
									height="200px">
								<p><%=b.getBookName()%></p>
								<p><%=b.getAuthor()%></p>
								<p>Category: New</p>
								<div class="row">
									<a href="view_books.jsp?bid=<%=b.getBookId()%>"
										class="btn btn-sm btn-success ml-5">View Detail</a> <a href=""
										class="btn btn-sm btn-custom	ml-5 "><%=b.getPrice()%> <i
										class="fa-solid fa-indian-rupee-sign"></i></a>
								</div>
							</div>
						</div>
					</div>
					<%
					}
					%>




				</div>
				<div class="text-center mt-4">
					<a href="all_old_books.jsp" class="btn btn-custom "> View More</a>
				</div>

			</div>
		</div>
	</div>
	<footer>
		<%@include file="Components/footer.jsp"%>
	</footer>

</body>
</html>
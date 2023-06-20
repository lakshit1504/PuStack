<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAO"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : all books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #e3e3e3">
<c:if test="${empty userobj }">
		<c:redirect url="../Login.jsp"/>
	</c:if>
	<%@include file="navbar.jsp"%>

	
		<h2 class="text-center my-4">All Books</h2>
		
					<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" />
						</c:if>

		<table class="table table-striped">
			<thead class="bg-dark text-white">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Image</th>
					<th scope="col">Name</th>
					<th scope="col">Auhtor</th>
					<th scope="col">Price</th>
					<th scope="col">Categories</th>
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getAllBooks();

				for (BookDtls b : list) {
				%>
				<tr>
					<td><%=b.getBookId()%></td>
					<td><img src="../books/<%=b.getPhotoName()%>"
						style="width: 50px;"></td>
					<td><%= b.getBookName()%></td>
					<td><%= b.getAuthor()%></td>
					<td><%= b.getPrice()%></td>
					<td><%= b.getBookCategory()%></td>
					
					<td><%= b.getStatus()%></td>
					<td><a href="edit_books.jsp?id=<%=b.getBookId() %>" class="btn btn-sm btn-primary">Edit</a> <a
						href="../de?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger">Remove</a></td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>




	<footer >
		<%@include file="../Components/footer.jsp"%>
	</footer>

</body>
</html>
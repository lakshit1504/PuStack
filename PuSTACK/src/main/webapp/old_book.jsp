<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : books</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${empty userobj}">
		<c:redirect url="Login.jsp"></c:redirect>

	</c:if>
	<%@include file="Components/navbar.jsp"%>
	<h1 class="text-center my-3">Your Books</h1>
	<div class="container my-3">
		<c:if test="${not empty succMsg }">
			<p class="text-center text-success">${succMsg }</p>
			<c:remove var="succMsg" />
		</c:if>

		<c:if test="${not empty failedMsg }">
			<p class="text-center text-danger">${failedMsg }</p>
			<c:remove var="failedMsg" />
		</c:if>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<%
				User u = (User) session.getAttribute("userobj");

				String email = u.getEmail();
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getBookByOld(email, "Old");
				for (BookDtls b : list) {
				%>
				<tr>
					<th scope="row"><%=b.getBookName()%></th>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><a
						href="delete_old_book?email=<%=email%>&&bid=<%=b.getBookId()%>"
						class="btn btn-sm"
						style="background-color: #400080; color: white;">Remove</a></td>
				</tr>


				<%
				}
				%>


			</tbody>
		</table>
	</div>
</body>
</html>
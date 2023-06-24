<%@page import="com.entity.Book_order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : orders</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<c:if test="${empty userobj }">
		<c:redirect url="Login.jsp"></c:redirect>
	</c:if>
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
				<% 
					User u=(User)session.getAttribute("userobj");	
					BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
					List<Book_order> blist=dao.getBook(u.getEmail());
					
					
					for(Book_order b: blist){
				%>
					<tr>
					<th scope="row"><%=b.getOrderId() %></th>
					<td><%=b.getUserName() %></td>
					<td><%=b.getBookName() %></td>
					<td><%=b.getAuthor() %></td>
					<td><%=b.getPrice() %></td>
					<td><%=b.getPaymentType() %></td>
				</tr>
				<%} %>
				
			</tbody>
		</table>

	</div>

</body>
</html>
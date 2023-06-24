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
					<th scope="col">Address</th>
					<th scope="col">Phone No.</th>
					<th scope="col">Book</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Method</th>
				</tr>
			</thead>
			<tbody>
			<% 
					User u=(User)session.getAttribute("userobj");	
					BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
					List<Book_order> blist=dao.getBook();
					
					
					for(Book_order b: blist){
				%>
					<tr>
					<th scope="row"><%=b.getOrderId() %></th>
					<td><%=b.getUserName() %></td>
					<td><%=b.getEmail() %></td>
					<td><%=b.getFullAdd() %></td>
					<td><%=b.getPhno() %></td>
					<td><%=b.getBookName() %></td>
					<td><%=b.getAuthor() %></td>
					<td><%=b.getPrice() %></td>
					<td><%=b.getPaymentType() %></td>
				</tr>
				<%} %>
				
			</tbody>
		</table>

	<footer class="fixed-bottom">
		<%@include file="../Components/footer.jsp"%>
	</footer>

</body>
</html>
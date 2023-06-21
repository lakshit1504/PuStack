<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color:#f1f2f3">
	<%@include file="Components/navbar.jsp"%>
	
	<%
		int bid=Integer.parseInt(request.getParameter("bid"));
	
		BookDAOImpl dao= new BookDAOImpl(DBConnect.getConn());
		BookDtls b= dao.getBookById(bid);
	%>
	
	
	<div class="container p-5">
		<div class="row p-5 " style="background-color:white">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img alt="Book Image" src="books/<%=b.getPhotoName() %>" style="height: 200px;"><br />
				<h4 class="my-3">Book Name: <span class="text-success"><%=b.getBookName()%></span></h4>
				<h4 class="my-3">Author Name: <span class="text-success"><%=b.getAuthor()%></span></h4>
				<h4 class="my-3">Category: <span class="text-success"><%=b.getBookCategory()%></span></h4>
			</div>
		<div class="col-md-6 text-center p-5 border bg-white">
			<h2 class="my-3 p-3">CPP programming</h2>
				
				<%
					if("Old".equals(b.getBookCategory())){
				%>
					<h5>Contact Seller</h5>
					<h5 class="text-primary"><i class="fa-solid fa-envelope"></i> Email: <%=b.getEmail() %></h5>
				<%} %>
			
		
			<div class="row my-3">
				<div class="col-md-4 text-center text-success">
					<i class="fas fa-money-bill-wave fa-3x"></i>
					<p>cash on delivery</p>
				</div>
				<div class="col-md-4 text-center text-danger">
					<i class="fas fa-undo-alt fa-3x"></i>
					<p>1 month return policy</p>
				</div>
				<div class="col-md-4 text-center text-warning">
					<i class="fas fa-truck-moving fa-3x"></i>
					<p>free shipping</p>
				</div>
				
		</div>
				<div class="text-center m-auto">
				<%
					if("Old".equals(b.getBookCategory())){
				%>
						<a href="index.jsp" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Continue Shopping</a>
				<%}else{ %>
					<a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add to Cart</a>
					<%} %>
					<a href="" class="btn btn-danger"><i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
				</div>	
		</div>
	</div>
</div>
</body>
</html>
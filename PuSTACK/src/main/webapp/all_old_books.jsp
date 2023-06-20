<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Old Books</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body >
	<%@include file="Components/navbar.jsp"%>
		
		<div class="container">
		<h1 class="text-center my-3">Old Books</h1>
		<div class="row" >
			<!-- card-->
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllOldBooks();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3 my-4" >
				<div class="card card-bg">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>" width="150px"
							height="200px">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Category:<%=b.getBookCategory()%></p>

						
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-sm btn-success ml-5">View Detail</a> <a
								href="" class="btn btn-sm btn-custom	ml-1 "><%=b.getPrice()%><i
								class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
					
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		</div>
</body>
</html>
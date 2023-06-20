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
<title>Admin : add books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #e3e3e3;">

<c:if test="${empty userobj }">
		<c:redirect url="../Login.jsp"/>
	</c:if>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 my-4">
				<div class="card">
					<div class="card-body ">
						<div class="text-center">
							<h3>Edit Book</h3>
						</div>

						
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" />
						</c:if>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
						BookDtls b = dao.getBookById(id);
						%>

						<form action="../editbooks" method="post">
							<input type="hidden" name="id" value="<%=b.getBookId()%>">
								<div class="form-group">
								<label for="exampleInputBName">Book Name</label> <input
									type="text" class="form-control" id="exampleInputbname"
									placeholder="enter book name" required="required" name="bname"
									value="<%=b.getBookName()%>">

							</div>
								<div class="form-group">
								<label for="exampleInputAName">Author Name</label> <input
									type="text" class="form-control" id="exampleInputaname"
									placeholder="enter author name" required="required"
									name="author" value="<%=b.getAuthor()%>">

							</div>
								<div class="form-group">
								<label for="exampleInputPrice">Price</label> <input
									type="number" class="form-control" id="exampleInputprice"
									placeholder="enter price" required="required" name="price"
									value="<%=b.getPrice()%>">

							</div>
								<div class="form-group">
								<label for="exampleInputstatus">Book Status</label> <select
									class="form-control" id="inputstatus" required="required"
									name="status">
									
									<%if ("Active".equals(b.getStatus())) {%>
									<option value="Active" selected>Active</option>
									<option value="Inactive">Inactive</option>
									<%} else {%>
									
									<option value="Inactive" selected>Inactive</option>
									<option value="Active">Active</option>
									<%}%>
								</select>
							</div>
								<div class="text-center">
								<button type="submit" class="btn btn-primary my-2">Update</button>
								<br />
							</div>
						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

	<footer>
		<%@include file="../Components/footer.jsp"%>
	</footer>

</body>
</html>
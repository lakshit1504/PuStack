<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : checkout</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="Components/navbar.jsp"%>

	<c:if test="${empty userobj }">
		<c:redirect url="Login.jsp"></c:redirect>
	</c:if>
	<c:if test="${not empty succMsg}">
		<div class="alert alert-success" role="alert">${succMsg}</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger" role="alert">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>


	<div class="row p-2">
		<div class="col-md-6">
			<div class=card>
				<div class="card-body">
					<h3 class="text-center text-success">Your Selected Items</h3>
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
							CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
							List<Cart> cart = dao.getBookByUser(u.getId());

							Double totalPrice = 0.00;
							for (Cart c : cart) {
								totalPrice += c.getPrice();
							%>
							<tr>
								<th scope="row"><%=c.getBookName()%></th>
								<td><%=c.getAuthor()%></td>
								<td><%=c.getPrice()%></td>
								<td><a
									href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>&&cid=<%=c.getCid() %>"
									class="btn btn-sm btn-danger">Remove</a></td>
							</tr>

							<%
							}
							%>
							<tr>
								<td>Total Bill</td>
								<td></td>
								<td></td>
								<td><%=totalPrice%></td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card">
				<div class="card-body">
					<h3 class="text-center">Enter Details</h3>
					<form>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputName4">Name</label> <input type="text"
									class="form-control" id="inputName4" placeholder="enter name"
									value="<%=u.getName()%>" readonly="readonly">
							</div>
							<div class="form-group col-md-6">
								<label for="inputEmail4">Email</label> <input type="email"
									class="form-control" id="inputEmail4"
									placeholder="enter email address" value="<%=u.getEmail()%>">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputMobile4">Mobile No.</label> <input
									type="number" class="form-control" id="inputMobile4"
									placeholder="mobile" value="<%=u.getPhno()%>">
							</div>
							<div class="form-group col-md-6">
								<label for="inputAddress4">Address</label> <input type="text"
									class="form-control" id="inputAddress4" placeholder="address">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputLandmark4">Landmark</label> <input type="text"
									class="form-control" id="inputLandmark4" placeholder="landmark">
							</div>
							<div class="form-group col-md-6">
								<label for="inputCity4">City</label> <input type="text"
									class="form-control" id="inputCity4" placeholder="city">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputState4">State</label> <input type="text"
									class="form-control" id="inputState4" placeholder="state">
							</div>
							<div class="form-group col-md-6">
								<label for="inputPin4">Pin Code</label> <input type="number"
									class="form-control" id="inputPin4" placeholder="pin">
							</div>
						</div>

						<div class="form-group">
							<label for="inputType4">Pin Code</label> <select
								class="form-control">
								<option>--select--</option>
								<option value="COD">Cash On Delivery</option>
							</select>
						</div>
						<div class="text-center">
							<button class="btn btn-success mx-2">Order Now</button>
							<a href="index.jsp" class="btn btn-warning">Continue Shopping</a>
						</div>


					</form>
				</div>
			</div>
		</div>

	</div>

</body>
</html>
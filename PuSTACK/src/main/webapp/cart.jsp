<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : checkout</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="Components/navbar.jsp"%>

	<div class="row p-2">
		<div class="col-md-6">
			<div class=card>
				<div class="card-body">
					<h3 class="text-center text-success">Your Selected Items</h3>
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">First</th>
								<th scope="col">Last</th>
								<th scope="col">Handle</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry</td>
								<td>the Bird</td>
								<td>@twitter</td>
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
									class="form-control" id="inputName4" placeholder="enter name">
							</div>
							<div class="form-group col-md-6">
								<label for="inputEmail4">Email</label> <input type="email"
									class="form-control" id="inputEmail4"
									placeholder="enter email address">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputMobile4">Mobile No.</label> <input
									type="number" class="form-control" id="inputMobile4"
									placeholder="mobile">
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
								<label for="inputCity4">City</label> <input
									type="text" class="form-control" id="inputCity4"
									placeholder="city">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputState4">State</label> <input type="text"
									class="form-control" id="inputState4" placeholder="state">
							</div>
							<div class="form-group col-md-6">
								<label for="inputPin4">Pin Code</label> <input
									type="number" class="form-control" id="inputPin4"
									placeholder="pin">
							</div>
						</div>
						
						<div class="form-group">
							<label for="inputType4">Pin Code</label>
							<select class="form-control">
							<option >--select--</option>
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
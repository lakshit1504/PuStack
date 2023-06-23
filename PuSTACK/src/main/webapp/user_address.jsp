<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : address</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="Components/navbar.jsp"%>

	<div class="container ">
		<div class="row my-5">
			<div class="col-md-8 m-auto ">
				<div class="card">
					<div class="card-body">
						<form action="">

							<div class="form-row">

								<div class="form-group col-md-6">
									<label for="inputAddress4">Address</label> <input type="text"
										class="form-control" id="inputAddress4" placeholder="address">
								</div>
								<div class="form-group col-md-6">
									<label for="inputLandmark4">Landmark</label> <input type="text"
										class="form-control" id="inputLandmark4"
										placeholder="landmark">
								</div>
							</div>

							<div class="form-row">

								<div class="form-group col-md-4">
									<label for="inputCity4">City</label> <input type="text"
										class="form-control" id="inputCity4" placeholder="city">
								</div>


								<div class="form-group col-md-4">
									<label for="inputState4">State</label> <input type="text"
										class="form-control" id="inputState4" placeholder="state">
								</div>
								
								<div class="form-group col-md-4">
									<label for="inputPin4">Pin Code</label> <input type="number"
										class="form-control" id="inputPin4" placeholder="pin">
								</div>
							</div>
							
							<div class="text-center">
								<button class="btn">Add Address</button>
							</div>
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
<footer class="fixed-bottom">
		<%@include file="../Components/footer.jsp"%>
	</footer>

</body>
</html>
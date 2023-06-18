<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : add books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #e3e3e3;">
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 my-4">
				<div class="card">
					<div class="card-body ">
						<div class="text-center">
							<h3>Add Book</h3>
						</div>

						<form action="../booksAdd" method="post"
							enctype="multipart/form-data">


							<div class="form-group">
								<label for="exampleInputBName">Book Name</label> <input
									type="text" class="form-control" id="exampleInputbname"
									placeholder="enter book name" required="required" name="bname">

							</div>

							<div class="form-group">
								<label for="exampleInputAName">Author Name</label> <input
									type="text" class="form-control" id="exampleInputaname"
									placeholder="enter author name" required="required"
									name="author">

							</div>

							<div class="form-group">
								<label for="exampleInputPrice">Price</label> <input
									type="number" class="form-control" id="exampleInputprice"
									placeholder="enter price" required="required" name="price">

							</div>
							<div class="form-group">
								<label for="exampleInputCategory">Book Category</label> <select
									class="form-control" id="inputtype" required="required"
									name="Categories">
									<option selected>--select--</option>
									<option value="New">New Book</option>
								</select>

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Book Status</label> <select
									class="form-control" id="inputstatus" required="required"
									name="status">

									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>

							<div class="form-group">
								<lable for="exampleFormControlFile1">Upload Photo</lable>
								<input type="file" class="form-control-file" name="bimg"
									id="exampleFormControlFile1">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary my-2">Add
									Book</button>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page isELIgnored = "false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : sell book</title>
<%@include file="/Components/allCss.jsp"%>

</head>
<body style="background-color: #f0f1f2;">

<c:if test="${empty userobj}">
		<c:redirect url="Login.jsp"></c:redirect>
			
	</c:if>
	<%@include file="Components/navbar.jsp"%>
		
		<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 my-4">
				<div class="card">
					<div class="card-body ">
						<div class="text-center">
							<h3>Sell Book</h3>
						</div>

						<form action="add_old_book" method="post"
							enctype="multipart/form-data">
								
								<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
								<c:remove var="succMsg"/>
							</c:if>
							
							<c:if test="${not empty failedMsg }">
								<p class="text-center text-danger">${failedMsg }</p>
								<c:remove var="failedMsg"/>
							</c:if>
								
							<input type="hidden" value="${userobj.email}" name="user"/>
	
							<div class="form-group">
								<label for="exampleInputBName">Book Name</label> <input
									type="text" class="form-control" id="exampleInputbname1"
									placeholder="enter book name" required="required" name="bname">

							</div>

							<div class="form-group">
								<label for="exampleInputAName">Author Name</label> <input
									type="text" class="form-control" id="exampleInputaname1"
									placeholder="enter author name" required="required"
									name="author">

							</div>

							<div class="form-group">
								<label for="exampleInputPrice">Price</label> <input
									type="number" class="form-control" id="exampleInputprice1"
									placeholder="enter price" required="required" name="price">

							</div>
						

							<div class="form-group">
								<lable for="exampleFormControlFile1">Upload Photo</lable>
								<input type="file" class="form-control-file" name="bimg"
									id="exampleFormControlFile1">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary my-2">
									Sell</button>
								<br />
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>



<div class="container-fluid p-3">
	<div class="row">

		<div class="col-md-3">
			<h3>
				<i class="fa-solid fa-book-open-reader"></i> PuStack
			</h3>
		</div>
		<div class="col-md-5">

			<form class="form-inline my-2 my-lg-0" action="search.jsp" method="post">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search" name="ch">
				<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
			</form>

		</div>

		<div class="col-md-4">
			<c:if test="${not empty userobj}">
				<a href="#" class="btn btn-success"><i class="fa-solid fa-user"></i>
					${userobj.name}</a>

				<a href="cart.jsp" class="btn btn-primary text-white"><i
					class="fa-solid fa-cart-shopping"></i> Cart</a>

				<a data-toggle="modal" data-target="#exampleModalCenter"
					class="btn btn-danger text-white"><i
					class="fa-solid fa-right-from-bracket"></i> Logout </a>
			</c:if>



			<c:if test="${empty userobj }">
				<a href="Login.jsp" class="btn btn-success">Login <i
					class="fa-solid fa-right-to-bracket"></i></a>
				<a href="Register.jsp" class="btn btn-primary">SignUp <i
					class="fa-solid fa-user-plus"></i></a>
			</c:if>


		</div>

	</div>
</div>

<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Caution!</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="text-center">
					<h4 class="my-5">Confirm Logout?</h4>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancel</button>
					<a href="logout" type="button" class="btn btn-primary">Logout</a>
				</div>
			</div>
		</div>
	</div>
</div>




<nav class="navbar navbar-expand-lg navbar-dark bg-custom fixed">
	<a class="navbar-brand" href="index.jsp"><i
		class="fa-solid fa-book-open-reader"></i> PuSTACK</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_recent_books.jsp">Recent Books</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_new_books.jsp">New Books</a></li>

			<li class="nav-item active"><a class="nav-link "
				href="all_old_books.jsp">Old Books</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="setting.jsp" class="btn btn-light mx-2 my-2 my-sm-0" type="submit">Setting</a>
			<a class="btn btn-light mx-2 my-2 my-sm-0" type="submit">Contact
				Us</a>
		</form>
	</div>
</nav>
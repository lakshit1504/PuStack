<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PuSTACK : search</title>
<%@include file="/Components/allCss.jsp"%>
</head>
<body >
	<%@include file="Components/navbar.jsp"%>
	
	
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<c:if test="${not empty addCart }">
		<div id="toast">${addCart}</div>

		<script type="text/javascript">
			showToast();
			function showToast(content)
			{
			    $('#toast').addClass("display");
			    $('#toast').html(content);
			    setTimeout(()=>{
			        $("#toast").removeClass("display");
			    },2000)
			}	
		</script>
		
		<c:remove var="addCart" scope="session"/>
	</c:if>
	
		
		<div class="container">
		<h1 class="text-center my-3">Search results</h1>
		<div class="row" >
			<!-- card-->
			<%
			String ch=request.getParameter("ch"); 
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getBookBySearch(ch);
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

						<%
						if (b.getBookCategory().equals("New")) {
						%>
						<div class="row">
							<%
								if(u==null){
							%>
									<a href="Login.jsp" class="btn btn-sm btn-custom ml-4">Add Cart</a>
								<%}else{
								%>
									<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-sm btn-custom	ml-4">Add Cart</a>
								
								<% }%> 
								<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-sm btn-success ml-2">View</a> <a
								href="" class="btn btn-sm btn-custom	ml-2 "><%=b.getPrice()%><i
								class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>


						<%
						} else {
						%>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-sm btn-success ml-5">View Detail</a> <a
								href="" class="btn btn-sm btn-custom	ml-1 "><%=b.getPrice()%><i
								class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
						<%
						}
						%>
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
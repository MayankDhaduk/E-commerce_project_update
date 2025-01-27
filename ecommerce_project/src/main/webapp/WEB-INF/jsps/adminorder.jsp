<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/admin/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="/admin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="/admin/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/admin/css/style.css" rel="stylesheet">
</head>
<body>
	<div class="container-xxl position-relative bg-white d-flex p-0">


		<!-- Sidebar Start -->
		<jsp:include page="adminsidebar.jsp"></jsp:include>
		<!-- Sidebar End -->


		<!-- Content Start -->
		<div class="content">
			<!-- Navbar Start -->
			<jsp:include page="adminnavbar.jsp"></jsp:include>
			<!-- Navbar End -->

			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">

					<div class="col-8">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Responsive Table</h6>
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">Id</th>
											<th scope="col">Product Name</th>
											<th scope="col">Category Name</th>
											<th scope="col">Product Price</th>
											<th scope="col">Product QTY</th>
											<th scope="col">Product Brand Name</th>
											<th scope="col">Product Description</th>
											<th scope="col">Product Image</th>
											<th scope="col" colspan="2">Action</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="dt" items="${products}">
											<tr>
												<th scope="row">${dt.getId()}</th>
												<td>${dt.getPname()}</td>
												<td>${dt.getCategory().getCatname()}</td>
												<td>${dt.getPrice()}</td>
												<td>${dt.getQty()}</td>
												<td>${dt.getBrandName()}</td>
												<td>${dt.getProductDetail()}</td>
												<td>${dt.getGenderType()}</td>
												<td><img
													src="data:image/jpg;base64,${dt.getProductImage()}"
													alt="${dt.getProductImage()}" width="100px" height="100px"></td>
												<td><a href="productdelete?did=${dt.getId()}"
													class="btn btn-danger m-2">Delete</a></td>
												<td><a href="productupdate?eid=${dt.getId()}"
													class="btn btn-primary m-2">Edit</a></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
</body>
</html>
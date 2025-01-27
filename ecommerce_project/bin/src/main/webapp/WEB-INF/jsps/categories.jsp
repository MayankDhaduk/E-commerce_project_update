<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Yoga Studio Template">
<meta name="keywords" content="Yoga, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Violet | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
</head>
<style>
body {
	font-size: 14px;
}

span {
	font-size: 14px;
}

.overlay {
	background: rgb(0 0 0/ 55%);
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: 1030;
}

.search-section {
	padding: 50px 0;
}

.filter-header {
	font-weight: bold;
	font-size: 30px;
}

.filter-title {
	font-weight: bold;
	font-size: 20px;
	padding-bottom: 14px;
	margin-bottom: 15px;
}

.title {
	font-weight: bold;
	font-size: 20px;
	padding-bottom: 0;
	margin-bottom: 15px;
}

.mb-30 {
	margin-bottom: 30px;
}

.row-grid img {
	margin-bottom: 30px;
	max-width: 100%
}

@media ( max-width : 767.98px) {
	.filters-actions {
		position: fixed;
		background: #fff;
		display: flex;
		justify-content: center;
		border: 0;
		bottom: 0;
		z-index: 1031;
		left: 0;
		right: 0;
		bottom: 0;
		box-shadow: 0px -2px 3px rgb(0 0 0/ 21%);
		-webkit-box-shadow: 0px -2px 3px rgb(0 0 0/ 21%);
		-moz-box-shadow: 0px -2px 3px rgb(0 0 0/ 21%);
		height: 50px;
	}
	.filters-actions>div {
		flex: 1;
		text-align: center;
	}
	.filters-actions>div:first-of-type {
		border-right: 1px solid #d6d1ce;
	}
	.filters-actions>div>* {
		display: flex;
		align-items: center;
		justify-content: center;
		width: 100%;
	}
	/*.no-border-select.sort-select + .select2-container--default .select2-selection--single{
      background-image: none;
      padding:10px;
    }*/
	.filter-btn, .filter-btn:hover, .filter-btn:focus, .filter-btn:active {
		padding: 14px 20px;
		height: 50px;
		border: 0;
		position: relative;
		z-index: 1;
		background: #fff;
		border-radius: 0;
	}
	.sort-drop .dropdown-menu {
		width: 100%;
		left: 0;
		position: fixed !important;
		transform: translateY(100%) !important;
		bottom: 50px !important;
		top: auto !important;
		text-align: center;
		border-radius: 6px 6px 0 0 !important;
		box-shadow: none !important;
		transition: .3s;
		display: block;
		/* border: 0;*/
		z-index: -11;
	}
	.sort-drop .dropdown-menu .dropdown-item {
		padding: 15px 20px !important;
	}
	.sort-drop .dropdown-menu .dropdown-item:first-child {
		border-radius: 6px 6px 0 0 !important;
	}
	.sort-drop.show .dropdown-menu {
		transform: translateY(0) !important;
	}
	.btn.sort-toggle {
		background-image: none;
		padding: 10px !important;
		width: 100%;
		border: 0;
		height: 50px;
		position: relative;
		z-index: 1;
		background: #fff;
		border-radius: 0;
		font-size: 16px;
		line-height: 22px;
	}
	.sidebar {
		position: fixed;
		transform: translateY(100%);
		-webkit-transform: translateY(100%);
		-moz-transform: translateY(100%);
		-o-transform: translateY(100%);
		transition: .3s;
		-webkit-transition: .3s;
		-moz-transition: .3s;
		-o-transition: .3s;
		left: 0;
		right: 0;
		bottom: 0;
		top: 0;
		background: #fff;
	}
	.sidebar.open {
		z-index: 1032;
		transform: translateY(0);
		-webkit-transform: translateY(0);
		-moz-transform: translateY(0);
		-o-transform: translateY(0);
	}
	.sidebar__inner {
		padding: 15px;
		height: calc(100% - 58px);
		overflow-y: auto;
	}
	.filter-header {
		height: 58px;
	}
	.filter-body {
		padding-right: 0;
	}
}

.category-image {
	width: 300px;
	height: 300px;
	border: 1px solid #ddd;
	border-radius: 20px;
	margin: 5px;
	transition: transform 0.2s ease-in-out;
}

.product-image {
	width: 100px;
	height: 432.17px;
	border: 1px solid #ddd;
	border-radius: 20px;
	margin: 5px;
	transition: transform 0.2s ease-in-out;
}

.product-image:hover {
	transform: scale(0.9);
	cursor: pointer;
}

.category-link {
	display: inline-block; /* Make the link behave like a block element */
	padding: 10px 20px; /* Add some padding */
	margin: 5px; /* Add margin for spacing */
	background-color: #6c63ff; /* Background color */
	color: white; /* Text color */
	text-decoration: none; /* Remove underline */
	border-radius: 5px; /* Rounded corners */
	transition: background-color 0.3s, transform 0.3s;
	/* Smooth transition for hover effects */
	font-weight: bold; /* Make the text bold */
	font-size: 16px; /* Increase font size */
}

.category-link:hover {
	background-color: #5a54e0; /* Darker background on hover */
	transform: translateY(-2px); /* Slight lift effect on hover */
}

.category-link:active {
	transform: translateY(0); /* Reset lift effect when clicked */
}
</style>

<body>


	<!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Header Section Begin -->
	<jsp:include page="usernavbar.jsp"></jsp:include>


	<!-- Header End -->

	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Category<span>.</span>
						</h2>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-3 col-md-4 filter-sidebar p-4">
				<div class="d-flex justify-content-between align-items-center mb-4">
					<h4 class="m-0">Filters</h4>
					<button class="btn btn-link text-decoration-none">Clear
						All</button>
				</div>
				<div class="filter-section mb-4">
					<h5 class="d-flex align-items-center">
						<i class="bi bi-shop me-2"></i>Category
					</h5>
					<div class="brands-container">
						<c:forEach var="dt" items="${categories}">
							<div class="form-check mb-2">
								<%-- <label class="form-check-label d-flex justify-content-between"
									for="brand1">${dt.getCatname()}<span
									class="badge bg-light text-dark">124</span>
								</label> --%>
								<a href="/categories?categoryId=${dt.getId()}"
									class="category-link">${dt.getCatname()}</a>
							</div>
						</c:forEach>
						<!-- <div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" id="brand2">
							<label class="form-check-label d-flex justify-content-between"
								for="brand2"> Nike <span
								class="badge bg-light text-dark">98</span>
							</label>
						</div>
						<div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" id="brand3">
							<label class="form-check-label d-flex justify-content-between"
								for="brand3"> Puma <span
								class="badge bg-light text-dark">156</span>
							</label>
						</div>
						<div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" id="brand4">
							<label class="form-check-label d-flex justify-content-between"
								for="brand4"> Reebok <span
								class="badge bg-light text-dark">167</span>
							</label>
						</div> -->
						<!-- <div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" id="brand5">
							<label class="form-check-label d-flex justify-content-between"
								for="brand5"> Under Armour <span
								class="badge bg-light text-dark">89</span>
							</label>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Related Product Section Begin -->
	<section class="latest-products spad">
		<div class="container">
			<div class="row" id="product-list">
				<c:forEach var="dt" items="${products}">
					<div class="col-lg-3 col-sm-6 mix all dresses bags">
						<div class="single-product-item">
							<figure>
								<a><img src="data:image/jpg;base64,${dt.getProductImage()}"
									alt="${dt.getProductImage()}" class="product-image"></a>
							</figure>
							<div class="product-text">
								<h6>${dt.getPname()}</h6>
								<p>${dt.getPrice()}</p>
								<a href="product-detail?id=${dt.getId()}"
									class="btn btn-primary">View Details</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Related Product Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section spad">
		<div class="container">
			<div class="newslatter-form">
				<div class="row">
					<div class="col-lg-12">
						<form action="#">
							<input type="text" placeholder="Your email address">
							<button type="submit">Subscribe to our newsletter</button>
						</form>
					</div>
				</div>
			</div>

		</div>
		<div class="social-links-warp">
			<div class="container">
				<div class="social-links">
					<a href="" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>
					<a href="" class="pinterest"><i class="fa fa-pinterest"></i><span>pinterest</span></a>
					<a href="" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>
					<a href="" class="twitter"><i class="fa fa-twitter"></i><span>twitter</span></a>
					<a href="" class="youtube"><i class="fa fa-youtube"></i><span>youtube</span></a>
					<a href="" class="tumblr"><i class="fa fa-tumblr-square"></i><span>tumblr</span></a>
				</div>
			</div>

			<div class="container text-center pt-5">
				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="icon-heart color-danger" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>


		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
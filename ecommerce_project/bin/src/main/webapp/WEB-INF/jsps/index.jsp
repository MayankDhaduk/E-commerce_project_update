<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<style>
.product-image {
	width: 304px;
	height: 300px;
	border: 1px solid #ddd;
	border-radius: 20px;
	margin: 5px;
	transition: transform 0.2s ease-in-out;
}

.product-image:hover {
	transform: scale(0.9);
	cursor: pointer;
}

.product-figure {
	position: relative;
	overflow: hidden;
}

.product-figure .price-overlay {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	background-color: rgba(0, 0, 0, 0.7);
	/* Dark background for better visibility */
	color: #fff;
	text-align: center;
	padding: 10px;
	opacity: 0;
	transform: translateY(100%);
	transition: all 0.3s ease-in-out;
}

.product-figure:hover .price-overlay {
	opacity: 1;
	transform: translateY(0);
}
</style>
</head>

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

	<jsp:include page="usernavbar.jsp"></jsp:include>

	<!-- Hero Slider Begin -->
	<section class="hero-slider">
		<div class="hero-items owl-carousel">
			<div class="single-slider-item set-bg" data-setbg="img/slider-1.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h1>2025</h1>
							<h2>Lookbook.</h2>
							<a href="#" class="primary-btn">See More</a>
						</div>
					</div>
				</div>
			</div>
			<div class="single-slider-item set-bg" data-setbg="img/slider-2.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h1>2025</h1>
							<h2>Lookbook.</h2>
							<a href="#" class="primary-btn">See More</a>
						</div>
					</div>
				</div>
			</div>
			<div class="single-slider-item set-bg" data-setbg="img/slider-3.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h1>2025</h1>
							<h2>Lookbook.</h2>
							<a href="#" class="primary-btn">See More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Slider End -->

	<!-- Features Section Begin -->
	<section class="features-section spad">
		<div class="features-ads">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<div class="single-features-ads first">
							<img src="img/icons/f-delivery.png" alt="">
							<h4>Free shipping</h4>
							<p>Fusce urna quam, euismod sit amet mollis quis, vestibulum
								quis velit. Vesti bulum mal esuada aliquet libero viverra
								cursus.</p>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single-features-ads second">
							<img src="img/icons/coin.png" alt="">
							<h4>100% Money back</h4>
							<p>Urna quam, euismod sit amet mollis quis, vestibulum quis
								velit. Vesti bulum mal esuada aliquet libero viverra cursus.</p>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single-features-ads">
							<img src="img/icons/chat.png" alt="">
							<h4>Online support 24/7</h4>
							<p>Urna quam, euismod sit amet mollis quis, vestibulum quis
								velit. Vesti bulum mal esuada aliquet libero viverra cursus.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Features Box -->
		<div class="features-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="row">
							<div class="col-lg-12">
								<div class="single-box-item first-box">
									<img src="img/f-box-1.jpg" alt="">
									<div class="box-text">
										<span class="trend-year">2024 Party</span>
										<h2>Jewelry</h2>
										<span class="trend-alert">Trend Allert</span> <a href="#"
											class="primary-btn">See More</a>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="single-box-item second-box">
									<img src="img/f-box-2.jpg" alt="">
									<div class="box-text">
										<span class="trend-year">2024 Trend</span>
										<h2>Footwear</h2>
										<span class="trend-alert">Bold & Black</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="single-box-item large-box">
							<img src="img/f-box-3.jpg" alt="">
							<div class="box-text">
								<span class="trend-year">2024 Party</span>
								<h2>Collection</h2>
								<div class="trend-alert">Trend Allert</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Features Section End -->

	<!-- Latest Product Begin -->
	<section class="latest-products spad">
		<div class="container">
			<div class="product-filter">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Latest Products</h2>
						</div>
						<ul class="product-controls">
							<li data-filter="*">All</li>
							<li data-filter=".dresses">Dresses</li>
							<li data-filter=".bags">Bags</li>
							<li data-filter=".shoes">Shoes</li>
							<li data-filter=".accesories">Accesories</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row" id="product-list">
				<c:forEach var="dt" items="${products}">
					<div class="col-lg-3 col-sm-6 mix all dresses bags">
						<div class="single-product-item">
							<figure class="product-figure">
								<a> <img src="data:image/jpg;base64,${dt.getProductImage()}"
									alt="${dt.getProductImage()}" class="product-image">
								</a>
								<div class="p-status sale">sale</div>
								<div class="price-overlay">
									<p>${dt.getPrice()}</p>
								</div>
							</figure>
							<div class="product-text">
								<h6>${dt.getPname()}</h6>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Latest Product End -->

	<!-- Lookbok Section Begin -->
	<section class="lookbok-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4 offset-lg-1">
					<div class="lookbok-left">
						<div class="section-title">
							<h2>
								2024 <br />#lookbook
							</h2>
						</div>
						<p>Fusce urna quam, euismod sit amet mollis quis, vestibulum
							quis velit. Vestibulum malesuada aliquet libero viverra cursus.
							Aliquam erat volutpat. Morbi id dictum quam, ut commodo lorem. In
							at nisi nec arcu porttitor aliquet vitae at dui. Sed sollicitudin
							nulla non leo viverra scelerisque. Phasellus facilisis lobortis
							metus, sit amet viverra lectus finibus ac. Aenean non felis
							dapibus, placerat libero auctor, ornare ante. Morbi quis ex
							eleifend, sodales nulla vitae, scelerisque ante. Nunc id
							vulputate dui. Suspendisse consectetur rutrum metus nec
							scelerisque. s</p>
						<a href="#" class="primary-btn look-btn">See More</a>
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="lookbok-pic">
						<img src="img/lookbok.jpg" alt="">
						<div class="pic-text">fashion</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Lookbok Section End -->

	<!-- Logo Section Begin -->
	<div class="logo-section spad">
		<div class="logo-items owl-carousel">
			<div class="logo-item">
				<img src="img/logos/logo-1.png" alt="">
			</div>
			<div class="logo-item">
				<img src="img/logos/logo-2.png" alt="">
			</div>
			<div class="logo-item">
				<img src="img/logos/logo-3.png" alt="">
			</div>
			<div class="logo-item">
				<img src="img/logos/logo-4.png" alt="">
			</div>
			<div class="logo-item">
				<img src="img/logos/logo-5.png" alt="">
			</div>
		</div>
	</div>
	<!-- Logo Section End -->

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
	
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Checkout<span>.</span>
						</h2>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<!-- Cart Total Page Begin -->
	<section class="cart-total-page spad">
		<div class="container">
			<form action="#" class="checkout-form">
				<div class="row">
					<div class="col-lg-12">
						<h3>Your Information</h3>
					</div>
					<div class="col-lg-9">
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">Name*</p>
							</div>
							<div class="col-lg-5">
								<input type="text" placeholder="First Name">
							</div>
							<div class="col-lg-5">
								<input type="text" placeholder="Last Name">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">Street Address*</p>
							</div>
							<div class="col-lg-10">
								<input type="text"> <input type="text">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">Country*</p>
							</div>
							<div class="col-lg-10">
								<select class="cart-select country-usa">
									<option>USA</option>
									<option>INDIA</option>
									<option>AUSTRALIA</option>
									<option>UK</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">City*</p>
							</div>
							<div class="col-lg-10">
								<input type="text">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">Country</p>
							</div>
							<div class="col-lg-10">
								<input type="text">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">Post Code/ZIP*</p>
							</div>
							<div class="col-lg-10">
								<input type="text">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2">
								<p class="in-name">Phone*</p>
							</div>
							<div class="col-lg-10">
								<input type="text">
							</div>
						</div>

					</div>
					<div class="col-lg-3">
						<div class="order-table">
							<div class="cart-item">
								<span>Product</span>
								<p class="product-name">Blue Dotted Shirt</p>
							</div>
							<div class="cart-item">
								<span>Price</span>
								<p>$29</p>
							</div>
							<div class="cart-item">
								<span>Quantity</span>
								<p>1</p>
							</div>
							<div class="cart-item">
								<span>Shipping</span>
								<p>$10</p>
							</div>

							<div class="cart-total">
								<span>Total</span>
								<p>$39</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="payment-method">
							<h3>Payment</h3>
							<ul>
								<li>Paypal <img src="img/paypal.jpg" alt=""></li>
								<li>Credit / Debit card <img src="img/mastercard.jpg"
									alt=""></li>
								<li><label for="two">Pay when you get the package</label> <input
									type="radio" id="two"></li>
							</ul>
							<button type="submit">Place your order</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!-- Cart Total Page End -->

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
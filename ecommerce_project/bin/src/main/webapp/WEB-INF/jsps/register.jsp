<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
.gender-label {
	margin-right: 15px;
	font-weight: bold;
}

.gender-container {
	margin-top: 15px;
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

	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Registration<span>.</span>
						</h2>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<!-- Contact Section Begin -->
	<div class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10">

					<form:form action="reg" method="post" class="contact-form"
						modelAttribute="user" enctype="multipart/form-data">

						<span class="text-secondary">${msg}</span>

						<div class="row">
							<div class="col-lg-5">
								<label for="fname">First Name:</label>
								<form:input path="fname" placeholder="First Name" id="fname" />
							</div>
						</div>

						<div class="row">
							<div class="col-lg-5">
								<label for="lname">Last Name:</label>
								<form:input path="lname" placeholder="Last Name" id="lname" />
							</div>
						</div>

						<div class="row">
							<div class="col-lg-10">
								<label for="email">Email:</label>
								<form:input path="email" placeholder="E-mail" id="email" />
							</div>
						</div>

						<div class="row">
							<div class="col-lg-10">
								<label for="pass">Password:</label>
								<form:password path="pass" placeholder="Password" id="pass" />
							</div>
						</div>

						<div class="row gender-container">
							<div class="col-lg-10">
								<span class="gender-label">Gender:</span> <label class="mr-3">
									<form:radiobutton path="gender" value="Male" /> Male
								</label> <label> <form:radiobutton path="gender" value="Female" />
									Female
								</label>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-10">
								<label for="phone">Mobile Number:</label>
								<form:input path="phone" placeholder="Phone no." id="phone" />
							</div>
						</div>

						<div class="row">
							<div class="col-lg-10">
								<label for="image">Profile Picture:</label> <input type="file"
									name="image" id="image">
							</div>
						</div>

						<div class="col-lg-7 text-right">
							<button type="submit">Submit</button>
						</div>


					</form:form>

				</div>

			</div>

		</div>
	</div>
	<!-- Contact Section End -->



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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify OTP</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
}

.otp-container {
	max-width: 400px;
	margin: 50px auto;
	padding: 20px;
	border: 1px solid #dee2e6;
	border-radius: 10px;
	background: #ffffff;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.otp-container h3 {
	text-align: center;
	margin-bottom: 20px;
}

.message {
	text-align: center;
}
</style>
</head>
<body>
	<div class="otp-container">
		<h3>Verify OTP</h3>
		<c:if test="${not empty message}">
			<p class="message text-success">${message}</p>
		</c:if>
		<form action="/verify-otp" method="post" class="needs-validation"
			novalidate>
			<div class="mb-3">
				<label for="otp" class="form-label">Enter OTP:</label> <input
					type="text" class="form-control" id="otp" name="otp" required>
				<div class="invalid-feedback">Please enter your OTP.</div>
			</div>
			<button type="submit" class="btn btn-primary w-100">Verify
				OTP</button>
			<c:if test="${not empty error}">
				<p class="message text-danger mt-3">${error}</p>
			</c:if>
		</form>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		// Bootstrap validation
		(function() {
			'use strict'
			const forms = document.querySelectorAll('.needs-validation')
			Array.from(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault()
						event.stopPropagation()
					}
					form.classList.add('was-validated')
				}, false)
			})
		})()
	</script>
</body>
</html>
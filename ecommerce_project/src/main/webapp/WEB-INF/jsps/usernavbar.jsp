<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Header Section Begin -->
<header class="header-section">
	<div class="container-fluid">
		<div class="inner-header">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/index"><img
					src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
			</div>
			<div class="header-right">
				<img src="img/icons/search.png" alt="" class="search-trigger">

				<a href="userprofile"><img src="img/icons/man.png" alt="">
				</a>

				<!-- <a href="#"> <img src="img/icons/bag.png" alt=""> <span>2</span>
				</a> -->
			</div>
			<%
			Integer userid = (Integer) session.getAttribute("userid");

			if (userid == null) {
			%>
			<div class="user-access">
				<a href="register">Register</a> <a href="login" class="in">Sign
					in</a>
			</div>
			<%
			} else {
			%>
			<div class="user-access">

				<a href="logout">Logout</a>
			</div>
			<%
			}
			%>


			<nav class="main-menu mobile-menu">
				<ul>
					<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/categories">Shop</a></li>
					<li><a href="${pageContext.request.contextPath}/product-page">Products</a></li>
					<li><a href="${pageContext.request.contextPath}/shopping-cart">Shopping
							Cart</a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>

<!-- Header End -->
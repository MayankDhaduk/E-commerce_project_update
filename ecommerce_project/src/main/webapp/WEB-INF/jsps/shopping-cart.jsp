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
<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<script>
        function updateQuantity(productId, operation) {
            const qtyInput = document.getElementById("qty_" + productId);
            let currentQty = parseInt(qtyInput.value);

            if (operation === 'increment') {
                currentQty++;
            } else if (operation === 'decrement' && currentQty > 1) {
                currentQty--;
            }

            qtyInput.value = currentQty;

            // Update the total price
            const pricePerUnit = parseFloat(document.getElementById("price_" + productId).innerText);
            document.getElementById("total_" + productId).innerText = (currentQty * pricePerUnit).toFixed(2);

            // Update grand total if applicable
            updateGrandTotal();
        }

        function updateGrandTotal() {
            let grandTotal = 0;
            const totalElements = document.querySelectorAll("[id^='total_']");
            totalElements.forEach(el => {
                grandTotal += parseFloat(el.innerText);
            });
            document.getElementById("grandTotal").innerText = grandTotal.toFixed(2);
        }
    </script>

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
	<section class="page-add cart-page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Cart<span>.</span>
						</h2>

					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<!-- Cart Page Section Begin -->
	<div class="cart-page">
		<div class="container">
			<div class="cart-table">
				<table>
					<thead>
						<tr>
							<th class="product-h">Product</th>
							<th>Price</th>
							<th class="quan">Quantity</th>
							<th>Total</th>
							<th></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="dt" items="${cartdata}">
							<tr>
								<td class="product-col"><img
									src="data:image/jpg;base64,${dt.getProduct().getProductImage()}"
									alt="${dt.getProduct().getProductImage()}">
									<div class="p-title">
										<h5>${dt.getProduct().getPname()}</h5>
									</div></td>
								<td class="price-col" id="price_${dt.getId()}">${dt.getProduct().getPrice()}</td>
								<td class="quantity-col">
									<div class="pro-qty">
										<input type="text" id="qty_${dt.getId()}"
											value="${dt.getQty()}" readonly="readonly">

									</div>
								</td>

								<td>
									<button type="button"
										onclick="updateQuantity(${dt.getId()}, 'increment')"
										class="btn btn-square btn-primary m-2">+</button>
									<button type="button"
										onclick="updateQuantity(${dt.getId()}, 'decrement')"
										class="btn btn-square btn-primary m-2">-</button>
								</td>

								<td class="total" id="total_${dt.getId()}">${dt.getProduct().getPrice()*dt.getQty()}</td>


								<%-- <td>
									<div class="pro-qty">
								
								<span class="updateQuantity(${dt.getId()}, 'increment')">+</span>
								<span class="updateQuantity(${dt.getId()}, 'decrement')">-</span>
								</div>

								</td> --%>


								<td class="product-close"><a
									href="deletecart?did=${dt.getId()}">x</a></td>

							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
			<div class="cart-btn">
				<div class="row">
					<div class="col-lg-3"></div>
					<div class="col-lg-5 offset-lg-1 text-left text-lg-right">
						<span><a href="clear" class="site-btn clear-btn">Clear
								Cart</a></span>
					</div>
				</div>
			</div>
		</div>
		<div class="shopping-method">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">

						<div class="total-info">
							<div class="total-table">
								<table>
									<thead>
										<tr>

											<th class="total-cart">Total Cart</th>
										</tr>
									</thead>
									<tbody>
										<tr>

											<td class="total-cart-p" id="grandTotal">${total}</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-lg-12 text-right">
									<a class="primary-btn chechout-btn" id="pay">Proceed to
										checkout</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Cart Page Section End -->

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



	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	<script>

	document.getElementById('pay').onclick = function(e){
	e.preventDefault();
	var amt = document.getElementById('grandTotal').textContent
	
	$.post('payment',{amt:amt},function(rt){
		
		const order = JSON.parse(rt);
		
		
		var options = {
		    "key": "rzp_test_8jMQMnQuUWDUzy", // Enter the Key ID generated from the Dashboard
		  	"currency": "INR",
		    "name": "E-commerce",
		    "description": "Test Transaction",
		    "image":"https://example.com/your_logo",
		    "order_id": order.id, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
		    "handler": function (response){
		        /* alert(response.razorpay_payment_id);
		        alert(response.razorpay_order_id);
		        alert(response.razorpay_signature) */
		        $.post("adminorder",{pid:response.razorpay_payment_id},function(rt){
		        	alert(rt)
		        })
		        
		    }
		};
		var rzp1 = new Razorpay(options);
		rzp1.on('payment.failed', function (response){
		        alert(response.error.code);
		        alert(response.error.description);
		        alert(response.error.source);
		        alert(response.error.step);
		        alert(response.error.reason);
		        alert(response.error.metadata.order_id);
		        alert(response.error.metadata.payment_id);
		});
		rzp1.open();
	})
		

    
}
</script>


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
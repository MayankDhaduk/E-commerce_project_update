<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>DASHMIN - Bootstrap Admin Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="/admin/img/favicon.ico" rel="icon">

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


			<!-- Typography Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Background Colors</h6>
							<div class="p-2 mb-2 bg-primary text-white">.bg-primary</div>
							<div class="p-2 mb-2 bg-secondary text-white">.bg-secondary</div>
							<div class="p-2 mb-2 bg-success text-white">.bg-success</div>
							<div class="p-2 mb-2 bg-danger text-white">.bg-danger</div>
							<div class="p-2 mb-2 bg-warning text-dark">.bg-warning</div>
							<div class="p-2 mb-2 bg-info text-dark">.bg-info</div>
							<div class="p-2 mb-2 bg-light text-dark">.bg-light</div>
							<div class="p-2 mb-2 bg-dark text-white">.bg-dark</div>
							<div class="p-2 mb-2 bg-body text-dark">.bg-body</div>
							<div class="p-2 mb-2 bg-white text-dark">.bg-white</div>
							<div class="p-2 mb-0 bg-transparent text-dark">.bg-transparent</div>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Text Colors</h6>
							<p class="text-primary">.text-primary</p>
							<p class="text-secondary">.text-secondary</p>
							<p class="text-success">.text-success</p>
							<p class="text-danger">.text-danger</p>
							<p class="text-warning bg-dark">.text-warning</p>
							<p class="text-info bg-dark">.text-info</p>
							<p class="text-light bg-dark">.text-light</p>
							<p class="text-dark">.text-dark</p>
							<p class="text-body">.text-body</p>
							<p class="text-muted">.text-muted</p>
							<p class="text-white bg-dark">.text-white</p>
							<p class="text-black-50">.text-black-50</p>
							<p class="text-white-50 bg-dark mb-0">.text-white-50</p>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Headings</h6>
							<h1>h1 Heading</h1>
							<h2>h2 Heading</h2>
							<h3>h3 Heading</h3>
							<h4>h4 Heading</h4>
							<h5>h5 Heading</h5>
							<h6>h6 Heading</h6>
							<p class="h1">.h1 Heading</p>
							<p class="h2">.h2 Heading</p>
							<p class="h3">.h3 Heading</p>
							<p class="h4">.h4 Heading</p>
							<p class="h5">.h5 Heading</p>
							<p class="h6">.h6 Heading</p>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Display Headings</h6>
							<h1 class="display-1">Display 1</h1>
							<h1 class="display-2">Display 2</h1>
							<h1 class="display-3">Display 3</h1>
							<h1 class="display-4">Display 4</h1>
							<h1 class="display-5">Display 5</h1>
							<h1 class="display-6 mb-0">Display 6</h1>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Text Elements</h6>
							<p>This is a standard paragraph</p>
							<p>
								You can use the mark tag to
								<mark>highlight</mark>
								text.
							</p>
							<p>
								You can use the mark tag to
								<mark>highlight</mark>
								text.
							</p>
							<p>
								<del>This line of text is meant to be treated as deleted
									text.</del>
							</p>
							<p>
								<s>This line of text is meant to be treated as no longer
									accurate.</s>
							</p>
							<p>
								<ins>This line of text is meant to be treated as an
									addition to the document.</ins>
							</p>
							<p>
								<u>This line of text will render as underlined.</u>
							</p>
							<p>
								<small>This line of text is meant to be treated as fine
									print.</small>
							</p>
							<p>
								<strong>This line rendered as bold text.</strong>
							</p>
							<p class="mb-0">
								<em>This line rendered as italicized text.</em>
							</p>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Blockquotes</h6>
							<div class="border rounded p-4 pb-0 mb-4">
								<figure>
									<blockquote class="blockquote">
										<p>A well-known quote, contained in a blockquote element.</p>
									</blockquote>
									<figcaption class="blockquote-footer">
										Someone famous in <cite title="Source Title">Source
											Title</cite>
									</figcaption>
								</figure>
							</div>
							<div class="border rounded p-4 pb-0 mb-4">
								<figure class="text-center">
									<blockquote class="blockquote">
										<p>A well-known quote, contained in a blockquote element.</p>
									</blockquote>
									<figcaption class="blockquote-footer">
										Someone famous in <cite title="Source Title">Source
											Title</cite>
									</figcaption>
								</figure>
							</div>
							<div class="border rounded p-4 pb-0 mb-0">
								<figure class="text-end">
									<blockquote class="blockquote">
										<p>A well-known quote, contained in a blockquote element.</p>
									</blockquote>
									<figcaption class="blockquote-footer">
										Someone famous in <cite title="Source Title">Source
											Title</cite>
									</figcaption>
								</figure>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Unstyled List</h6>
							<ul class="list-unstyled mb-0">
								<li>This is a list.</li>
								<li>It appears completely unstyled.</li>
								<li>Structurally, it's still a list.</li>
								<li>However, this style only applies to immediate child
									elements.</li>
								<li>Nested lists:
									<ul>
										<li>are unaffected by this style</li>
										<li>will still show a bullet</li>
										<li>and have appropriate left margin</li>
									</ul>
								</li>
								<li>This may still come in handy in some situations.</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Description List</h6>
							<dl class="row mb-0">
								<dt class="col-sm-4">Description lists</dt>
								<dd class="col-sm-8">A description list is perfect for
									defining terms.</dd>

								<dt class="col-sm-4">Term</dt>
								<dd class="col-sm-8">Definition for the term.</dd>

								<dt class="col-sm-4">Another term</dt>
								<dd class="col-sm-8">This definition is short, so no extra
									paragraphs or anything.</dd>

								<dt class="col-sm-4 text-truncate">Truncated term is
									truncated</dt>
								<dd class="col-sm-8">This can be useful when space is
									tight. Adds an ellipsis at the end.</dd>

								<dt class="col-sm-4">Nesting</dt>
								<dd class="col-sm-8">
									<dl class="row">
										<dt class="col-sm-4">Nested list</dt>
										<dd class="col-sm-8">Nested definition list.</dd>
									</dl>
								</dd>
							</dl>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Basic List Group</h6>
							<ul class="list-group">
								<li class="list-group-item bg-transparent">An item</li>
								<li class="list-group-item bg-transparent">A second item</li>
								<li class="list-group-item bg-transparent">A third item</li>
								<li class="list-group-item bg-transparent">A fourth item</li>
								<li class="list-group-item bg-transparent">And a fifth one</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Flush List Group</h6>
							<ul class="list-group list-group-flush">
								<li class="list-group-item bg-transparent">An item</li>
								<li class="list-group-item bg-transparent">A second item</li>
								<li class="list-group-item bg-transparent">A third item</li>
								<li class="list-group-item bg-transparent">A fourth item</li>
								<li class="list-group-item bg-transparent">And a fifth one</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- Typography End -->


			<!-- Footer Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded-top p-4">
					<div class="row">
						<div class="col-12 col-sm-6 text-center text-sm-start">
							&copy; <a href="#">Your Site Name</a>, All Right Reserved.
						</div>
						<div class="col-12 col-sm-6 text-center text-sm-end">
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a href="https://htmlcodex.com">HTML Codex</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Footer End -->
		</div>
		<!-- Content End -->


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/admin/lib/chart/chart.min.js"></script>
	<script src="/admin/lib/easing/easing.min.js"></script>
	<script src="/admin/lib/waypoints/waypoints.min.js"></script>
	<script src="/admin/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="/admin/lib/tempusdominus/js/moment.min.js"></script>
	<script src="/admin/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="/admin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="/admin/js/main.js"></script>
</body>

</html>
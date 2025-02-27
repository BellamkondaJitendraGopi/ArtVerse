<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>ArtVerse</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<!-- Start Navbar  -->
	<nav class="navbar navbar-expand-lg  bg-primary fixed-top navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><i
				class="fa-solid fa-cart-shopping"></i> ArtVerse</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<% if (session.getAttribute("user") == null) { %>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/"><i class="fa-solid fa-house"></i>
								Home</a></li>
					<% } else { 
						String role = (String) session.getAttribute("role"); 
						if ("ROLE_ADMIN".equals(role)) { %>
							<li class="nav-item"><a
								class="nav-link active" aria-current="page" href="/admin/"><i
									class="fa-solid fa-house"></i> Home</a></li>
						<% } else if ("ROLE_USER".equals(role)) { %>
							<li class="nav-item"><a
								class="nav-link active" aria-current="page" href="/"><i
									class="fa-solid fa-house"></i> Home</a></li>
						<% } 
					} %>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/products">Product</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Category </a>
						<ul class="dropdown-menu">
							<% if (request.getAttribute("categories") != null) {
								List<String> categories = (List<String>) request.getAttribute("categories");
								for (String category : categories) { %>
									<li><a class="dropdown-item"
										href="/products?category=<%= category %>"><%= category %></a></li>
								<% }
							} %>
						</ul></li>
				</ul>

				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<% if (session.getAttribute("user") == null) { %>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/signin"><i
								class="fa-solid fa-right-to-bracket"></i> LOGIN</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/register">REGISTER</a></li>
					<% } else { 
						String name = (String) session.getAttribute("name");
						int cartCount = (session.getAttribute("countCart") != null) ? 
							(Integer) session.getAttribute("countCart") : 0; %>
						<% if ("ROLE_USER".equals(role)) { %>
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="/user/cart"><i
									class="fa-solid fa-cart-shopping"></i> Cart [<%= cartCount %>]</a></li>
						<% } %>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle active" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <i
								class="fa-solid fa-user"></i> <%= name %>
						</a>
							<ul class="dropdown-menu">
								<% if ("ROLE_USER".equals(role)) { %>
									<li><a class="dropdown-item" href="/user/profile">Profile</a></li>
									<li><a class="dropdown-item" href="/user/user-orders">My Orders</a></li>
								<% } else if ("ROLE_ADMIN".equals(role)) { %>
									<li><a class="dropdown-item" href="/admin/profile">Profile</a></li>
								<% } %>
								<li><a class="dropdown-item" href="/logout">Logout</a></li>
								<li><hr class="dropdown-divider"></li>
							</ul></li>
					<% } %>
				</ul>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->

	<jsp:include page="${content}" />

	<!-- Start Footer -->
	<div class="container-fluid p-1 bg-primary text-center text-white"
		style="margin-top: 250px">
		<p>ArtVerse</p>
	</div>
	<!-- End Footer -->

	<!-- Jquery Validation Library  -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript" src="../js/script.js"></script>
	<!-- End  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>

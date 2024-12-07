<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
	th:replace="~{base::layout(~{::section})}">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div class="container p-5">
			<p class="text-center fs-3 mt-4">Admin Dashboard</p>
			<div class="row p-5">
				<div class="col-md-4 mt-2">
					<a href="/admin/loadAddProduct" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-primary">
								<i class="fa-solid fa-square-plus fa-3x"></i>
								<h4>Add Art</h4>
							</div>
						</div>
					</a>
				</div>


				<div class="col-md-4 mt-2">
					<a href="/admin/category" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-warning">
								<i class="fa-solid fa-list fa-3x"></i>
								<h4>Add Artist</h4>
							</div>
						</div>
					</a>
				</div>


				<div class="col-md-4 mt-2">
					<a href="/admin/products" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-success">
								<i class="fa-solid fa-table-list fa-3x"></i>
								<h4>View Art</h4>
							</div>
						</div>
					</a>
				</div>


				<div class="col-md-4 mt-4">
					<a href="/admin/orders" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-warning">
								<i class="fa-solid fa-box-open fa-3x"></i>
								<h4>Orders</h4>
							</div>
						</div>
					</a>
				</div>


				<div class="col-md-4 mt-4">
					<a href="/admin/users?type=1" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-primary">
								<i class="fa-solid fa-circle-user fa-3x"></i>
								<h4>Users</h4>
							</div>
						</div>
					</a>
				</div>


				<div class="col-md-4 mt-4">
					<a href="/admin/add-admin" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-primary">
								<i class="fa-solid fa-user-plus fa-3x"></i>
								<h4>Add Admin</h4>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-4 mt-4">
					<a href="/admin/users?type=2" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-primary">
								<i class="fa-solid fa-circle-user fa-3x"></i>
								<h4>Admin</h4>
							</div>
						</div>
					</a>
				</div>


			</div>
		</div>
	</section>
</body>
</html>
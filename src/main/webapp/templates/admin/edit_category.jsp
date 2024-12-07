<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
	th:replace="~{base::layout(~{::section})}">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div class="container-fluid p-5 mt-5">
			<div class="row">
				<div class="col-md-3 offset-md-5">
					<div class="card card-sh">
						<div class="card-header text-center ">
							<p class="fs-4">Edit Artist</p>
							<th:block th:if="${session.succMsg}">
								<p class="text-success fw-bold">[[${session.succMsg}]]</p>
								<th:block th:text="${@commnServiceImpl.removeSessionMessage()}"></th:block>
							</th:block>

							<th:block th:if="${session.errorMsg}">
								<p class="text-danger fw-bold">[[${session.errorMsg}]]</p>
								<th:block th:text="${@commnServiceImpl.removeSessionMessage()}"></th:block>
							</th:block>

						</div>
						<div class="card-body">
							<form action="/admin/updateCategory" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="id" th:value="${category.id}">
								<div class="mb-3">
									<label>Enter Artist Name</label> <input type="text" name="name"
										th:value="${category.name}" class="form-control">
								</div>

								<div class="mb-3">
									<label>Status</label>

									<div class="form-check">
										<input class="form-check-input" type="radio"
											th:checked="${category.isActive==true}" value="true"
											name="isActive" id="flexRadioDefault1"> <label
											class="form-check-label" for="flexRadioDefault1">
											Active </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="isActive"
											th:checked="${category.isActive==false}" value="false"
											id="flexRadioDefault2"> <label
											class="form-check-label" for="flexRadioDefault2">
											Inactive </label>
									</div>

								</div>

								<div class="mb-3">
									<label>Upload Image</label> <input type="file" name="file"
										class="form-control">
								</div>
								<img th:src="@{'/img/category_img/'+${category.imageName}}"
									width="100px" height="100px">
								<button class="btn btn-primary col-md-12 mt-2">Update</button>
							</form>
						</div>
					</div>
				</div>



			</div>
		</div>
	</section>
</body>
</html>
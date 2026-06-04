<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Department</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
.form-card {
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.form-header {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	color: white;
	padding: 25px;
	text-align: center;
}

.form-header h2 {
	margin: 0;
	font-weight: 700;
}

.form-body {
	padding: 40px;
	background: white;
}

.form-control {
	height: 55px;
	border-radius: 12px;
}

.btn-custom {
	padding: 12px 30px;
	border-radius: 12px;
	font-weight: 600;
}

.page-title {
	text-align: center;
	margin-bottom: 30px;
	color: #1e3a8a;
	font-weight: 700;
}
</style>

</head>

<body>

	<%@ include file="departmentNavbar.jsp"%>

	<div class="container my-5">

		<div class="row justify-content-center">

			<div class="col-lg-8">

				<div class="form-card">

					<div class="form-header">

						<h2>
							<i class="bi bi-building-fill"></i> Add New Department
						</h2>

					</div>

					<div class="form-body">

						<form action="DepartmentServlet" method="post">

							<div class="mb-4">

								<label class="form-label fw-bold">

									<i class="bi bi-hospital"></i>
									Department Name

								</label>

								<input type="text"
									name="department_name"
									class="form-control"
									placeholder="Enter Department Name"
									required>

							</div>

							<div class="mb-4">

								<label class="form-label fw-bold">

									<i class="bi bi-geo-alt-fill"></i>
									Location

								</label>

								<input type="text"
									name="location"
									class="form-control"
									placeholder="Enter Department Location"
									required>

							</div>

							<div class="text-center">

								<button type="submit"
									class="btn btn-primary btn-custom">

									<i class="bi bi-plus-circle-fill"></i>
									Add Department

								</button>

								<button type="reset"
									class="btn btn-outline-secondary btn-custom ms-2">

									<i class="bi bi-arrow-clockwise"></i>
									Reset

								</button>

							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

	<%@ include file="footer.jsp"%>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
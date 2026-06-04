<%@page import="Entity.Departments"%>

<%
Departments d = (Departments) request.getAttribute("department");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Department</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: #f4f7fc;
}

.update-card {
	border: none;
	border-radius: 20px;
	overflow: hidden;
}

.card-header-custom {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	color: white;
	padding: 20px;
}

.form-control {
	height: 50px;
	border-radius: 10px;
}

.update-btn {
	border-radius: 10px;
	padding: 10px 25px;
	font-weight: 600;
}
</style>

</head>

<body>

	<%@ include file="departmentNavbar.jsp"%>

	<div class="container my-5">

		<div class="row justify-content-center">

			<div class="col-md-8">

				<div class="card shadow-lg update-card">

					<div class="card-header-custom">

						<h3 class="mb-0">

							<i class="bi bi-pencil-square"></i> Update Department

						</h3>

					</div>

					<div class="card-body p-4">

						<form action="EditDepartmentServlet" method="post">

							<input type="hidden" name="department_id"
								value="<%=d.getDepartment_id()%>">

							<div class="mb-3">

								<label class="form-label"> Department Name </label> <input
									type="text" name="department_name" class="form-control"
									value="<%=d.getDepartment_name()%>" required>

							</div>

							<div class="mb-4">

								<label class="form-label"> Location </label> <input type="text"
									name="location" class="form-control"
									value="<%=d.getLocation()%>" required>

							</div>

							<div class="text-center">

								<button type="submit" class="btn btn-success update-btn">

									<i class="bi bi-check-circle-fill"></i> Update Department

								</button>

								<a href="ViewDepartmentServlet"
									class="btn btn-secondary update-btn"> <i
									class="bi bi-arrow-left-circle"></i> Back

								</a>

							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

	<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
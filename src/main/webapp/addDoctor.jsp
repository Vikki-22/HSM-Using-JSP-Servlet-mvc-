<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Add Doctor</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: linear-gradient(135deg, #f4f7fb, #eef4ff);
}

.form-card {
	border-radius: 20px;
	overflow: hidden;
}

.card-header {
	background: linear-gradient(135deg, #198754, #20c997);
	color: white;
	padding: 20px;
}

.btn-save {
	background: #198754;
	color: white;
	font-weight: 600;
}

.btn-save:hover {
	background: #157347;
	color: white;
}
</style>

</head>

<body>

	<%@ include file="doctorNavbar.jsp"%>

	<div class="container my-5">

		<div class="row justify-content-center">

			<div class="col-lg-8">

				<div class="card shadow-lg border-0 form-card">

					<div class="card-header text-center">

						<h2>
							<i class="bi bi-person-plus-fill"></i> Add New Doctor
						</h2>

					</div>

					<div class="card-body p-4">

						<form action="<%=request.getContextPath()%>/AddDoctorServlet"
							method="post">

							<div class="row">

								<div class="col-md-6 mb-3">

									<label class="form-label"> First Name </label> <input
										type="text" name="first_name" class="form-control" required>

								</div>

								<div class="col-md-6 mb-3">

									<label class="form-label"> Last Name </label> <input
										type="text" name="last_name" class="form-control" required>

								</div>

							</div>

							<div class="mb-3">

								<label class="form-label"> Specialization </label> <input
									type="text" name="specialization" class="form-control"
									placeholder="Cardiologist, Neurologist..." required>

							</div>

							<div class="row">

								<div class="col-md-6 mb-3">

									<label class="form-label"> Phone Number </label> <input
										type="text" name="phone" class="form-control" required>

								</div>

								<div class="col-md-6 mb-3">

									<label class="form-label"> Email </label> <input type="email"
										name="email" class="form-control" required>

								</div>

							</div>

							<div class="row">

								<div class="col-md-6 mb-3">

									<label class="form-label"> Hire Date </label> <input
										type="date" name="hire_date" class="form-control" required>

								</div>

								<div class="col-md-6 mb-3">

									<label class="form-label"> Department ID </label> <input
										type="number" name="department_id" class="form-control"
										required>

								</div>

							</div>

							<div class="text-center mt-4">

								<button type="submit" class="btn btn-save btn-lg px-5">

									<i class="bi bi-save-fill"></i> Save Doctor

								</button>

								<a href="doctor.jsp" class="btn btn-secondary btn-lg ms-2">

									<i class="bi bi-arrow-left"></i> Back

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
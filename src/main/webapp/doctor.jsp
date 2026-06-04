<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Doctor Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: linear-gradient(135deg, #f4f7fb, #eef4ff);
}

.hero-section {
	background: linear-gradient(135deg, #198754, #20c997);
	color: white;
	border-radius: 25px;
	padding: 50px;
}

.dashboard-card {
	border-radius: 20px;
	transition: .3s;
}

.dashboard-card:hover {
	transform: translateY(-5px);
}

.stat-icon {
	font-size: 3rem;
}
</style>

</head>

<body>

	<%@ include file="doctorNavbar.jsp"%>

	<div class="container my-5">

		<div class="hero-section shadow-lg mb-5 text-center">

			<h1 class="fw-bold">
				<i class="bi bi-person-badge-fill"></i> Doctor Management System
			</h1>

			<p class="lead mt-3">Manage Doctors, Departments and Hospital
				Staff Efficiently</p>

		</div>

		<div class="row mb-5">

			<div class="col-md-3 mb-3">

				<div class="card dashboard-card shadow border-0 text-center h-100">

					<div class="card-body">

						<i class="bi bi-person-lines-fill stat-icon text-success"></i>

						<h2 class="fw-bold mt-3">0</h2>

						<p class="text-muted">Total Doctors</p>

					</div>

				</div>

			</div>

			<div class="col-md-3 mb-3">

				<div class="card dashboard-card shadow border-0 text-center h-100">

					<div class="card-body">

						<i class="bi bi-heart-pulse-fill stat-icon text-danger"></i>

						<h2 class="fw-bold mt-3">24/7</h2>

						<p class="text-muted">Medical Service</p>

					</div>

				</div>

			</div>

			<div class="col-md-3 mb-3">

				<div class="card dashboard-card shadow border-0 text-center h-100">

					<div class="card-body">

						<i class="bi bi-hospital stat-icon text-primary"></i>

						<h2 class="fw-bold mt-3">100%</h2>

						<p class="text-muted">Doctor Records</p>

					</div>

				</div>

			</div>

			<div class="col-md-3 mb-3">

				<div class="card dashboard-card shadow border-0 text-center h-100">

					<div class="card-body">

						<i class="bi bi-shield-check stat-icon text-warning"></i>

						<h2 class="fw-bold mt-3">Secure</h2>

						<p class="text-muted">Data Storage</p>

					</div>

				</div>

			</div>

		</div>

		<div class="card shadow border-0">

			<div class="card-header bg-success text-white">

				<h5 class="mb-0">
					<i class="bi bi-lightning-fill"></i> Quick Actions
				</h5>

			</div>

			<div class="card-body text-center">

				<a href="addDoctor.jsp" class="btn btn-success btn-lg m-2"> <i
					class="bi bi-person-plus-fill"></i> Add Doctor

				</a> <a href="<%=request.getContextPath()%>/ViewDoctorServlet"
					class="btn btn-primary btn-lg m-2"> <i
					class="bi bi-people-fill"></i> View Doctors

				</a>

			</div>

		</div>

	</div>

	<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
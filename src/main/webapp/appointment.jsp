<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: #f4f7fc;
}

.navbar-brand {
	font-weight: bold;
	font-size: 24px;
}

.dashboard-title {
	text-align: center;
	margin: 30px 0;
	font-weight: bold;
	color: #0d6efd;
}

.card {
	border: none;
	border-radius: 15px;
	transition: 0.3s;
}

.card:hover {
	transform: translateY(-8px);
}

.card i {
	font-size: 60px;
}
</style>

</head>
<body>

	<%@ include file="AppointmentNavbar.jsp"%>


	<div class="container">
		<h2 class="dashboard-title">Appointment Management Dashboard</h2>
		<div class="row g-4">

			<!-- Add -->

			<div class="col-md-3">
				<div class="card shadow text-center p-4">
					<i class="bi bi-calendar-plus text-success"></i>
					<h4 class="mt-3">Add Appointment</h4>
					<a href="AddAppointment.jsp" class="btn btn-success mt-3"> Open
					</a>
				</div>
			</div>

			<!-- View -->

			<div class="col-md-3">
				<div class="card shadow text-center p-4">
					<i class="bi bi-calendar-week text-primary"></i>
					<h4 class="mt-3">View Appointments</h4>
					<a href="ViewAppointmentServlet" class="btn btn-primary mt-3">
						Open </a>
				</div>
			</div>

			<!-- Search -->

			<div class="col-md-3">
				<div class="card shadow text-center p-4">
					<i class="bi bi-search text-warning"></i>
					<h4 class="mt-3">Search Appointment</h4>
					<a href="SearchAppointment.jsp" class="btn btn-warning mt-3">
						Open </a>
				</div>
			</div>

			<!-- Update -->

			<div class="col-md-3">
				<div class="card shadow text-center p-4">
					<i class="bi bi-pencil-square text-info"></i>
					<h4 class="mt-3">Update Appointment</h4>
					<a href="UpdateAppointment.jsp" class="btn btn-info mt-3"> Open
					</a>
				</div>
			</div>

			<!-- Delete -->
			<div class="col-md-3 mx-auto mt-4">
				<div class="card shadow text-center p-4">
					<i class="bi bi-trash text-danger"></i>
					<h4 class="mt-3">Delete Appointment</h4>
					<a href="DeleteAppointment.jsp" class="btn btn-danger mt-3">
						Open </a>
				</div>
			</div>
		</div>
	</div>
<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
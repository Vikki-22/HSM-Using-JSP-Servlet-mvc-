<%@ page import="java.util.List"%>
<%@ page import="Entity.Patients"%>
<%@ page import="ModelDao.PatientsDao"%>

<%
PatientsDao dao = new PatientsDao();
List<Patients> list = dao.viewAllPatients();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: linear-gradient(135deg, #f4f7fb, #eef4ff);
}

.patient-card {
	border-radius: 20px;
	transition: 0.3s;
}

.patient-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 12px 25px rgba(0, 0, 0, 0.12);
}

.dashboard-card {
	border-radius: 20px;
	transition: 0.3s;
}

.dashboard-card:hover {
	transform: translateY(-5px);
}

.badge {
	font-size: 12px;
}

.hero-section {
	background: linear-gradient(135deg, #0d6efd, #4f8cff);
	color: white;
	border-radius: 25px;
	padding: 50px;
}

.stat-icon {
	font-size: 3rem;
}
</style>

</head>

<body>


	<!-- NAVBAR -->
	<%@ include file="patientNavbar.jsp"%>

	<div class="container my-5">

		<!-- HERO SECTION -->
		<div class="hero-section shadow-lg mb-5 text-center">

			<h1 class="fw-bold">
				<i class="bi bi-hospital-fill"></i> Hospital Management System
			</h1>

			<p class="lead mt-3">Manage Patients, Medical Records and
				Hospital Information Efficiently</p>

		</div>

		<!-- DASHBOARD CARDS -->

		<div class="row mb-5">

			<div class="col-md-3 mb-3">

				<div class="card dashboard-card shadow border-0 text-center h-100">

					<div class="card-body">

						<i class="bi bi-people-fill stat-icon text-primary"></i>

						<h2 class="fw-bold mt-3">
							<%=list != null ? list.size() : 0%>
						</h2>

						<p class="text-muted">Total Patients</p>

					</div>

				</div>

			</div>

			<div class="col-md-3 mb-3">

				<div class="card dashboard-card shadow border-0 text-center h-100">

					<div class="card-body">

						<i class="bi bi-person-heart stat-icon text-success"></i>

						<h2 class="fw-bold mt-3">24/7</h2>

						<p class="text-muted">Patient Care</p>

					</div>

				</div>

			</div>

			<div class="col-md-3 mb-3">

				<div class="card dashboard-card shadow border-0 text-center h-100">

					<div class="card-body">

						<i class="bi bi-heart-pulse-fill stat-icon text-danger"></i>

						<h2 class="fw-bold mt-3">100%</h2>

						<p class="text-muted">Health Records</p>

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

		<!-- QUICK ACTIONS -->

		<div class="card shadow border-0 mb-5">

			<div class="card-header bg-primary text-white">

				<h5 class="mb-0">
					<i class="bi bi-lightning-fill"></i> Quick Actions
				</h5>

			</div>

			<div class="card-body text-center">

				<a href="addPatient.jsp" class="btn btn-success btn-lg m-2"> <i
					class="bi bi-person-plus-fill"></i> Add Patient
				</a> <a href="<%=request.getContextPath()%>/ViewPatientServlet"
					class="btn btn-primary btn-lg m-2"> <i
					class="bi bi-people-fill"></i> View Patients
				</a>

			</div>

		</div>

	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>

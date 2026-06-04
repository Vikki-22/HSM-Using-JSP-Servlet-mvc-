<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department Management</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: #f4f7fc;
}

.dashboard-card {
	border: none;
	border-radius: 20px;
	transition: .3s;
}

.dashboard-card:hover {
	transform: translateY(-8px);
}

.feature-card {
	border: none;
	border-radius: 20px;
	transition: .3s;
}

.feature-card:hover {
	transform: translateY(-8px);
}

.main-header {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	color: white;
	border-radius: 20px;
	padding: 40px;
	text-align: center;
}

.action-btn {
	padding: 12px 25px;
	border-radius: 12px;
	font-weight: 600;
}
</style>

</head>

<body>

	<%@ include file="departmentNavbar.jsp"%>

	<div class="container my-5">

		<!-- Header -->

		<div class="main-header shadow-lg mb-5">

			<h1>
				<i class="bi bi-building-fill"></i> Department Management
			</h1>

			<p class="mb-0">Manage Hospital Departments Efficiently</p>

		</div>

		<!-- Statistics -->

		<div class="row g-4">

			<div class="col-lg-4">

				<div class="card dashboard-card shadow-sm">

					<div class="card-body text-center">

						<i class="bi bi-building-fill text-primary"
							style="font-size: 65px;"></i>

						<h2 class="mt-3">10</h2>

						<h5>Total Departments</h5>

					</div>

				</div>

			</div>

			<div class="col-lg-4">

				<div class="card dashboard-card shadow-sm">

					<div class="card-body text-center">

						<i class="bi bi-geo-alt-fill text-success"
							style="font-size: 65px;"></i>

						<h2 class="mt-3">5</h2>

						<h5>Locations</h5>

					</div>

				</div>

			</div>

			<div class="col-lg-4">

				<div class="card dashboard-card shadow-sm">

					<div class="card-body text-center">

						<i class="bi bi-database-fill text-danger"
							style="font-size: 65px;"></i>

						<h2 class="mt-3">25</h2>

						<h5>Total Records</h5>

					</div>

				</div>

			</div>

		</div>

		<!-- Quick Actions -->

		<div class="card shadow-lg border-0 mt-5">

			<div class="card-body text-center p-5">

				<h3 class="mb-4">
					<i class="bi bi-lightning-fill text-warning"></i> Quick Actions
				</h3>

				<a href="addDepartment.jsp"
					class="btn btn-primary btn-lg action-btn me-3"> <i
					class="bi bi-plus-circle-fill"></i> Add Department

				</a> <a href="ViewDepartmentServlet"
					class="btn btn-success btn-lg action-btn"> <i
					class="bi bi-table"></i> View Departments

				</a>

			</div>

		</div>

		<!-- Information -->

		<div class="row mt-5 g-4">

			<div class="col-md-6">

				<div class="card feature-card shadow-sm h-100">

					<div class="card-body text-center p-4">

						<i class="bi bi-building-check text-primary"
							style="font-size: 60px;"></i>

						<h4 class="mt-3">Department Operations</h4>

						<p class="text-muted">Add, update, delete and manage all
							hospital departments efficiently.</p>

					</div>

				</div>

			</div>

			<div class="col-md-6">

				<div class="card feature-card shadow-sm h-100">

					<div class="card-body text-center p-4">

						<i class="bi bi-clipboard-data text-success"
							style="font-size: 60px;"></i>

						<h4 class="mt-3">Department Reports</h4>

						<p class="text-muted">View all department records and maintain
							hospital structure.</p>

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
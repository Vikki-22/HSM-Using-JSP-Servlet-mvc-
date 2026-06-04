<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
.navbar {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	padding: 15px 0;
}

.navbar-brand {
	font-size: 1.8rem;
	font-weight: 700;
	color: white !important;
}

.logo-icon {
	font-size: 2rem;
	margin-right: 8px;
}

.nav-link {
	color: white !important;
	font-weight: 500;
	margin: 0 8px;
	padding: 8px 15px !important;
	border-radius: 8px;
	transition: 0.3s;
}

.nav-link:hover {
	background: rgba(255, 255, 255, 0.15);
	transform: translateY(-2px);
}

.active-link {
	background: white;
	color: #0d6efd !important;
	font-weight: 600;
}

.login-btn {
	background: white;
	color: #0d6efd;
	font-weight: 600;
	border-radius: 30px;
	padding: 8px 20px;
	border: none;
	transition: 0.3s;
}

.login-btn:hover {
	transform: scale(1.05);
	background: #f1f5f9;
}
</style>

<nav class="navbar navbar-expand-lg shadow-lg">

	<div class="container">

		<!-- Logo -->
		<a class="navbar-brand" href="index.jsp"> <i
			class="bi bi-hospital-fill logo-icon"></i> HMS
		</a>

		<!-- Mobile Toggle -->
		<button class="navbar-toggler bg-light" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbarNav">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Menu -->
		<div class="collapse navbar-collapse" id="navbarNav">

			<ul class="navbar-nav mx-auto">

				<li class="nav-item"><a class="nav-link active-link"
					href="index.jsp"> <i class="bi bi-house-door-fill"></i> Home
				</a></li>

				<li class="nav-item"><a class="nav-link" href="doctor.jsp">
						<i class="bi bi-person-badge-fill"></i> Doctor
				</a></li>

				<li class="nav-item"><a class="nav-link" href="patient.jsp">
						<i class="bi bi-people-fill"></i> Patient
				</a></li>

				<li class="nav-item"><a class="nav-link" href="department.jsp">
						<i class="bi bi-building-fill"></i> Department
				</a></li>

				<li class="nav-item"><a class="nav-link" href="appointment.jsp">
						<i class="bi bi-calendar-check-fill"></i> Appointment
				</a></li>

				<li class="nav-item"><a class="nav-link" href="bill.jsp"> <i
						class="bi bi-receipt-cutoff"></i> Bill
				</a></li>

			</ul>

			<!-- Right Side Button -->
			<div>
				<button class="login-btn">
					<i class="bi bi-person-circle"></i> Admin
				</button>
			</div>

		</div>

	</div>

</nav>

<!-- Bootstrap JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
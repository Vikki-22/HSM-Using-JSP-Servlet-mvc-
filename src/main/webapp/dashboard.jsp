<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
.dashboard-section {
	padding: 60px 0;
}

/* Hero Section */
.hero-box {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	color: white;
	padding: 50px;
	border-radius: 20px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
	margin-bottom: 50px;
}

.hero-box h1 {
	font-size: 3rem;
	font-weight: 700;
}

.hero-box p {
	font-size: 1.1rem;
	color: #dbeafe;
}

/* Cards */
.dashboard-card {
	border: none;
	border-radius: 20px;
	overflow: hidden;
	transition: .4s;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
	height: 100%;
}

.dashboard-card:hover {
	transform: translateY(-10px);
}

.card-icon {
	font-size: 3rem;
	margin-bottom: 15px;
}

.doctor-card {
	background: linear-gradient(135deg, #3b82f6, #2563eb);
	color: white;
}

.patient-card {
	background: linear-gradient(135deg, #10b981, #059669);
	color: white;
}

.department-card {
	background: linear-gradient(135deg, #f59e0b, #d97706);
	color: white;
}

.appointment-card {
	background: linear-gradient(135deg, #ef4444, #dc2626);
	color: white;
}

.card-body {
	padding: 30px;
}

.card-count {
	font-size: 2.5rem;
	font-weight: 700;
}

.card-title {
	font-size: 1.2rem;
	font-weight: 600;
}

.quick-action {
	margin-top: 50px;
}

.action-btn {
	padding: 12px 25px;
	border-radius: 12px;
	font-weight: 600;
}
</style>

<section class="dashboard-section">

	<div class="container">

		<!-- Hero -->

		<div class="hero-box text-center">

			<h1>
				<i class="bi bi-hospital-fill"></i> Hospital Management System
			</h1>

			<p class="mt-3">Manage Doctors, Patients, Departments,
				Appointments and Billing Efficiently</p>

		</div>

		<!-- Dashboard Cards -->

		<div class="row g-4">

			<div class="col-lg-3 col-md-6">

				<div class="card dashboard-card doctor-card">

					<div class="card-body text-center">

						<i class="bi bi-person-badge-fill card-icon"></i>

						<div class="card-count">25</div>

						<div class="card-title">Total Doctors</div>

					</div>

				</div>

			</div>

			<div class="col-lg-3 col-md-6">

				<div class="card dashboard-card patient-card">

					<div class="card-body text-center">

						<i class="bi bi-people-fill card-icon"></i>

						<div class="card-count">150</div>

						<div class="card-title">Total Patients</div>

					</div>

				</div>

			</div>

			<div class="col-lg-3 col-md-6">

				<div class="card dashboard-card department-card">

					<div class="card-body text-center">

						<i class="bi bi-building-fill card-icon"></i>

						<div class="card-count">8</div>

						<div class="card-title">Departments</div>

					</div>

				</div>

			</div>

			<div class="col-lg-3 col-md-6">

				<div class="card dashboard-card appointment-card">

					<div class="card-body text-center">

						<i class="bi bi-calendar-check-fill card-icon"></i>

						<div class="card-count">320</div>

						<div class="card-title">Appointments</div>

					</div>

				</div>

			</div>

		</div>

		<!-- Quick Actions -->

		<div class="quick-action text-center">

			<h3 class="mb-4">Quick Actions</h3>

			<a href="doctor.jsp" class="btn btn-primary action-btn me-2"> Add
				Doctor </a> <a href="patient.jsp"
				class="btn btn-success action-btn me-2"> Add Patient </a> <a
				href="appointment.jsp" class="btn btn-danger action-btn"> Book
				Appointment </a>

		</div>

	</div>

</section>
<!-- doctorNavbar.jsp -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
.doctor-navbar {
	background: linear-gradient(135deg, #065f46, #059669, #10b981);
	padding: 15px 0;
}

.doctor-navbar .navbar-brand {
	color: white !important;
	font-size: 1.8rem;
	font-weight: 700;
}

.doctor-navbar .nav-link {
	color: white !important;
	font-weight: 500;
	padding: 10px 18px !important;
	border-radius: 10px;
	margin: 0 8px;
	transition: .3s;
}

.doctor-navbar .nav-link:hover {
	background: rgba(255, 255, 255, .15);
}

.doctor-navbar .active-link {
	background: white;
	color: #059669 !important;
	font-weight: 600;
}

.admin-btn {
	background: white;
	color: #059669;
	border: none;
	border-radius: 30px;
	padding: 8px 20px;
	font-weight: 600;
}
</style>

<nav class="navbar navbar-expand-lg doctor-navbar shadow-lg">

	<div class="container">

		<a class="navbar-brand" href="index.jsp"> <i
			class="bi bi-hospital-fill"></i> HMS
		</a>

		<button class="navbar-toggler bg-light" type="button"
			data-bs-toggle="collapse" data-bs-target="#doctorNav">

			<span class="navbar-toggler-icon"></span>

		</button>

		<div class="collapse navbar-collapse" id="doctorNav">

			<ul class="navbar-nav mx-auto">

				<li class="nav-item"><a class="nav-link active-link"
					href="addDoctor.jsp"> <i class="bi bi-person-plus-fill"></i>
						Add Doctor

				</a></li>

				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/ViewDoctorServlet"> <i
						class="bi bi-people-fill"></i> View Doctors

				</a></li>

				<li class="nav-item">

					<form class="d-flex"
						action="<%=request.getContextPath()%>/SearchDoctorServlet"
						method="get">

						<input class="form-control me-2" type="search" name="name"
							placeholder="Search Doctor">

						<button class="btn btn-light" type="submit">
							<i class="bi bi-search"></i>
						</button>

					</form>

				</li>

			</ul>

			<button class="admin-btn">
				<i class="bi bi-person-circle"></i> Admin
			</button>

		</div>

	</div>

</nav>
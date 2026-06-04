<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
.department-navbar {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	padding: 15px 0;
}

.department-navbar .navbar-brand {
	color: white !important;
	font-size: 1.8rem;
	font-weight: 700;
}

.department-navbar .nav-link {
	color: white !important;
	font-weight: 500;
	padding: 10px 18px !important;
	border-radius: 10px;
	transition: .3s;
	margin: 0 8px;
}

.department-navbar .nav-link:hover {
	background: rgba(255, 255, 255, .15);
}

.department-navbar .active-link {
	background: white;
	color: #2563eb !important;
	font-weight: 600;
}

.admin-btn {
	background: white;
	color: #2563eb;
	border: none;
	border-radius: 30px;
	padding: 8px 20px;
	font-weight: 600;
}

.admin-btn:hover {
	background: #f1f5f9;
}
</style>

<nav class="navbar navbar-expand-lg department-navbar shadow-lg">

	<div class="container">

		<!-- Logo -->
		<a class="navbar-brand" href="index.jsp"> <i
			class="bi bi-hospital-fill"></i> HMS
		</a>

		<button class="navbar-toggler bg-light" type="button"
			data-bs-toggle="collapse" data-bs-target="#departmentNav">

			<span class="navbar-toggler-icon"></span>

		</button>

		<div class="collapse navbar-collapse" id="departmentNav">

			<ul class="navbar-nav mx-auto">

				<li class="nav-item"><a
					class="nav-link ${param.page=='add' ? 'active-link' : ''}"
					href="addDepartment.jsp"> <i class="bi bi-plus-circle-fill"></i>
						Add Department

				</a></li>

				<li class="nav-item"><a
					class="nav-link ${param.page=='view' ? 'active-link' : ''}"
					href="ViewDepartmentServlet"> <i class="bi bi-table"></i> View
						Departments

				</a></li>
				
				<!-- SEARCH DOCTOR -->
				<li class="nav-item">
					<form class="d-flex"
						action="<%=request.getContextPath()%>/SearchDepartmentServlet"
						method="get">

						<input class="form-control me-2" type="search" name="name"
							placeholder="Search Doctor">

						<button class="btn btn-light" type="submit">
							<i class="bi bi-search"></i>
						</button>
				  </form>

			</ul>

			<button class="admin-btn">

				<i class="bi bi-person-circle"></i> Admin

			</button>

		</div>

	</div>

</nav>
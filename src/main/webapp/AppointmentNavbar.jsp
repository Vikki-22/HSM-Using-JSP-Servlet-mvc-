<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Navbar Start -->

<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow">

	<div class="container">

		<a class="navbar-brand" href="index.jsp"> <i class="bi bi-hospital"></i>
			Hospital Management System
		</a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav">

			<span class="navbar-toggler-icon"></span>

		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link"
					href="appointment.jsp"> <i class="bi bi-house-door"></i>
						Home
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle active" href="#" role="button"
					data-bs-toggle="dropdown"> <i class="bi bi-calendar-check"></i>
						Appointment
				</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="AddAppointment.jsp"> <i
								class="bi bi-calendar-plus"></i> Add Appointment
						</a></li>
						<li><a class="dropdown-item" href="ViewAppointmentServlet">
								<i class="bi bi-eye"></i> View Appointments
						</a></li>
						<li><a class="dropdown-item" href="SearchAppointment.jsp">
								<i class="bi bi-search"></i> Search Appointment
						</a></li>
						<li><a class="dropdown-item" href="UpdateAppointment.jsp">
								<i class="bi bi-pencil-square"></i> Update Appointment
						</a></li>
						<li><a class="dropdown-item" href="DeleteAppointment.jsp">
								<i class="bi bi-trash"></i> Delete Appointment
						</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="LogoutServlet">
						<i class="bi bi-box-arrow-right"></i> Logout
				</a></li>
			</ul>
		</div>
	</div>
</nav>

<!-- Navbar End -->
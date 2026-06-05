
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Appointment</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>
<body class="bg-light">

<%@ include file="AppointmentNavbar.jsp"%>

<div class="container mt-5">

	<div class="card shadow">

		<div class="card-header bg-primary text-white">
			<h3>Add Appointment</h3>
		</div>

		<div class="card-body">

			<form action="AddAppointmentServlet" method="post">

				<div class="mb-3">
					<label>Patient ID</label>
					<input type="number"
						name="patientId"
						class="form-control"
						required>
				</div>

				<div class="mb-3">
					<label>Doctor ID</label>
					<input type="number"
						name="doctorId"
						class="form-control"
						required>
				</div>

				<div class="mb-3">
					<label>Appointment Date & Time</label>
					<input type="datetime-local"
						name="appointmentDate"
						class="form-control"
						required>
				</div>

				<div class="mb-3">
					<label>Status</label>

					<select name="status"
						class="form-control">

						<option>Scheduled</option>
						<option>Completed</option>
						<option>Cancelled</option>

					</select>

				</div>

				<div class="mb-3">
					<label>Reason</label>

					<textarea
						name="reason"
						class="form-control"
						rows="3"></textarea>
				</div>

				<button class="btn btn-success">
					Add Appointment
				</button>

			</form>

		</div>

	</div>

</div>

<%@ include file="footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
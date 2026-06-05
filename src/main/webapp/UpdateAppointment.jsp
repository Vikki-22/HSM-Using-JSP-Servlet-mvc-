<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Appointment</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body class="bg-light">
<%@ include file="AppointmentNavbar.jsp"%>

<div class="container mt-5">

	<div class="card shadow">

		<div class="card-header bg-info text-white">
			<h3>Update Appointment</h3>
		</div>

		<div class="card-body">

			<form action="UpdateAppointmentServlet"
				method="post">

				<div class="mb-3">
					<label>Appointment ID</label>

					<input type="number"
						name="appointmentId"
						class="form-control"
						required>
				</div>

				<div class="mb-3">
					<label>Status</label>

					<select
						name="status"
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
						class="form-control"></textarea>
				</div>

				<button class="btn btn-info">
					Update Appointment
				</button>

			</form>

		</div>

	</div>

</div>
<%@ include file="footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
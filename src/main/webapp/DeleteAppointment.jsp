<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Appointment</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body class="bg-light">
<%@ include file="AppointmentNavbar.jsp"%>
<div class="container mt-5">

	<div class="card shadow">

		<div class="card-header bg-danger text-white">
			<h3>Delete Appointment</h3>
		</div>

		<div class="card-body">

			<form action="DeleteAppointmentServlet"
				method="post">

				<div class="mb-3">

					<label>Appointment ID</label>

					<input type="number"
						name="appointmentId"
						class="form-control"
						required>

				</div>

				<button class="btn btn-danger"
					onclick="return confirm('Delete Appointment?')">

					Delete

				</button>

			</form>

		</div>

	</div>

</div>
<%@ include file="footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
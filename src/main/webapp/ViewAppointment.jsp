<%@page import="java.util.List"%>
<%@page import="Entity.Appointments"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Appointments</title>

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

				<h3>
					<i class="bi bi-calendar-check"></i> All Appointments
				</h3>

			</div>

			<div class="card-body">

				<table class="table table-bordered table-hover">

					<thead class="table-dark">

						<tr>
							<th>ID</th>
							<th>Patient ID</th>
							<th>Doctor ID</th>
							<th>Appointment Date</th>
							<th>Status</th>
							<th>Reason</th>
						</tr>

					</thead>

					<tbody>

						<%
						List<Appointments> list = (List<Appointments>) request.getAttribute("appointments");

						if (list != null) {

							for (Appointments a : list) {
						%>

						<tr>

							<td><%=a.getAppointmentId()%></td>

							<td><%=a.getPatientId()%></td>

							<td><%=a.getDoctorId()%></td>

							<td><%=a.getAppointmentDate()%></td>

							<td><%=a.getStatus()%></td>

							<td><%=a.getReason()%></td>

						</tr>

						<%
						}
						}
						%>

					</tbody>

				</table>

			</div>

		</div>

	</div>

	<%@ include file="footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
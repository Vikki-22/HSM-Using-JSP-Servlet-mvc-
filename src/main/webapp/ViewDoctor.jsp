<%@page import="java.util.List"%>
<%@page import="Entity.Doctors"%>

<%
List<Doctors> doctorList = (List<Doctors>) request.getAttribute("doctorList");
%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>View Doctors</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: #f4f7fb;
}

.table-card {
	border-radius: 20px;
	overflow: hidden;
}

.page-header {
	background: linear-gradient(135deg, #198754, #20c997);
	color: white;
	padding: 25px;
	border-radius: 20px;
	margin-bottom: 25px;
}

.table th {
	vertical-align: middle;
	text-align: center;
}

.table td {
	vertical-align: middle;
	text-align: center;
}

.action-btn {
	margin: 2px;
}
</style>

</head>

<body>


	<%@ include file="doctorNavbar.jsp"%>

	<div class="container my-5">

		<div class="page-header shadow">

			<h2>
				<i class="bi bi-person-badge-fill"></i> Doctor Records
			</h2>

			<p class="mb-0">View and Manage All Doctors</p>

		</div>

		<div class="card shadow-lg border-0 table-card">

			<div class="card-header bg-success text-white">

				<h5 class="mb-0">
					<i class="bi bi-people-fill"></i> All Doctors
				</h5>

			</div>

			<div class="card-body">

				<div class="table-responsive">

					<table class="table table-bordered table-hover align-middle">

						<thead class="table-success">

							<tr>

								<th>ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Specialization</th>
								<th>Phone</th>
								<th>Email</th>
								<th>Hire Date</th>
								<th>Department ID</th>
								<th>Actions</th>

							</tr>

						</thead>

						<tbody>

							<%
							if (doctorList != null && !doctorList.isEmpty()) {

								for (Doctors d : doctorList) {
							%>

							<tr>

								<td><%=d.getDoctor_id()%></td>

								<td><%=d.getFirst_name()%></td>

								<td><%=d.getLast_name()%></td>

								<td><%=d.getSpecialization()%></td>

								<td><%=d.getPhone()%></td>

								<td><%=d.getEmail()%></td>

								<td><%=d.getHire_date()%></td>

								<td><%=d.getDepartments_id() != null ? d.getDepartments_id().getDepartment_id() : ""%></td>

								<td><a
									href="<%=request.getContextPath()%>/EditDoctorServlet?id=<%=d.getDoctor_id()%>"
									class="btn btn-warning btn-sm"> <i
										class="bi bi-pencil-square"></i>

								</a> <a
									href="<%=request.getContextPath()%>/DeleteDoctorServlet?id=<%=d.getDoctor_id()%>"
									class="btn btn-danger btn-sm"
									onclick="return confirm('Delete this doctor?')"> <i
										class="bi bi-trash-fill"></i>

								</a></td>

							</tr>

							<%
							}
							} else {
							%>

							<tr>

								<td colspan="9" class="text-center text-danger fw-bold">No
									Doctor Records Found</td>

							</tr>

							<%
							}
							%>

						</tbody>

					</table>

				</div>

			</div>

		</div>

	</div>

	<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>

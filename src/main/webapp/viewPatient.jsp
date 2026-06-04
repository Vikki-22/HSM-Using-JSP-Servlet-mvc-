<%@ page import="java.util.List, Entity.Patients"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Patients</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>

<body>

	<!-- NAVBAR -->
	<%@ include file="patientNavbar.jsp"%>

	<div class="container my-5">

		<h2 class="text-center text-primary mb-4">
			<i class="bi bi-people-fill"></i> Patient Records
		</h2>

		<div class="card shadow">
			<div class="card-body">

				<table
					class="table table-bordered table-hover text-center align-middle">

					<thead class="table-primary">
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Gender</th>
							<th>Phone</th>
							<th>Email</th>
							<th>Blood Group</th>
							<th>Actions</th>
						</tr>
					</thead>

					<tbody>

						<%
						List<Patients> list = (List<Patients>) request.getAttribute("patientList");

						if (list != null && list.size() > 0) {

							for (Patients p : list) {
						%>

						<tr>
							<td><%=p.getPatient_id()%></td>

							<td><%=p.getFirst_name()%> <%=p.getLast_name()%></td>

							<td><%=p.getGender()%></td>

							<td><%=p.getPhone()%></td>

							<td><%=p.getEmail()%></td>

							<td><span class="badge bg-info text-dark"> <%=p.getBlood_group()%>
							</span></td>

							<!-- ACTION BUTTONS -->
							<td>
								<!-- 🔵 VIEW BUTTON (FULL DETAILS OPEN) --> <a
								href="ViewSinglePatientServlet?id=<%=p.getPatient_id()%>"
								class="btn btn-primary btn-sm"> <i class="bi bi-eye"></i>
									View
							</a> <!-- 🟡 EDIT --> <a
								href="EditPatientServlet?id=<%=p.getPatient_id()%>"
								class="btn btn-warning btn-sm text-white"> <i
									class="bi bi-pencil"></i>
							</a> <!-- 🔴 DELETE --> <a
								href="DeletePatientServlet?id=<%=p.getPatient_id()%>"
								class="btn btn-danger btn-sm"
								onclick="return confirm('Are you sure you want to delete this patient?')">
									<i class="bi bi-trash"></i>
							</a>

							</td>

						</tr>

						<%
						}

						} else {
						%>

						<tr>
							<td colspan="7" class="text-danger fw-bold">No Patients
								Found 😔</td>
						</tr>

						<%
						}
						%>

					</tbody>

				</table>

			</div>
		</div>

	</div>

	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
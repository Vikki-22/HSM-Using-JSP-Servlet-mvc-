<%@page import="java.util.List"%>
<%@page import="Entity.Departments"%>

<%
List<Departments> list = (List<Departments>) request.getAttribute("departmentList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Departments</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: #f4f7fc;
}

.page-header {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	color: white;
	padding: 25px;
	border-radius: 15px;
	margin-bottom: 25px;
}

.table-container {
	background: white;
	padding: 25px;
	border-radius: 15px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
}

.table th {
	text-align: center;
	vertical-align: middle;
}

.table td {
	text-align: center;
	vertical-align: middle;
}

.action-btn {
	margin: 2px;
}
</style>

</head>

<body>

	<%@ include file="departmentNavbar.jsp"%>

	<div class="container my-5">

		<div class="page-header text-center">

			<h2>
				<i class="bi bi-building-fill"></i> Department Records
			</h2>

			<p class="mb-0">View All Available Departments</p>

		</div>

		<div class="table-container">

			<div class="d-flex justify-content-between mb-3">

				<h4>
					<i class="bi bi-table"></i> Department List
				</h4>

				<a href="addDepartment.jsp" class="btn btn-primary"> <i
					class="bi bi-plus-circle-fill"></i> Add Department

				</a>

			</div>

			<table class="table table-bordered table-hover">

				<thead class="table-dark">

					<tr>

						<th>ID</th>
						<th>Department Name</th>
						<th>Location</th>
						<th>Actions</th>

					</tr>

				</thead>

				<tbody>

					<%
					if (list != null && !list.isEmpty()) {

						for (Departments d : list) {
					%>

					<tr>

						<td><%=d.getDepartment_id()%></td>

						<td><%=d.getDepartment_name()%></td>

						<td><%=d.getLocation()%></td>

						<td><a
							href="UpdateDepartmentServlet?id=<%=d.getDepartment_id()%>"
							class="btn btn-warning btn-sm action-btn"> <i
								class="bi bi-pencil-square"></i> Edit

						</a> <a href="DeleteDepartmentServlet?id=<%=d.getDepartment_id()%>"
							class="btn btn-danger btn-sm action-btn"
							onclick="return confirm('Are you sure you want to delete this department?')">

								<i class="bi bi-trash-fill"></i> Delete

						</a></td>

					</tr>

					<%
					}
					} else {
					%>

					<tr>

						<td colspan="4">

							<div class="alert alert-warning mb-0">No Department Found</div>

						</td>

					</tr>

					<%
					}
					%>

				</tbody>

			</table>

		</div>

	</div>

	<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
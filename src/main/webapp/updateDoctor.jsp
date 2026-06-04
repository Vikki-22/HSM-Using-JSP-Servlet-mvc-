<%@page import="Entity.Doctors"%>

<%
Doctors d = (Doctors) request.getAttribute("doctor");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Doctor</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>

<body>

	<%@ include file="doctorNavbar.jsp"%>

	<div class="container mt-5">

		<div class="card shadow">

			<div class="card-header bg-success text-white">

				<h3>
					<i class="bi bi-pencil-square"></i> Update Doctor
				</h3>

			</div>

			<div class="card-body">

				<form action="<%=request.getContextPath()%>/UpdateDoctorServlet"
					method="post">

					<input type="hidden" name="doctor_id" value="<%=d.getDoctor_id()%>">

					<div class="row">

						<div class="col-md-6 mb-3">

							<label>First Name</label> <input type="text" name="first_name"
								class="form-control" value="<%=d.getFirst_name()%>" required>

						</div>

						<div class="col-md-6 mb-3">

							<label>Last Name</label> <input type="text" name="last_name"
								class="form-control" value="<%=d.getLast_name()%>" required>

						</div>

					</div>

					<div class="mb-3">

						<label>Specialization</label> <input type="text"
							name="specialization" class="form-control"
							value="<%=d.getSpecialization()%>" required>

					</div>

					<div class="row">

						<div class="col-md-6 mb-3">

							<label>Phone</label> <input type="text" name="phone"
								class="form-control" value="<%=d.getPhone()%>" required>

						</div>

						<div class="col-md-6 mb-3">

							<label>Email</label> <input type="email" name="email"
								class="form-control" value="<%=d.getEmail()%>" required>

						</div>

					</div>

					<div class="row">

						<div class="col-md-6 mb-3">

							<label>Hire Date</label> <input type="date" name="hire_date"
								class="form-control"
								value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd").format(d.getHire_date())%>"
								required>

						</div>

						<div class="col-md-6 mb-3">

							<label>Department ID</label> <input type="number"
								name="department_id" class="form-control"
								value="<%=d.getDepartments_id().getDepartment_id()%>" required>

						</div>

					</div>

					<button type="submit" class="btn btn-success">

						<i class="bi bi-save-fill"></i> Update Doctor

					</button>

				</form>

			</div>

		</div>

	</div>

</body>
</html>
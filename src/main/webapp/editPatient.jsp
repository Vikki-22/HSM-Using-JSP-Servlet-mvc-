<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Patient</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: #f4f7fb;
}

.card {
	border-radius: 15px;
}
</style>

</head>

<body>

	<%@ include file="patientNavbar.jsp"%>

	<%@ page import="Entity.Patients"%>

	<%
	Patients p = (Patients) request.getAttribute("patient");

	// SAFE DATE FORMAT FIX
	String dob = p.getDate_of_birth() != null ? p.getDate_of_birth().toString() : "";
	String reg = p.getRegistration_date() != null ? p.getRegistration_date().toString() : "";
	%>

	<div class="container my-5">

		<div class="row justify-content-center">

			<div class="col-md-8">

				<div class="card shadow border-0">

					<div class="card-body p-4">

						<h3 class="text-center text-warning mb-4">
							<i class="bi bi-pencil-square"></i> Edit Patient
						</h3>

						<!-- ✅ FIXED ACTION -->
						<form action="UpdatePatientServlet" method="post">

							<input type="hidden" name="patient_id"
								value="<%=p.getPatient_id()%>">

							<div class="row">

								<div class="col-md-6 mb-3">
									<label>First Name</label> <input type="text" name="first_name"
										class="form-control" value="<%=p.getFirst_name()%>" required>
								</div>

								<div class="col-md-6 mb-3">
									<label>Last Name</label> <input type="text" name="last_name"
										class="form-control" value="<%=p.getLast_name()%>" required>
								</div>

								<div class="col-md-6 mb-3">
									<label>Gender</label> <select name="gender"
										class="form-control">
										<option <%=p.getGender().equals("Male") ? "selected" : ""%>>M</option>
										<option <%=p.getGender().equals("Female") ? "selected" : ""%>>F</option>
										<option <%=p.getGender().equals("Other") ? "selected" : ""%>>O</option>
									</select>
								</div>

								<div class="col-md-6 mb-3">
									<label>Date of Birth</label> <input type="date"
										name="date_of_birth" class="form-control" value="<%=dob%>"
										required>
								</div>

								<div class="col-md-6 mb-3">
									<label>Phone</label> <input type="text" name="phone"
										class="form-control" value="<%=p.getPhone()%>" required>
								</div>

								<div class="col-md-6 mb-3">
									<label>Email</label> <input type="email" name="email"
										class="form-control" value="<%=p.getEmail()%>" required>
								</div>

								<div class="col-md-12 mb-3">
									<label>Address</label>
									<textarea name="address" class="form-control" required><%=p.getAddress()%></textarea>
								</div>

								<div class="col-md-6 mb-3">
									<label>Blood Group</label> <input type="text"
										name="blood_group" class="form-control"
										value="<%=p.getBlood_group()%>" required>
								</div>

								<div class="col-md-6 mb-3">
									<label>Registration Date</label> <input type="date"
										name="registration_date" class="form-control" value="<%=reg%>"
										required>
								</div>

							</div>

							<div class="text-center mt-3">

								<button type="submit" class="btn btn-warning text-white px-4">
									Update Patient</button>

								<a href="ViewPatientServlet" class="btn btn-secondary px-4">
									Cancel </a>

							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>
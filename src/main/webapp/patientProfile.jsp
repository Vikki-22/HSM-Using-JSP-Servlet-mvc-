<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Profile</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: linear-gradient(135deg, #eef2ff, #f4f7fb);
}

.profile-header {
	background: linear-gradient(135deg, #1e3a8a, #2563eb);
	color: white;
	padding: 25px;
	border-radius: 15px 15px 0 0;
}

.profile-card {
	border-radius: 15px;
	overflow: hidden;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
}

.info-box {
	background: #ffffff;
	border-radius: 12px;
	padding: 12px 15px;
	margin-bottom: 12px;
	box-shadow: 0 3px 8px rgba(0, 0, 0, 0.05);
}

.label {
	font-size: 13px;
	color: #6b7280;
}

.value {
	font-size: 16px;
	font-weight: 600;
	color: #111827;
}

.badge-custom {
	background: #e0f2fe;
	color: #0369a1;
	padding: 5px 10px;
	border-radius: 20px;
	font-weight: 600;
}
</style>

</head>

<body>

	<%@ include file="patientNavbar.jsp"%>

	<%@ page import="Entity.Patients"%>

	<%
	Patients p = (Patients) request.getAttribute("patient");
	%>

	<div class="container my-5">

		<div class="card profile-card">

			<!-- HEADER -->
			<div class="profile-header text-center">
				<h3>
					<i class="bi bi-person-badge"></i> Patient Profile
				</h3>
				<p class="mb-0">Complete Medical Information Record</p>
			</div>

			<div class="card-body p-4">

				<div class="row">

					<!-- LEFT SIDE -->
					<div class="col-md-6">

						<div class="info-box">
							<div class="label">Patient ID</div>
							<div class="value">
								#<%=p.getPatient_id()%></div>
						</div>

						<div class="info-box">
							<div class="label">Full Name</div>
							<div class="value">
								<%=p.getFirst_name()%>
								<%=p.getLast_name()%>
							</div>
						</div>

						<div class="info-box">
							<div class="label">Gender</div>
							<div class="value"><%=p.getGender()%></div>
						</div>

						<div class="info-box">
							<div class="label">Date of Birth</div>
							<div class="value"><%=p.getDate_of_birth()%></div>
						</div>

						<div class="info-box">
							<div class="label">Blood Group</div>
							<div class="value">
								<span class="badge-custom"> <%=p.getBlood_group()%>
								</span>
							</div>
						</div>

					</div>

					<!-- RIGHT SIDE -->
					<div class="col-md-6">

						<div class="info-box">
							<div class="label">Phone Number</div>
							<div class="value"><%=p.getPhone()%></div>
						</div>

						<div class="info-box">
							<div class="label">Email Address</div>
							<div class="value"><%=p.getEmail()%></div>
						</div>

						<div class="info-box">
							<div class="label">Address</div>
							<div class="value"><%=p.getAddress()%></div>
						</div>

						<div class="info-box">
							<div class="label">Registration Date</div>
							<div class="value"><%=p.getRegistration_date()%></div>
						</div>

					</div>

				</div>

				<!-- BUTTONS -->
				<div class="text-center mt-4">

					<a href="EditPatientServlet?id=<%=p.getPatient_id()%>"
						class="btn btn-warning px-4"> <i class="bi bi-pencil-square"></i>
						Edit
					</a> <a href="ViewPatientServlet" class="btn btn-secondary px-4"> <i
						class="bi bi-arrow-left"></i> Back
					</a>

				</div>

			</div>

		</div>

	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>
```jsp
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>
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
.form-label {
	font-weight: 600;
}
</style>
</head>
<body>

	<!-- Navbar -->
	<%@ include file="patientNavbar.jsp"%>
	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card shadow border-0">
					<div class="card-body p-4">
						<h3 class="text-center text-success mb-4">
							<i class="bi bi-person-plus-fill"></i> Add New Patient
						</h3>
						<form action="AddPatientServlet" method="post">
							<div class="row">
								<!-- First Name -->
								<div class="col-md-6 mb-3">
									<label class="form-label">First Name</label> <input type="text"
										name="first_name" class="form-control"
										placeholder="Enter First Name" required>
								</div>
								<!-- Last Name -->
								<div class="col-md-6 mb-3">
									<label class="form-label">Last Name</label> <input type="text"
										name="last_name" class="form-control"
										placeholder="Enter Last Name" required>
								</div>
								<!-- Gender -->
								<div class="col-md-6 mb-3">
									<label class="form-label">Gender</label> <select name="gender"
										class="form-control" required>
										<option value="">Select Gender</option>
										<option value="M">M</option>
										<option value="F">F</option>
										<option value="O">O</option>
									</select>
								</div>
								<!-- Date of Birth -->
								<div class="col-md-6 mb-3">
									<label class="form-label">Date of Birth</label> <input
										type="date" name="date_of_birth" class="form-control" required>
								</div>
								<!-- Mobile Number -->
								<div class="col-md-6 mb-3">
									<label class="form-label">Mobile Number</label> <input
										type="text" name="phone" class="form-control"
										placeholder="Enter 10 Digit Mobile Number" maxlength="10"
										required>
								</div>
								<!-- Email Address -->
								<div class="col-md-6 mb-3">
									<label class="form-label">Email Address</label> <input
										type="email" name="email" class="form-control"
										placeholder="Enter Email Address" required>
								</div>
								<!-- Address -->
								<div class="col-md-12 mb-3">
									<label class="form-label">Address</label>
									<textarea name="address" class="form-control" rows="3"
										placeholder="Enter Complete Address" required></textarea>
								</div>
								<!-- Blood Group -->
								<div class="col-md-6 mb-3">
									<label class="form-label">Blood Group</label> <select
										name="blood_group" class="form-control" required>
										<option value="">Select Blood Group</option>
										<option value="A+">A+</option>
										<option value="A-">A-</option>
										<option value="B+">B+</option>
										<option value="B-">B-</option>
										<option value="O+">O+</option>
										<option value="O-">O-</option>
										<option value="AB+">AB+</option>
										<option value="AB-">AB-</option>
									</select>
								</div>
								<!-- Registration Date -->
								<div class="col-md-6 mb-3">
									<label class="form-label">Registration Date</label> <input
										type="date" name="registration_date" class="form-control"
										required>
								</div>
							</div>
							<div class="text-center mt-4">
								<button type="submit" class="btn btn-success px-4">
									<i class="bi bi-check-circle"></i> Save Patient
								</button>
								<a href="ViewPatientServlet" class="btn btn-secondary px-4">
									Cancel </a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<%@ include file="footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
```

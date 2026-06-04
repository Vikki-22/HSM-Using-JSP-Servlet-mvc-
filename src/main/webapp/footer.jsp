<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
.footer-section {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	color: white;
	padding: 60px 0 20px;
	margin-top: 50px;
}

.footer-logo {
	font-size: 2rem;
	font-weight: 700;
	margin-bottom: 15px;
}

.footer-text {
	color: #dbeafe;
	line-height: 1.8;
}

.footer-title {
	color: white;
	font-weight: 600;
	margin-bottom: 20px;
	position: relative;
}

.footer-title::after {
	content: '';
	position: absolute;
	left: 0;
	bottom: -8px;
	width: 50px;
	height: 3px;
	background: white;
	border-radius: 10px;
}

.footer-links {
	list-style: none;
	padding: 0;
}

.footer-links li {
	margin-bottom: 12px;
}

.footer-links a {
	text-decoration: none;
	color: #dbeafe;
	transition: 0.3s;
}

.footer-links a:hover {
	color: white;
	padding-left: 8px;
}

.contact-info p {
	color: #dbeafe;
	margin-bottom: 12px;
}

.contact-info i {
	margin-right: 8px;
}

.social-icons {
	margin-top: 20px;
}

.social-icons a {
	width: 42px;
	height: 42px;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	text-decoration: none;
	color: white;
	background: rgba(255, 255, 255, 0.15);
	margin-right: 10px;
	transition: 0.3s;
}

.social-icons a:hover {
	background: white;
	color: #2563eb;
	transform: translateY(-5px);
}

.footer-line {
	border-color: rgba(255, 255, 255, 0.2);
	margin: 35px 0 20px;
}

.copyright {
	color: #dbeafe;
	text-align: center;
	font-size: 15px;
}
</style>

<footer class="footer-section shadow-lg">

	<div class="container">

		<div class="row">

			<!-- About -->
			<div class="col-lg-4 col-md-6 mb-4">

				<h3 class="footer-logo">
					<i class="bi bi-hospital-fill"></i> HMS
				</h3>

				<p class="footer-text">Smart Hospital Management System for
					managing doctors, patients, appointments, departments and billing
					records efficiently.</p>

				<div class="social-icons">

					<a href="#"> <i class="bi bi-facebook"></i>
					</a> <a href="#"> <i class="bi bi-instagram"></i>
					</a> <a href="#"> <i class="bi bi-twitter-x"></i>
					</a> <a href="#"> <i class="bi bi-linkedin"></i>
					</a>

				</div>

			</div>

			<!-- Quick Links -->
			<div class="col-lg-2 col-md-6 mb-4">

				<h5 class="footer-title">Quick Links</h5>

				<ul class="footer-links">

					<li><a href="index.jsp">Home</a></li>

					<li><a href="doctor.jsp">Doctors</a></li>

					<li><a href="patient.jsp">Patients</a></li>

					<li><a href="department.jsp">Departments</a></li>

				</ul>

			</div>

			<!-- Services -->
			<div class="col-lg-3 col-md-6 mb-4">

				<h5 class="footer-title">Services</h5>

				<ul class="footer-links">

					<li><a href="#">Doctor Management</a></li>

					<li><a href="#">Patient Records</a></li>

					<li><a href="#">Appointments</a></li>

					<li><a href="#">Billing System</a></li>

				</ul>

			</div>

			<!-- Contact -->
			<div class="col-lg-3 col-md-6 mb-4">

				<h5 class="footer-title">Contact Us</h5>

				<div class="contact-info">

					<p>
						<i class="bi bi-geo-alt-fill"></i> Bhopal, Madhya Pradesh
					</p>

					<p>
						<i class="bi bi-envelope-fill"></i> hms@gmail.com
					</p>

					<p>
						<i class="bi bi-telephone-fill"></i> +91 9876543210
					</p>

				</div>

			</div>

		</div>

		<hr class="footer-line">

		<div class="copyright">

			© 2026 Hospital Management System | Designed & Developed by <strong>Code
				With Vikki</strong>

		</div>

	</div>

</footer>
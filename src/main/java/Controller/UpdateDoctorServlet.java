package Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import Entity.Departments;
import Entity.Doctors;
import ModelDao.DoctorsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			int doctor_id = Integer.parseInt(request.getParameter("doctor_id"));

			String first_name = request.getParameter("first_name");

			String last_name = request.getParameter("last_name");

			String specialization = request.getParameter("specialization");

			String phone = request.getParameter("phone");

			String email = request.getParameter("email");

			String hireDate = request.getParameter("hire_date");

			int department_id = Integer.parseInt(request.getParameter("department_id"));

			java.util.Date hire_date = new SimpleDateFormat("yyyy-MM-dd").parse(hireDate);

			Departments dept = new Departments();
			dept.setDepartment_id(department_id);

			Doctors d = new Doctors();

			d.setDoctor_id(doctor_id);
			d.setFirst_name(first_name);
			d.setLast_name(last_name);
			d.setSpecialization(specialization);
			d.setPhone(phone);
			d.setEmail(email);
			d.setHire_date(hire_date);
			d.setDepartments_id(dept);

			DoctorsDao dao = new DoctorsDao();

			dao.updateDoctor(d);

			response.sendRedirect(request.getContextPath() + "/ViewDoctorServlet");

		}

		catch (Exception e) {

			e.printStackTrace();

			response.getWriter().println("Error : " + e.getMessage());

		}
	}
}
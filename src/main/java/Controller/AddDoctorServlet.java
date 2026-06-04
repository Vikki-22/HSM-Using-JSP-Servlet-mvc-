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

@WebServlet("/AddDoctorServlet")
public class AddDoctorServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			String specialization = request.getParameter("specialization");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");

			String hireDateStr = request.getParameter("hire_date");

			int department_id = Integer.parseInt(request.getParameter("department_id"));

			java.util.Date hire_date = new SimpleDateFormat("yyyy-MM-dd").parse(hireDateStr);

			Departments dept = new Departments();
			dept.setDepartment_id(department_id);

			Doctors doctor = new Doctors();

			doctor.setFirst_name(first_name);
			doctor.setLast_name(last_name);
			doctor.setSpecialization(specialization);
			doctor.setPhone(phone);
			doctor.setEmail(email);
			doctor.setHire_date(hire_date);
			doctor.setDepartments_id(dept);

			DoctorsDao dao = new DoctorsDao();

			int result = dao.addDoctor(doctor);

			if (result > 0) {

				response.sendRedirect(request.getContextPath() + "/ViewDoctorServlet");

			} else {

				response.getWriter().println("Doctor Not Added!");

			}

		} catch (Exception e) {

			e.printStackTrace();
			response.getWriter().println("Error : " + e.getMessage());

		}
	}
}
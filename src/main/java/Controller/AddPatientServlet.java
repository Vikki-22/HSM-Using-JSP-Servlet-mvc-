package Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Entity.Patients;
import ModelDao.PatientsDao;

@WebServlet("/AddPatientServlet")
public class AddPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("date_of_birth");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String blood_group = request.getParameter("blood_group");
			String reg_date = request.getParameter("registration_date");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Patients p = new Patients(first_name, last_name, gender, sdf.parse(dob), phone, email, address, blood_group,
					sdf.parse(reg_date));
			PatientsDao dao = new PatientsDao();
			boolean f = dao.addPatient(p);
			if (f) {
				response.sendRedirect("ViewPatientServlet");
			} else {
				response.getWriter().print("Patient not added!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
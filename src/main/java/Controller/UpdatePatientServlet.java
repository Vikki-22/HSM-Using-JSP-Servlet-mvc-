package Controller;

import java.io.IOException;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Entity.Patients;
import ModelDao.PatientsDao;

@WebServlet("/UpdatePatientServlet")
public class UpdatePatientServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			int id = Integer.parseInt(request.getParameter("patient_id"));
			String firstName = request.getParameter("first_name");
			String lastName = request.getParameter("last_name");
			String gender = request.getParameter("gender");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String bloodGroup = request.getParameter("blood_group");
			Date dob = java.sql.Date.valueOf(request.getParameter("date_of_birth"));
			Date regDate = java.sql.Date.valueOf(request.getParameter("registration_date"));
			Patients p = new Patients();
			p.setPatient_id(id);
			p.setFirst_name(firstName);
			p.setLast_name(lastName);
			p.setGender(gender);
			p.setPhone(phone);
			p.setEmail(email);
			p.setAddress(address);
			p.setBlood_group(bloodGroup);
			p.setDate_of_birth(dob);
			p.setRegistration_date(regDate);
			PatientsDao dao = new PatientsDao();
			boolean f = dao.updatePatient(p);
			if (f) {
				response.sendRedirect("ViewPatientServlet");
			} else {
				response.getWriter().println("Update Failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().println("Error: " + e.getMessage());
		}
	}
}
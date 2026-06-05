package Controller;

import java.io.IOException;
import java.sql.Timestamp;

import Entity.Appointments;
import ModelDao.AppointmentsDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/AddAppointmentServlet")
public class AddAppointmentServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int patientId = Integer.parseInt(request.getParameter("patientId"));

		int doctorId = Integer.parseInt(request.getParameter("doctorId"));

		String appointmentDate = request.getParameter("appointmentDate");

		String status = request.getParameter("status");

		String reason = request.getParameter("reason");

		Appointments a = new Appointments();

		a.setPatientId(patientId);
		a.setDoctorId(doctorId);

		a.setAppointmentDate(Timestamp.valueOf(appointmentDate.replace("T", " ") + ":00"));

		a.setStatus(status);
		a.setReason(reason);

		AppointmentsDao dao = new AppointmentsDao();

		if (dao.addAppointment(a)) {

			response.sendRedirect("ViewAppointmentServlet");

		} else {

			response.getWriter().println("Appointment Not Added");
		}
	}
}
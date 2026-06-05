package Controller;

import java.io.IOException;

import Entity.Appointments;
import ModelDao.AppointmentsDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/UpdateAppointmentServlet")
public class UpdateAppointmentServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int appointmentId = Integer.parseInt(request.getParameter("appointmentId"));

		String status = request.getParameter("status");

		String reason = request.getParameter("reason");

		Appointments a = new Appointments();

		a.setAppointmentId(appointmentId);
		a.setStatus(status);
		a.setReason(reason);

		AppointmentsDao dao = new AppointmentsDao();

		if (dao.updateAppointment(a)) {

			response.sendRedirect("ViewAppointmentServlet");

		} else {

			response.getWriter().println("Appointment Not Updated");
		}
	}
}
package Controller;

import java.io.IOException;

import ModelDao.AppointmentsDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/DeleteAppointmentServlet")
public class DeleteAppointmentServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int appointmentId = Integer.parseInt(request.getParameter("appointmentId"));

		AppointmentsDao dao = new AppointmentsDao();

		if (dao.deleteAppointment(appointmentId)) {

			response.sendRedirect("ViewAppointmentServlet");

		} else {

			response.getWriter().println("Appointment Not Deleted");
		}
	}
}
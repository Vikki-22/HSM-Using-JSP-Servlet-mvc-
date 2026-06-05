package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import Entity.Appointments;
import ModelDao.AppointmentsDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/SearchAppointmentServlet")
public class SearchAppointmentServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int appointmentId = Integer.parseInt(request.getParameter("appointmentId"));

		AppointmentsDao dao = new AppointmentsDao();

		Appointments appointment = dao.searchAppointment(appointmentId);

		List<Appointments> list = new ArrayList<>();

		if (appointment != null) {
			list.add(appointment);
		}

		request.setAttribute("appointments", list);

		request.getRequestDispatcher("ViewAppointment.jsp").forward(request, response);
	}
}
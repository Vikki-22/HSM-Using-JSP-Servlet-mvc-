package Controller;

import java.io.IOException;
import java.util.List;

import Entity.Appointments;
import ModelDao.AppointmentsDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/ViewAppointmentServlet")
public class ViewAppointmentServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AppointmentsDao dao = new AppointmentsDao();

		List<Appointments> list = dao.getAllAppointments();

		request.setAttribute("appointments", list);

		request.getRequestDispatcher("ViewAppointment.jsp").forward(request, response);
	}
}
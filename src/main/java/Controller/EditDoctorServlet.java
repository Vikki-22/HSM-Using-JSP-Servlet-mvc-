package Controller;

import java.io.IOException;

import Entity.Doctors;
import ModelDao.DoctorsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditDoctorServlet")
public class EditDoctorServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int doctorId = Integer.parseInt(request.getParameter("id"));

		DoctorsDao dao = new DoctorsDao();

		Doctors doctor = dao.viewDoctorById(doctorId);

		request.setAttribute("doctor", doctor);

		request.getRequestDispatcher("updateDoctor.jsp").forward(request, response);
	}
}
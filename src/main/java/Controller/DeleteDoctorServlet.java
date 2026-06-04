package Controller;

import java.io.IOException;

import ModelDao.DoctorsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteDoctorServlet")
public class DeleteDoctorServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int doctorId = Integer.parseInt(request.getParameter("id"));

		DoctorsDao dao = new DoctorsDao();

		dao.deleteDoctor(doctorId);

		response.sendRedirect(request.getContextPath() + "/ViewDoctorServlet");
	}
}
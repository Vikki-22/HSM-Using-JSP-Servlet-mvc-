package Controller;

import java.io.IOException;
import java.util.List;

import Entity.Doctors;
import ModelDao.DoctorsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SearchDoctorServlet")
public class SearchDoctorServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public SearchDoctorServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");

		DoctorsDao dao = new DoctorsDao();

		List<Doctors> doctorList = dao.searchDoctorByName(name);

		request.setAttribute("doctorList", doctorList);

		request.getRequestDispatcher("ViewDoctor.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}
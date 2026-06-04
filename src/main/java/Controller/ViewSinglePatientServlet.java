package Controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Entity.Patients;
import ModelDao.PatientsDao;

@WebServlet("/ViewSinglePatientServlet")
public class ViewSinglePatientServlet extends HttpServlet {

	private static final long serialVersionUID = 7970809574293387669L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String idStr = request.getParameter("id");
			if (idStr == null || idStr.isEmpty()) {
				response.getWriter().println("Invalid Patient ID");
				return;
			}
			int id = Integer.parseInt(idStr);
			PatientsDao dao = new PatientsDao();
			Patients p = dao.viewPatientById(id);
			if (p == null) {
				response.getWriter().println("Patient not found");
				return;
			}
			request.setAttribute("patient", p);
			request.getRequestDispatcher("patientProfile.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().println("Error: " + e.getMessage());
		}
	}
}
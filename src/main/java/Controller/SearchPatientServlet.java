package Controller;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Entity.Patients;
import ModelDao.PatientsDao;

@WebServlet("/SearchPatientServlet")
public class SearchPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name =request.getParameter("name");
		PatientsDao dao = new PatientsDao();
		List<Patients> list = dao.Search(name);
		request.setAttribute("patientList", list);
		request.getRequestDispatcher("/viewPatient.jsp").forward(request, response);
	}
}
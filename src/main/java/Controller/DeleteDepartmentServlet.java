package Controller;

import java.io.IOException;

import ModelDao.DepartmentDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteDepartmentServlet")
public class DeleteDepartmentServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		DepartmentDao dao = new DepartmentDao();
		int i = dao.deleteDepartment(id);
		if(i > 0) {
			response.sendRedirect("ViewDepartmentServlet");
		}
		else {
			response.sendRedirect("viewDepartment.jsp");
		}
	}
}
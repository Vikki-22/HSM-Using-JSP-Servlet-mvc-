package Controller;

import java.io.IOException;
import java.util.List;

import Entity.Departments;
import ModelDao.DepartmentDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewDepartmentServlet")
public class ViewDepartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DepartmentDao dao = new DepartmentDao();
		List<Departments> list = dao.viewDepartments();
		request.setAttribute("departmentList", list);
		request.getRequestDispatcher("viewDepartment.jsp") .forward(request, response);
	}
}
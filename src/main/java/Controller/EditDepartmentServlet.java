package Controller;

import java.io.IOException;

import Entity.Departments;
import ModelDao.DepartmentDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditDepartmentServlet")
public class EditDepartmentServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(
				request.getParameter("department_id"));
		String departmentName =	request.getParameter("department_name");
		String location =request.getParameter("location");
		Departments d = new Departments();
		d.setDepartment_id(id);
		d.setDepartment_name(departmentName);
		d.setLocation(location);
		DepartmentDao dao = new DepartmentDao();
		int i = dao.updateDepartment(d);
		if(i > 0) {
			response.sendRedirect("ViewDepartmentServlet");
		}
		else {
			response.sendRedirect("updateDepartment.jsp");
		}
	}
}
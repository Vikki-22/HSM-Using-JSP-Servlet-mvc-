package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import Entity.Departments;
import Entity.Patients;
import ModelDao.DepartmentDao;
import ModelDao.PatientsDao;


@WebServlet("/SearchDepartmentServlet")
public class SearchDepartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

			
			String name =request.getParameter("name");
			DepartmentDao dao =new DepartmentDao();
			List<Departments> list = dao.Search(name);
			request.setAttribute("departmentList", list);
			request.getRequestDispatcher("/viewDepartment.jsp").forward(request, response);
		}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

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

@WebServlet("/ViewPatientServlet")
public class ViewPatientServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        PatientsDao dao = new PatientsDao();

        List<Patients> list = dao.viewAllPatients();

        request.setAttribute("patientList", list);

        request.getRequestDispatcher("/viewPatient.jsp")
               .forward(request, response);
    }
}


package com.employee.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.employee.dao.EmployeeDAO;
import com.employee.daoimpl.EmployeeDAOImpl;
import com.employee.model.Employee;

@WebServlet("/editEmployee")
public class EditEmployeeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int employeeId =
                Integer.parseInt(request.getParameter("id"));

        EmployeeDAO dao = new EmployeeDAOImpl();

        Employee employee = dao.getEmployeeById(employeeId);

        request.setAttribute("employee", employee);

        request.getRequestDispatcher("editEmployee.jsp")
               .forward(request, response);
    }
}

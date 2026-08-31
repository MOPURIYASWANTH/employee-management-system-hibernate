package com.employee.servlet;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.employee.dao.EmployeeDAO;
import com.employee.daoimpl.EmployeeDAOImpl;
import com.employee.model.Employee;

@WebServlet("/employees")
public class EmployeeListServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        EmployeeDAO dao = new EmployeeDAOImpl();

        List<Employee> employees = dao.getAllEmployees();

        request.setAttribute("employees", employees);

        request.getRequestDispatcher("employees.jsp")
               .forward(request, response);
    }
}

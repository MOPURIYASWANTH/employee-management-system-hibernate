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

@WebServlet("/updateEmployee")
public class UpdateEmployeeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int employeeId = Integer.parseInt(
                request.getParameter("employeeId"));

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String department = request.getParameter("department");

        double salary = Double.parseDouble(
                request.getParameter("salary"));

        Employee employee = new Employee(
                employeeId,
                name,
                email,
                department,
                salary
        );

        EmployeeDAO dao = new EmployeeDAOImpl();

        dao.updateEmployee(employee);

        response.sendRedirect("employees");
    }
}

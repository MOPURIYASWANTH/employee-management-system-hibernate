package com.employee.test;

import com.employee.dao.EmployeeDAO;
import com.employee.daoimpl.EmployeeDAOImpl;
import com.employee.model.Employee;

public class TestEmployee {

    public static void main(String[] args) {

        EmployeeDAO dao = new EmployeeDAOImpl();

        Employee employee = new Employee(
                0,
                "Yash",
                "yash@gmail.com",
                "IT",
                50000
        );

        dao.addEmployee(employee);

        System.out.println("Employee added successfully!");
    }
}

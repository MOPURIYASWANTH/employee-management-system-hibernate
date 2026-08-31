package com.employee.dao;

import java.util.List;
import com.employee.model.Employee;

public interface EmployeeDAO {

    void addEmployee(Employee employee);

    void updateEmployee(Employee employee);

    void deleteEmployee(int employeeId);

    Employee getEmployeeById(int employeeId);

    List<Employee> getAllEmployees();
}

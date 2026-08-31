<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.employee.model.Employee" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Employee List</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

.container {
    width: 90%;
    margin: 40px auto;
}

h2 {
    text-align: center;
}

.add-btn {
    display: inline-block;
    padding: 10px 15px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    margin-bottom: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    background-color: white;
}

th, td {
    padding: 12px;
    border: 1px solid #ddd;
    text-align: center;
}

th {
    background-color: #007bff;
    color: white;
}

</style>

</head>

<body>

<div class="container">

    <h2>Employee List</h2>

    <a href="addEmployee.jsp" class="add-btn">
        Add Employee
    </a>

    <table>

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Action</th>
        </tr>

        <%
            List<Employee> employees =
                (List<Employee>) request.getAttribute("employees");

            if (employees != null) {

                for (Employee employee : employees) {
        %>

        <tr>

            <td><%= employee.getEmployeeId() %></td>

            <td><%= employee.getName() %></td>

            <td><%= employee.getEmail() %></td>

            <td><%= employee.getDepartment() %></td>

            <td><%= employee.getSalary() %></td>

            <td>
                <a href="editEmployee?id=<%= employee.getEmployeeId() %>">
                    Edit
                </a>

                |

                <a href="deleteEmployee?id=<%= employee.getEmployeeId() %>">
                    Delete
                </a>
            </td>

        </tr>

        <%
                }

            }
        %>

    </table>

</div>

</body>
</html>
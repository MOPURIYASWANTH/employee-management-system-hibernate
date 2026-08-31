<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.employee.model.Employee" %>

<%
    Employee employee =
        (Employee) request.getAttribute("employee");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Edit Employee</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

.container {
    width: 400px;
    margin: 50px auto;
    padding: 25px;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 0 10px gray;
}

h2 {
    text-align: center;
}

label {
    display: block;
    margin-top: 15px;
}

input {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    box-sizing: border-box;
}

button {
    width: 100%;
    padding: 10px;
    margin-top: 20px;
    background-color: #28a745;
    color: white;
    border: none;
    cursor: pointer;
}

</style>

</head>

<body>

<div class="container">

    <h2>Edit Employee</h2>

    <form action="updateEmployee" method="post">

        <input type="hidden"
               name="employeeId"
               value="<%= employee.getEmployeeId() %>">

        <label>Name:</label>
        <input type="text"
               name="name"
               value="<%= employee.getName() %>"
               required>

        <label>Email:</label>
        <input type="email"
               name="email"
               value="<%= employee.getEmail() %>"
               required>

        <label>Department:</label>
        <input type="text"
               name="department"
               value="<%= employee.getDepartment() %>"
               required>

        <label>Salary:</label>
        <input type="number"
               name="salary"
               value="<%= employee.getSalary() %>"
               step="0.01"
               required>

        <button type="submit">
            Update Employee
        </button>

    </form>

</div>

</body>
</html>
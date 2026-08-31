<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Employee Management System</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: #f4f6f8;
}

.navbar {
    background: #007bff;
    color: white;
    padding: 20px 50px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.navbar h2 {
    margin: 0;
}

.navbar a {
    color: white;
    text-decoration: none;
    margin-left: 25px;
}

.hero {
    text-align: center;
    padding: 100px 20px;
}

.hero h1 {
    font-size: 42px;
    margin-bottom: 20px;
    color: #333;
}

.hero p {
    font-size: 18px;
    color: #666;
    margin-bottom: 35px;
}

.buttons a {
    display: inline-block;
    padding: 12px 25px;
    margin: 10px;
    text-decoration: none;
    border-radius: 5px;
    color: white;
}

.add-btn {
    background-color: #28a745;
}

.view-btn {
    background-color: #007bff;
}

.buttons a:hover {
    opacity: 0.85;
}

.footer {
    text-align: center;
    padding: 20px;
    margin-top: 80px;
    color: #777;
}

</style>

</head>

<body>

    <div class="navbar">

        <h2>Employee Management</h2>

        <div>
            <a href="index.jsp">Home</a>
            <a href="employees">Employees</a>
            <a href="addEmployee.jsp">Add Employee</a>
        </div>

    </div>


    <div class="hero">

        <h1>Employee Management System</h1>

        <p>
            Manage your employees easily using Java, Hibernate,
            Servlet, JSP and MySQL.
        </p>

        <div class="buttons">

            <a href="addEmployee.jsp" class="add-btn">
                Add Employee
            </a>

            <a href="employees" class="view-btn">
                View Employees
            </a>

        </div>

    </div>


    <div class="footer">

        <p>Employee Management System © 2026</p>

    </div>

</body>
</html>
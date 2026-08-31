<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Add Employee</title>

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
    background-color: #007bff;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

</style>

</head>

<body>

<div class="container">

    <h2>Add Employee</h2>

    <form action="addEmployee" method="post">

        <label>Name:</label>
        <input type="text" name="name" required>

        <label>Email:</label>
        <input type="email" name="email" required>

        <label>Department:</label>
        <input type="text" name="department" required>

        <label>Salary:</label>
        <input type="number" name="salary" step="0.01" required>

        <button type="submit">Add Employee</button>

    </form>

</div>

</body>
</html>
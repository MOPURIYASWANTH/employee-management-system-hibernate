# Employee Management System

A Java web-based Employee Management System developed using Hibernate, Servlets, JSP, and MySQL. The application allows users to manage employee records through basic CRUD operations.

## Features

- Add new employees
- View all employees
- Update employee details
- Delete employee records
- Store and retrieve employee data from MySQL
- Hibernate ORM for database operations
- MVC-based project structure

## Technologies Used

- Java
- Hibernate
- Servlets
- JSP
- JDBC
- MySQL
- HTML
- CSS
- Maven
- Apache Tomcat

## Project Architecture

The application follows a layered architecture:

JSP (View)  
↓  
Servlet (Controller)  
↓  
DAO Layer  
↓  
Hibernate  
↓  
MySQL Database

## CRUD Operations

- **Create** - Add a new employee
- **Read** - Display employee details
- **Update** - Modify existing employee information
- **Delete** - Remove an employee

## Project Structure

src/main/java

- `com.employee.model` - Employee entity/model classes
- `com.employee.dao` - DAO interfaces
- `com.employee.daoimpl` - DAO implementations
- `com.employee.util` - Hibernate utility/configuration
- `com.employee.servlet` - Servlet controllers

src/main/webapp

- `index.jsp`
- `addEmployee.jsp`
- `employees.jsp`
- `editEmployee.jsp`

## Database

Database: MySQL

The application uses Hibernate ORM to interact with the MySQL database.

## How to Run

1. Clone the repository.
2. Import the project as a Maven project in Eclipse or another Java IDE.
3. Create a MySQL database.
4. Configure database credentials in `hibernate.cfg.xml`.
5. Configure Apache Tomcat.
6. Build the project using Maven.
7. Deploy and run the application on Tomcat.

## Purpose

This project was developed to gain practical experience with Java web development, Hibernate ORM, Servlets, JSP, DAO architecture, Maven, MySQL, and CRUD operations.
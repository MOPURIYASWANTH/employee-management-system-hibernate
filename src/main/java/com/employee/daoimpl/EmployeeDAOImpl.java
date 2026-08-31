package com.employee.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;
import com.employee.util.HibernateUtil;

public class EmployeeDAOImpl implements EmployeeDAO {

    @Override
    public void addEmployee(Employee employee) {

        Transaction transaction = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            transaction = session.beginTransaction();

            session.persist(employee);

            transaction.commit();

        } catch (Exception e) {

            if (transaction != null) {
                transaction.rollback();
            }

            e.printStackTrace();
        }
    }

    @Override
    public void updateEmployee(Employee employee) {

        Transaction transaction = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            transaction = session.beginTransaction();

            session.merge(employee);

            transaction.commit();

        } catch (Exception e) {

            if (transaction != null) {
                transaction.rollback();
            }

            e.printStackTrace();
        }
    }

    @Override
    public void deleteEmployee(int employeeId) {

        Transaction transaction = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            transaction = session.beginTransaction();

            Employee employee = session.get(Employee.class, employeeId);

            if (employee != null) {
                session.remove(employee);
            }

            transaction.commit();

        } catch (Exception e) {

            if (transaction != null) {
                transaction.rollback();
            }

            e.printStackTrace();
        }
    }

    @Override
    public Employee getEmployeeById(int employeeId) {

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            return session.get(Employee.class, employeeId);

        } catch (Exception e) {

            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Employee> getAllEmployees() {

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            return session
                    .createQuery("FROM Employee", Employee.class)
                    .getResultList();

        } catch (Exception e) {

            e.printStackTrace();
            return null;
        }
    }
}
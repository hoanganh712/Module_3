package org.codegym.casestudy.service;

import org.codegym.casestudy.model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerService {
    private final String URL = "jdbc:mysql://localhost:3306/furama_resort";
    private final String USER = "root";
    private final String PASSWORD = "your_password";

    public List<Customer> getAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        String query = "SELECT * FROM customer";

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                Customer customer = new Customer(
                        resultSet.getString("customer_code"),
                        resultSet.getString("name"),
                        resultSet.getString("phone"),
                        resultSet.getString("email"),
                        resultSet.getString("address"),
                        resultSet.getString("birth_date")
                );
                customers.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    public void addCustomer(Customer customer) {
        String query = "INSERT INTO customer (customer_code, name, phone, email, address, birth_date) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, customer.getCustomerCode());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getPhone());
            preparedStatement.setString(4, customer.getEmail());
            preparedStatement.setString(5, customer.getAddress());
            preparedStatement.setString(6, customer.getBirthDate());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
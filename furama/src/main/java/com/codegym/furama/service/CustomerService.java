package com.codegym.furama.service;

import com.codegym.furama.model.Customer;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class CustomerService {
    private String dbUrl;
    private String dbUser ;
    private String dbPassword;

    public CustomerService(Properties properties) {
        this.dbUrl = properties.getProperty("db.url");
        this.dbUser  = properties.getProperty("db.user");
        this.dbPassword = properties.getProperty("db.password");
    }

    public List<Customer> getAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser , dbPassword);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM customer")) {

            while (resultSet.next()) {
                Customer customer = new Customer();
                customer.setId(resultSet.getInt("id"));
                customer.setCustomerName(resultSet.getString("customer_name"));
                customer.setCustomerBirthday(resultSet.getString("customer_birthday"));
                customer.setCustomerGender(resultSet.getString("customer_gender"));
                customer.setCustomerIdCard(resultSet.getString("customer_id_card"));
                customer.setCustomerPhone(resultSet.getString("customer_phone"));
                customer.setCustomerEmail(resultSet.getString("customer_email"));
                customer.setCustomerType(resultSet.getString("customer_type"));
                customer.setCustomerAddress(resultSet.getString("customer_address"));
                customers.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    public void addCustomer(Customer customer) {
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser , dbPassword);
             PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO customer (customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_type, customer_address) VALUES (?, ?, ?, ?, ?, ?, ?, ?)")) {

            preparedStatement.setString(1, customer.getCustomerName());
            preparedStatement.setDate(2, Date.valueOf(customer.getCustomerBirthday()));
            preparedStatement.setString(3, customer.getCustomerGender());
            preparedStatement.setString(4, customer.getCustomerIdCard());
            preparedStatement.setString(5, customer.getCustomerPhone());
            preparedStatement.setString(6, customer.getCustomerEmail());
            preparedStatement.setString(7, customer.getCustomerType());
            preparedStatement.setString(8, customer.getCustomerAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
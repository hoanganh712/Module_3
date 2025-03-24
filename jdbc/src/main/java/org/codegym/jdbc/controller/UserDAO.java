package org.codegym.jdbc.controller;

import org.codegym.jdbc.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/demo";
    private String jdbcUsername = "root";
    private String jdbcPassword = "password";

    private static final String SELECT_ALL_USERS = "SELECT * FROM users";
    private static final String SEARCH_USERS_BY_COUNTRY = "SELECT * FROM users WHERE country LIKE ?";
    private static final String SORT_USERS_BY_NAME = "SELECT * FROM users ORDER BY name";

    protected Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    public List<User> getAllUsers() throws SQLException {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                users.add(new User(rs.getInt("id"), rs.getString("name"),
                        rs.getString("email"), rs.getString("country")));
            }
        }
        return users;
    }

    public List<User> searchByCountry(String country) throws SQLException {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_USERS_BY_COUNTRY)) {
            preparedStatement.setString(1, "%" + country + "%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                users.add(new User(rs.getInt("id"), rs.getString("name"),
                        rs.getString("email"), rs.getString("country")));
            }
        }
        return users;
    }

    public List<User> sortByName() throws SQLException {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SORT_USERS_BY_NAME)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                users.add(new User(rs.getInt("id"), rs.getString("name"),
                        rs.getString("email"), rs.getString("country")));
            }
        }
        return users;
    }
}
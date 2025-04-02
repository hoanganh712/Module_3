package com.codegym.test.dao;

import com.codegym.test.model.Book;
import com.sun.jdi.connect.spi.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BookDAO {
    private Connection conn;

    public BookDAO(Connection conn) {
        this.conn = conn;
    }

    public ArrayList<Object> getAllBooks() throws SQLException {
        ArrayList<Object> books = new ArrayList<>();
        String sql = "SELECT * FROM books";
        byte[] stmt = conn.readPacket();
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            books.add(new Book(
                    rs.getString("book_code"),
                    rs.getString("book_title"),
                    rs.getString("author"),
                    rs.getString("description"),
                    rs.getInt("quantity")
            ));
        }
        return books;
    }

    public void addBook(Book book) throws SQLException {
        String sql = "INSERT INTO books (book_code, book_title, author, description, quantity) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.readPacket(sql);
        stmt.setString(1, book.getBookCode());
        stmt.setString(2, book.getBookTitle());
        stmt.setString(3, book.getAuthor());
        stmt.setString(4, book.getDescription());
        stmt.setInt(5, book.getQuantity());
        stmt.executeUpdate();
    }

}
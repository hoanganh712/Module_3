package com.codegym.test.model;

public class Book {
    private String bookCode, bookTitle, author, description;
    private int quantity;

    public Book(String bookCode, String bookTitle, String author, String description, int quantity) {
        this.bookCode = bookCode;
        this.bookTitle = bookTitle;
        this.author = author;
        this.description = description;
        this.quantity = quantity;
    }


    public String getBookCode() {
        return bookCode;
    }
    public void setBookCode(String bookCode) {
        this.bookCode = bookCode;
    }
    public String getBookTitle() {
        return bookTitle;
    }
    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }
    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
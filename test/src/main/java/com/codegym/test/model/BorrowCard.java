package com.codegym.test.model;

import java.util.Date;

public class BorrowCard {
    private String borrowCode, bookCode, studentId;
    private boolean status; // 1: Đang mượn, 0: Đã trả
    private Date borrowDate, returnDate;

    public BorrowCard(String borrowCode, String bookCode, String studentId, boolean status, Date borrowDate, Date returnDate) {
        this.borrowCode = borrowCode;
        this.bookCode = bookCode;
        this.studentId = studentId;
        this.status = status;
        this.borrowDate = borrowDate;
        this.returnDate = returnDate;
    }


    public String getBorrowCode() {
        return borrowCode;
    }
    public void setBorrowCode(String borrowCode) {
        this.borrowCode = borrowCode;
    }
    public String getBookCode() {
        return bookCode;
    }
    public void setBookCode(String bookCode) {
        this.bookCode = bookCode;
    }
    public String getStudentId() {
        return studentId;
    }
    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }
    public boolean isStatus() {
        return status;
    }
    public void setStatus(boolean status) {
        this.status = status;
    }
    public Date getBorrowDate() {
        return borrowDate;
    }
    public void setBorrowDate(Date borrowDate) {
        this.borrowDate = borrowDate;
    }
    public Date getReturnDate() {
        return returnDate;
    }
    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }
}
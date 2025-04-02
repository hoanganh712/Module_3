package com.codegym.test.model;

public class Student {
    private String studentId, fullName, className;

    public Student(String studentId, String fullName, String className) {
        this.studentId = studentId;
        this.fullName = fullName;
        this.className = className;
    }

    // Getters và Setters
    public String getStudentId() {
        return studentId;
    }
    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getClassName() {
        return className;
    }
    public void setClassName(String className) {
        this.className = className;
    }
}

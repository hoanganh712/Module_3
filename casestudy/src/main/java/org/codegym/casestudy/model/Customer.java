package org.codegym.casestudy.model;

public class Customer {
    private int id;
    private String customerCode;
    private String name;
    private String phone;
    private String email;
    private String address;
    private String birthDate;

    public Customer(String customerCode, String name, String phone, String email, String address, String birthDate) {
        this.customerCode = customerCode;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.birthDate = birthDate;
    }

    public String getCustomerCode() {
        return customerCode;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getBirthDate() {
        return birthDate;
    }
}

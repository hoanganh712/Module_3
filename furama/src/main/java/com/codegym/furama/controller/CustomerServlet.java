package com.codegym.furama.controller;

import com.codegym.furama.model.Customer;
import com.codegym.furama.service.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;

@WebServlet("/customers")
public class CustomerServlet extends HttpServlet {
    private CustomerService customerService;

    @Override
    public void init() throws ServletException {
        // Đọc thông tin từ file db.properties
        Properties properties = new Properties();
        try (InputStream input = getServletContext().getResourceAsStream("/WEB-INF/db.properties")) {
            properties.load(input);
            customerService = new CustomerService(properties);
        } catch (IOException e) {
            throw new ServletException("Cannot load database properties", e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = customerService.getAllCustomers();
        request.setAttribute("customers", customers);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerName = request.getParameter("customer_name");
        String customerBirthday = request.getParameter("customer_birthday");
        String customerGender = request.getParameter("customer_gender");
        String customerIdCard = request.getParameter("customer_id_card");
        String customerPhone = request.getParameter("customer_phone");
        String customerEmail = request.getParameter("customer_email");
        String customerType = request.getParameter("customer_type");
        String customerAddress = request.getParameter("customer_address");

        Customer customer = new Customer();
        customer.setCustomerName(customerName);
        customer.setCustomerBirthday(customerBirthday);
        customer.setCustomerGender(customerGender);
        customer.setCustomerIdCard(customerIdCard);
        customer.setCustomerPhone(customerPhone);
        customer.setCustomerEmail(customerEmail);
        customer.setCustomerType(customerType);
        customer.setCustomerAddress(customerAddress);

        customerService.addCustomer(customer);
        response.sendRedirect("customers");
    }
}
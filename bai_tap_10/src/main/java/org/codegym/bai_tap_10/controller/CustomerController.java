package org.codegym.bai_tap_10.controller;

import org.codegym.bai_tap_10.customer.Customer;
import org.codegym.bai_tap_10.service.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/customer-list")
public class CustomerController extends HttpServlet {
    private CustomerService service;

    @Override
    public void init() throws ServletException {
        service = new CustomerService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy danh sách khách hàng từ Service
        List<Customer> customers = service.getAllCustomers();

        // Gửi dữ liệu đến JSP
        request.setAttribute("customerList", customers);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}


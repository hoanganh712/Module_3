package org.codegym.casestudy.controller;

import org.codegym.casestudy.common.Validator;
import org.codegym.casestudy.model.Customer;
import org.codegym.casestudy.service.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action = request.getParameter("action");
    CustomerService customerService = null;
    if ("add".equals(action)) {
        String customerCode = request.getParameter("customerCode");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String birthDate = request.getParameter("birthDate");

        // Validate dữ liệu
        if (!Validator.isValidCustomerCode(customerCode)) {
            request.setAttribute("error", "Mã khách hàng không hợp lệ!");
            request.getRequestDispatcher("/WEB-INF/views/addCustomer.jsp").forward(request, response);
            return;
        }
        if (!Validator.isValidPhone(phone)) {
            request.setAttribute("error", "Số điện thoại không hợp lệ!");
            request.getRequestDispatcher("/WEB-INF/views/addCustomer.jsp").forward(request, response);
            return;
        }
        if (!Validator.isValidEmail(email)) {
            request.setAttribute("error", "Email không hợp lệ!");
            request.getRequestDispatcher("/WEB-INF/views/addCustomer.jsp").forward(request, response);
            return;
        }
        // Thêm khách hàng vào cơ sở dữ liệu
        Customer customer = new Customer(customerCode, name, phone, email, address, birthDate);
        customerService.addCustomer(customer);
        response.sendRedirect("customer?action=list");
    }
}



package org.codegym.casestudy.controller;
import org.codegym.casestudy.model.Customer;
import org.codegym.casestudy.service.CustomerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/customer")
public class CustomerController extends HttpServlet {
    private CustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("list".equals(action)) {
            List<Customer> customers = customerService.getAllCustomers();
            request.setAttribute("customers", customers);
            request.getRequestDispatcher("/WEB-INF/views/customerList.jsp").forward(request, response);
        } else if ("add".equals(action)) {
            request.getRequestDispatcher("/WEB-INF/views/addCustomer.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String customerCode = request.getParameter("customerCode");
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String birthDate = request.getParameter("birthDate");

            Customer customer = new Customer(customerCode, name, phone, email, address, birthDate);
            customerService.addCustomer(customer);
            response.sendRedirect("customer?action=list");
        }

    }
}


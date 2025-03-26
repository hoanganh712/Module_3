package org.codegym.casestudy.controller;

@WebServlet("/customer/add")
public class CustomerController extends HttpServlet {
    private CustomerDAO customerDAO = new CustomerDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String idCard = request.getParameter("id_card");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        int customerTypeId = Integer.parseInt(request.getParameter("customer_type_id"));
        String address = request.getParameter("address");

        Customer customer = new Customer(name, birthday, gender, idCard, phone, email, customerTypeId, address);
        customerDAO.insertCustomer(customer);

        response.sendRedirect("/customer");
    }
}

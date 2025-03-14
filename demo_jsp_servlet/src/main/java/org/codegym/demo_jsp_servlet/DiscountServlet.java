package org.codegym.demo_jsp_servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = {"/discount"})
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String description = request.getParameter("description");
        double listPrice = Double.parseDouble(request.getParameter("price"));
        double discountPercent = Double.parseDouble(request.getParameter("discount"));


        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice - discountAmount;


        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>Product Discount Calculator</h1>");
        out.println("<p>Product Description: " + description + "</p>");
        out.println("<p>List Price: " + listPrice + "</p>");
        out.println("<p>Discount Percent: " + discountPercent + "%</p>");
        out.println("<p>Discount Amount: " + discountAmount + "</p>");
        out.println("<p>Discount Price: " + discountPrice + "</p>");
        out.println("</body></html>");
    }
}

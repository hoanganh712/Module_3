package org.codegym.bai_tap_10.respository;

import org.codegym.bai_tap_10.customer.Customer;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository {
    private List<Customer> customers;

    public CustomerRepository() {
        customers = new ArrayList<>();
        customers.add(new Customer("Mai Trung Kiên", "2002-12-20", "Hà Nội", "image1.jpg"));
        customers.add(new Customer("Nguyễn Trung Kiên", "2002-08-21", "Bắc Giang", "image2.jpg"));
        customers.add(new Customer("Nguyễn Hoàng Anh", "2002-12-07", "Nam Định", "image3.jpg"));
        customers.add(new Customer("Nguyễn Xuân Minh Quân", "2002-09-03", "Hà Tây", "image4.jpg"));
        customers.add(new Customer("Nguyễn Trọng Đạt", "2002-08-19", "Hà Nội", "image5.jpg"));
    }
    public List<Customer> findAll() {
        return customers;
    }
}

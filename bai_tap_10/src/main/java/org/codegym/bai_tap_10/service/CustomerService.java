package org.codegym.bai_tap_10.service;

import org.codegym.bai_tap_10.customer.Customer;
import org.codegym.bai_tap_10.respository.CustomerRepository;
import java.util.List;

public class CustomerService {
    private CustomerRepository repository;

    public CustomerService() {
        repository = new CustomerRepository();
    }

    // Lấy danh sách khách hàng từ Repository
    public List<Customer> getAllCustomers() {
        return repository.findAll();
    }
}

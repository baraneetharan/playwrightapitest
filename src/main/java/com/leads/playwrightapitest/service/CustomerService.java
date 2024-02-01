package com.leads.playwrightapitest.service;

import java.util.List;

import com.leads.playwrightapitest.entity.Customer;


public interface CustomerService {
 
    List<Customer> getAllCustomers();
 
    Customer createCustomer(Customer customer);
 
    Customer getCustomerById(int id);
 
    Customer updateCustomer(int id, Customer updatedCustomer);
 
    void deleteCustomer(int id);
}
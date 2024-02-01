package com.leads.playwrightapitest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.leads.playwrightapitest.entity.Customer;

public interface CustomerRepository extends  JpaRepository<Customer,Integer>{
    
}

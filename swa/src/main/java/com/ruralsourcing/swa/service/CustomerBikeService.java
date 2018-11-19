package com.ruralsourcing.swa.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ruralsourcing.swa.dao.Bike;
import com.ruralsourcing.swa.dao.Customer;
import com.ruralsourcing.swa.dao.CustomerBikes;

@Service
public interface CustomerBikeService {

      List<Customer> getCustomers();
      List<Bike> getBikes();
      List<CustomerBikes> getCustomerBikes();
}

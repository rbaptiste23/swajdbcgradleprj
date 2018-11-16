package com.ruralsourcing.swa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruralsourcing.swa.dao.Bike;
import com.ruralsourcing.swa.dao.Customer;
import com.ruralsourcing.swa.repositories.BikeRepository;
import com.ruralsourcing.swa.repositories.CustomerRepository;

@Service("customerBikeService")
public class CustomerBikeServiceImpl implements CustomerBikeService {

	@Autowired
	CustomerRepository customerRepository;

	@Autowired
	BikeRepository bikeRepository;

	public List<Customer> getCustomers() {
		return customerRepository.getAllCustomers();
	}

	public List<Bike> getBikes() {
		return bikeRepository.getAllBikes();
	}

}

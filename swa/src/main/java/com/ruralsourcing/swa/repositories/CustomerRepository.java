package com.ruralsourcing.swa.repositories;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ruralsourcing.swa.dao.Customer;
import com.ruralsourcing.swa.dao.CustomerBikes;

@Repository
public class CustomerRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	

	public List<Customer> getAllCustomers() {
		String sql = "SELECT name, ssi, email, phone, customer_id FROM Customer;";
		List<Customer> customerList = new ArrayList<>();
		customerList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Customer>(Customer.class));
		return customerList;
	}
	
	
	public List<CustomerBikes> getAllCustomerBikes() {
		String sql = "SELECT a.name, a.email, b.bike_color, b.make, b.model FROM CUSTOMER a join Bike b on a.customer_id = b.customer_id;";
		List<CustomerBikes> customerBikeList = new ArrayList<>();
		customerBikeList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<CustomerBikes>(CustomerBikes.class));
		return customerBikeList;
	}

}

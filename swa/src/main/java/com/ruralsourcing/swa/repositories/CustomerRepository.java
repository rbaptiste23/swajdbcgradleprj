package com.ruralsourcing.swa.repositories;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ruralsourcing.swa.dao.Customer;

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

}

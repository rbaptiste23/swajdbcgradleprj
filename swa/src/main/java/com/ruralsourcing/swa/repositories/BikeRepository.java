package com.ruralsourcing.swa.repositories;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ruralsourcing.swa.dao.Bike;

@Repository
public class BikeRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<Bike> getAllBikes() {
		List<Bike> bikeList = new ArrayList<>();
		String sql = "SELECT id, bike_color, make, model, customer_id, purchase_price, serial_number FROM Bike;";
		bikeList  = jdbcTemplate.query(sql,new BeanPropertyRowMapper<Bike>(Bike.class));
		return bikeList;
	}
}

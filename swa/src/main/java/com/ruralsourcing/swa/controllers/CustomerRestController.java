package com.ruralsourcing.swa.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ruralsourcing.swa.dao.Customer;
import com.ruralsourcing.swa.service.CustomerBikeService;

@RestController
@RequestMapping("/CustomerRest")
public class CustomerRestController {

	@Autowired
    private CustomerBikeService  customerBikeService;
	

	@GetMapping
	public List<Customer> viewData(ModelAndView mv) {
		mv.setViewName("customerrest");
		return customerBikeService.getCustomers();		
	}
}

package com.ruralsourcing.swa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ruralsourcing.swa.service.CustomerBikeService;

@Controller
@RequestMapping("/Customer")
public class CustomerController {

	@Autowired
    private CustomerBikeService  customerBikeService;
	

	@PostMapping
	public ModelAndView viewData(ModelAndView mv) {
		mv.setViewName("customers");
		mv.addObject("customerlist", customerBikeService.getCustomers());		
		return mv;		
	}		
 	
}

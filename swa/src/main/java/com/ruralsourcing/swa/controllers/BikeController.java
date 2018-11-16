package com.ruralsourcing.swa.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ruralsourcing.swa.service.CustomerBikeService;

@Controller
@RequestMapping("/Bike")
public class BikeController {

	@Autowired
	private CustomerBikeService customerBikeService;

	@PostMapping
	public ModelAndView viewData(ModelAndView mv) throws SQLException, ClassNotFoundException {
		mv.setViewName("bike");
		mv.addObject("bikelist", customerBikeService.getBikes());
		return mv;

	}

}

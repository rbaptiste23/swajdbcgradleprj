package com.ruralsourcing.swa.controllers;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Welcome")
public class WelcomeController {

	@GetMapping
	public String viewAll() throws ClassNotFoundException, SQLException {
		return "welcome";
	}

}

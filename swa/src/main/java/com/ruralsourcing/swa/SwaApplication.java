package com.ruralsourcing.swa;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.ruralsourcing.swa")
public class SwaApplication {

	public static void main(String[] args) {
		SpringApplication.run(SwaApplication.class, args);
	}
}

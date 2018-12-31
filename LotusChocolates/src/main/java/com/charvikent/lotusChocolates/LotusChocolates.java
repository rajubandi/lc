package com.charvikent.lotusChocolates;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.SecurityAutoConfiguration;

@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class LotusChocolates {

	public static void main(String[] args) {
		SpringApplication.run(LotusChocolates.class, args);
	}
}

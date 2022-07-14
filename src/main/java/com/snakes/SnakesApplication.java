package com.snakes;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.snakes.controllers.SnakeController;

@SpringBootApplication
public class SnakesApplication {

	public static void main(String[] args) {
		new File(SnakeController.uploadDirectory).mkdir();
		SpringApplication.run(SnakesApplication.class, args);
	}

}

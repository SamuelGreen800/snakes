package com.snakes.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snakes.models.Snake;
import com.snakes.repositories.SnakeRepository;

@Service

public class SnakeService {
	
	@Autowired
	private SnakeRepository snakeRepo;
	
	public SnakeService(SnakeRepository snakeRepo) {
		this.snakeRepo = snakeRepo;
	}
	
	public List<Snake> allSnakes(){
		return snakeRepo.findAll();
	}
	
	public Snake updateSnake(Snake snake) {
		return snakeRepo.save(snake);
	}
	
	public Snake addSnake(Snake snake) {
		return snakeRepo.save(snake);
	}
	
	public void deleteSnake(Snake snake) {
		snakeRepo.delete(snake);
	}
	
	
	
	public Snake findById(Long id) {
		Optional<Snake> optionalSnake = snakeRepo.findById(id);
		if(optionalSnake.isPresent()) {
			return optionalSnake.get();
		}
		else {
			return null;
		}
	}
}

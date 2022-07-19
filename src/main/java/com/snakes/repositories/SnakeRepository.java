package com.snakes.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.snakes.models.Snake;

@Repository

public interface SnakeRepository extends CrudRepository<Snake, Long> {
	List<Snake> findAll();

	Optional<Snake> findById(Long id);

}

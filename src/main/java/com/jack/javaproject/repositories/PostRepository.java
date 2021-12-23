package com.jack.javaproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.jack.javaproject.models.Post;

public interface PostRepository extends CrudRepository<Post, Long> {

	List<Post> findAll();
}

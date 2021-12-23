package com.jack.javaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jack.javaproject.models.Post;
import com.jack.javaproject.repositories.PostRepository;

@Service
public class PostService {

	@Autowired
	private PostRepository postRepo;
	
	//READ ALL POSTS
	public List<Post> allPosts(){
		return postRepo.findAll();
	}
	
	//READ ONE POST
	public Post findPost(Long id) {
		Optional<Post> optionalPost = postRepo.findById(id);
		if(optionalPost.isPresent()) {
			return optionalPost.get();
		}
		else {
			return null;
		}
	}
	
	//CREATE POST
	public Post createPost(Post post) {
		return postRepo.save(post);
	}
	
	//UPDATE POST
	public Post updatePost(Post post) {
		return postRepo.save(post);
	}
	
	//DELETE POST
	public void deletePost(Long id) {
		postRepo.deleteById(id);
	}
}

package com.jack.javaproject.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.jack.javaproject.models.LoginUser;
import com.jack.javaproject.models.User;
import com.jack.javaproject.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepo;
	
	//REGISTER
	public User register(User newUser, BindingResult result) {
		if(userRepo.findByEmail(newUser.getEmail()).isPresent()) {
			result.rejectValue("email", "Unique", "This email is already in use!");
		}
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "Matches", "Password and confirm password do not match!");
		}
		if(result.hasErrors()) {
			return null;
		}
		else {
			String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
			newUser.setPassword(hashed);
			return userRepo.save(newUser);
		}
	}
	
	//LOGIN
	public User login(LoginUser newLogin, BindingResult result) {
		if(result.hasErrors()) {
			return null;
		}
		Optional<User> potentialUser = userRepo.findByEmail(newLogin.getEmail());
		if(!potentialUser.isPresent()) {
			result.rejectValue("email", "Unique", "Login error");
		}
		User user = potentialUser.get();
		if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
			result.rejectValue("password", "Matches", "Login error");
		}
		if(result.hasErrors()) {
			return null;
		} else {
			return user;
		}
	}
	
	//READ ONE USER
	public User findOne(Long id) {
		Optional<User> optionalUser = userRepo.findById(id);
		if(optionalUser.isPresent()) {
			return optionalUser.get();
		}
		else {
			return null;
		}
	}
	
	//READ ALL USERS
	public List<User> allUsers(){
		return userRepo.findAll();
	}
	
	//UPDATE COVER PHOTO
	public User updateCoverPhoto(Long userID, String coverPhoto) {
		User user = findOne(userID);
		user.setCoverPhoto(coverPhoto);
		return userRepo.save(user);
	}
	//UPDATE PROFILE PIC
	public User updateProfilePic(Long userID, String profilePic) {
		User user = findOne(userID);
		user.setProfilePic(profilePic);
		return userRepo.save(user);
	}
}

package com.jack.javaproject.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jack.javaproject.models.LoginUser;
import com.jack.javaproject.models.Post;
import com.jack.javaproject.models.User;
import com.jack.javaproject.services.PostService;
import com.jack.javaproject.services.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private PostService postService;
	
	//LOGIN/REGISTER ROUTES
	@GetMapping("/")
	public String signIn(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "loginreg.jsp";
	}
	
	//REGISTER ROUTE
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
		userService.register(newUser, result);
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "loginreg.jsp";
		}
		session.setAttribute("user_id", newUser.getId());
		return "redirect:/posts";
	}
	
	//LOGIN ROUTE
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		User user = userService.login(newLogin, result);
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "loginreg.jsp";
		}
		session.setAttribute("user_id", user.getId());
		return "redirect:/posts";
	}
	
	//LOGOUT
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	//DASHBOARD DISPLAY ROUTE
	@GetMapping("/posts")
	public String index(@ModelAttribute("post") Post post, Model model, HttpSession session) {
		//Retrieve user in session
		Long userID = (Long) session.getAttribute("user_id");
		//Get all posts for feed to display
		List<Post> posts = postService.allPosts();
		model.addAttribute("posts", posts);
		//route guard
		if(userID == null) {
			return "redirect:/";
		} else {
			model.addAttribute("user", userService.findOne(userID));
			return "index.jsp";
		}
	}
	
	//ROUTE TO RENDER NEW POST PAGE
	@GetMapping("/posts/new")
	public String newPost(@ModelAttribute("post") Post post, HttpSession session) {
		//Route guard
		Long userID = (Long) session.getAttribute("user_id");
		if(userID == null) {
			return "redirect:/";
		}
		return "newPost.jsp";
	}
	
	//ROUTE TO POST/CREATE A NEW POST
	@PostMapping("/posts/new")
	public String createPost(@Valid @ModelAttribute("post") Post post, BindingResult result) {
		if(result.hasErrors()) {
			return "newPost.jsp";
		} else {
			postService.createPost(post);
			return "redirect:/posts";
		}
	}
	
	//ROUTE TO LIKE A POST
	@PostMapping("/posts/{postID}/like")
	public String likePost(@PathVariable("postID") Long postID, HttpSession session) {
		Long userID = (Long) session.getAttribute("user_id");
		User userToLike = userService.findOne(userID);
		Post postToBeLiked = postService.findPost(postID);
		if(userID == null) {
			return "redirect:/";
		} else {
			postToBeLiked.getUsers().add(userToLike);
			postService.updatePost(postToBeLiked);
			return "redirect:/posts";
		}
	}
	
	//ROUTE TO UNLIKE A POST
	@PostMapping("/posts/{postID}/unlike")
	public String unlikePost(@PathVariable("postID") Long postID, HttpSession session) {
		Long userID = (Long) session.getAttribute("user_id");
		User userToUnlike = userService.findOne(userID);
		Post postToBeUnliked = postService.findPost(postID);
		if(userID == null) {
			return "redirect:/";
		} else {
			postToBeUnliked.getUsers().remove(userToUnlike);
			postService.updatePost(postToBeUnliked);
			return "redirect:/posts";
		}
	}
	
	//ROUTE TO BOOKMARK A POST
	@PostMapping("/posts/{postID}/bookmark")
	public String bookmark(@PathVariable("postID") Long postID, HttpSession session) {
		Long userID = (Long) session.getAttribute("user_id");
		User userToBookmark = userService.findOne(userID);
		Post postToBeBookmarked = postService.findPost(postID);
		postToBeBookmarked.getUsersBookmarked().add(userToBookmark);
		postService.updatePost(postToBeBookmarked);
		return "redirect:/posts";
	}
	
	//ROUTE TO UN-BOOKMARK A POST
	@PostMapping("/posts/{postID}/unbookmark")
	public String unBookmark(@PathVariable("postID") Long postID, HttpSession session) {
		Long userID = (Long) session.getAttribute("user_id");
		User userToUnBookmark = userService.findOne(userID);
		Post postToBeUnBookmarked = postService.findPost(postID);
		postToBeUnBookmarked.getUsersBookmarked().remove(userToUnBookmark);
		postService.updatePost(postToBeUnBookmarked);
		return "redirect:/posts";
	}
	
	//ROUTE TO SHOW BOOKMARKED POSTS
	@GetMapping("/posts/{userID}/bookmarks")
	public String showBookmarks(HttpSession session, Model model) {
		Long userID = (Long) session.getAttribute("user_id");
		if(userID == null) {
			return "redirect:/";
		} else {
			model.addAttribute("user", userService.findOne(userID));
			model.addAttribute("bookmarks", userService.findOne(userID).getPostsBookmarked());
			return "showBookmarks.jsp";
		}
	}
	
	//ROUTE TO SHOW AN INDIVIDUAL POST PAGE
	@GetMapping("/posts/{postID}")
	public String showPost(@PathVariable("postID") Long postID, HttpSession session, Model model) {
		Long userID = (Long) session.getAttribute("user_id");
		if(userID == null) {
			return "redirect:/";
		} else {
			model.addAttribute("post", postService.findPost(postID));
			return "showPost.jsp";
		}
	}
	
	//ROUTE TO SHOW A USER'S PAGE
	@GetMapping("/users/{userID}")
	public String showUser(@PathVariable("userID") Long userID, HttpSession session, Model model) {
		Long loggedInID = (Long) session.getAttribute("user_id");
		if(loggedInID == null) {
			return "redirect:/";
		} else {
			model.addAttribute("user", userService.findOne(userID));
			return "showUser.jsp";
		}
	}
	
	//ROUTE TO DISPLAY EDIT PAGE
	@GetMapping("/posts/{postID}/edit")
	public String editPost(@PathVariable("postID") Long postID, HttpSession session, Model model) {
		Long userID = (Long) session.getAttribute("user_id");
		if(userID == null) {
			return "redirect:/";	
		}else {
			model.addAttribute("post", postService.findPost(postID));
			return "editPost.jsp";
		}
	}
	
	//UPDATE A POST
	@PutMapping("/posts/{id}/edit")
	public String updatePost(@Valid @ModelAttribute("post") Post post, BindingResult result) {
		if(result.hasErrors()) {
			return "editPost.jsp";
			}
		else {
			postService.updatePost(post);
			return "redirect:/posts";
		}
	}
	
	//DELETE A POST
	@DeleteMapping("/posts/{postID}/delete")
	public String deletePost(@PathVariable("postID") Long postID) {
		postService.deletePost(postID);
		return "redirect:/posts";
	}
	
	//SHOW FORM FOR UPLOADING COVER PHOTO
	@GetMapping("/coverphoto/{userID}/upload")
	public String editCoverPhoto(@PathVariable("userID") Long userID, HttpSession session, Model model) {
		Long currentUserID = (Long) session.getAttribute("user_id");
		User currentUser = userService.findOne(userID);
		if(currentUserID == null) {
			return "redirect:/";
		} else {
			model.addAttribute("user", currentUser);
			return "editCoverPhoto.jsp";
		}
	}
	
	//ROUTE FOR UPDATING COVER PHOTO
	@PutMapping("/coverphoto/{id}/upload")
	public String updateCoverPhoto(@RequestParam("coverPhoto") String coverPhoto, @PathVariable("id") Long id) {
		userService.updateCoverPhoto(id, coverPhoto);
		return "redirect:/users/" + id;
	}
	
	//SHOW FORM FOR UPLOADING PROFILE PIC
	@GetMapping("/profilepic/{userID}/upload")
	public String editProfilePic(@PathVariable("userID") Long userID, HttpSession session, Model model) {
		Long currentUserID = (Long) session.getAttribute("user_id");
		User currentUser = userService.findOne(userID);
		if(currentUserID == null) {
			return "redirect:/";
		} else {
			model.addAttribute("user", currentUser);
			return "editProfilePic.jsp";
		}
	}
	
	//ROUTE FOR UPDATING COVER PHOTO
	@PutMapping("/profilepic/{id}/upload")
	public String updateProfilePic(@RequestParam("profilePic") String profilePic, @PathVariable("id") Long id) {
		userService.updateProfilePic(id, profilePic);
		return "redirect:/users/" + id;
	}
	
	
}

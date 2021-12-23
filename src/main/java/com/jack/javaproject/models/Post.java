package com.jack.javaproject.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table(name = "posts")
public class Post {

	//MEMBER VARIABLES
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message = "Cannot create a blank post")
	@Size(min=1, max=128, message="Post must be between 1 and 128 characters")
	private String content;
	
	@Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    //-----------M:1-----------------
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "creator_id")
    private User creator;
    
    //------------M:M------------------
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
    		name = "users_posts",
    		joinColumns = @JoinColumn(name = "post_id"),
    		inverseJoinColumns = @JoinColumn(name = "user_id")
    		)
    private List<User> users;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
    		name = "users_bookmarks",
    		joinColumns = @JoinColumn(name = "post_id"),
    		inverseJoinColumns = @JoinColumn(name = "user_id")
    		)
    private List<User> usersBookmarked;
    
    //GETTERS AND SETTERS
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public User getCreator() {
		return creator;
	}
	public void setCreator(User creator) {
		this.creator = creator;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public List<User> getUsersBookmarked() {
		return usersBookmarked;
	}
	public void setUsersBookmarked(List<User> usersBookmarked) {
		this.usersBookmarked = usersBookmarked;
	}
    
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post <c:out value="${post.id}"></c:out></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<h1><c:out value="${post.content}"></c:out></h1>
	<p>Created by:  <c:out value="${post.creator.name }"></c:out></p>
	<a href="/posts">Home</a>
	<br>
	<h3>Users who liked this post:</h3>
	<table class="table">
		<tr>
			<th>Name</th>
		</tr>
		<c:forEach items="${post.users }" var="user">
			<tr>
				<td><c:out value="${user.name}"></c:out>
			</tr>
		</c:forEach>
	</table>
	<br>
	<c:if test="${post.creator.id == user_id }">
		<a href="/posts/${post.id}/edit" class="btn btn-secondary">Edit</a>
	</c:if>
</body>
</html>
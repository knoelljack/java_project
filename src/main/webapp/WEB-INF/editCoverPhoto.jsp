<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Cover Photo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="d-flex" style="background-color: darkgrey; justify-content:center; align-items: center;">
	<div class="d-flex" style="margin-top:100px; padding:15px; border: 1px solid black; border-radius: 25px;background-color:grey; justify-content:center; align-items:center; flex-direction: column; width: 45vw">
		<h1>Upload/Edit Cover Photo</h1>
		<a href="/users/${user_id}">Back</a>
		<br>
		<form action="/coverphoto/${user.id}/upload" method="post">
			<input type="hidden" name="_method" value="put">
			<label for="coverPhoto">Past Img URL Here: </label>
			<input name="coverPhoto"/>
			<button class="btn btn-primary">Upload</button>
		</form>
	</div>	
</body>
</html>
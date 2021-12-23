<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login/Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color:grey;">
<!-- <div class="container-sm" style="padding:50px; border:1px solid black; margin-top:50px; border-radius:25px; background-color:grey"> -->
	<div class="row" style="justify-content:center; margin-top:10vh; gap: 25px">
		<div class="col-3" style="background-color:lightgrey; border-radius:10px; padding:25px; border: 1px solid darkgrey; box-shadow: 2px 2px 4px;">
			<h3>Register</h3>
			<form:form action="/register" method="post" modelAttribute="newUser">
				<div class="form-group">
					<form:label class="form-label" path="name">Name: </form:label>
					<form:input class="form-control" path="name"/>
					<form:errors class="form-text" path="name"></form:errors>
				</div>
				<div class="form-group">
					<form:label class="form-label" path="email">Email: </form:label>
					<form:input  class="form-control" type="email" path="email"/>
					<form:errors class="form-text" path="email"></form:errors>
				</div>
					<form:label class="form-label" path="password">Password: </form:label>
					<form:input class="form-control" type="password" path="password"/>
					<form:errors class="form-text" path="password"></form:errors>
				<div class="form-group">
					<form:label class="form-label" path="confirm">Confirm Password: </form:label>
					<form:input class="form-control" type="password" path="confirm"/>
					<form:errors class="form-text" path="confirm"></form:errors>
				</div>
				<br>
				<form:button class="btn btn-primary">Submit</form:button>
			</form:form>
		</div>
		<br>
		<div class="col-3" style="background-color:lightgrey; border-radius:10px; padding:25px; border: 1px solid darkgrey; box-shadow: 2px 2px 4px">
			<h3>Login</h3>
			<form:form action="/login" method="post" modelAttribute="newLogin">
				<div class="form-group">
					<form:label class="form-label" path="email">Email: </form:label>
					<form:input  class="form-control" type="email" path="email"/>
					<form:errors class="form-text" path="email"></form:errors>
				</div>
				<div class="form-group">
					<form:label class="form-label" path="password">Password: </form:label>
					<form:input class="form-control" type="password" path="password"/>
					<form:errors class="form-text" path="password"></form:errors>
				</div>
				<br>
				<form:button class="btn btn-primary">Submit</form:button>
			</form:form>
		</div>
	</div>
<!-- </div> -->
</body>
</html>
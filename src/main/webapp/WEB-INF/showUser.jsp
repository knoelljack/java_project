<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><c:out value="${user.name}"></c:out></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body style="background-color: black">
	<div style="display: flex;">
		<nav class="nav flex-column"
			style="flex: 1; padding-top: 10px; align-items: center; border: 1px solid grey; height: 100vh;">
			<p style="color: white">
				<c:out value="${user.name }"></c:out>
			</p>
			<a class="nav-link active" aria-current="page" href="/posts"><svg
					xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20"
					height="20" viewBox="0 0 172 172" style="fill: #000000;">
					<g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1"
						stroke-linecap="butt" stroke-linejoin="miter"
						stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0"
						font-family="none" font-weight="none" font-size="none"
						text-anchor="none" style="mix-blend-mode: normal">
					<path d="M0,172v-172h172v172z" fill="none"></path>
					<g fill="#ffffff">
					<path
						d="M85.87235,3.62813c-0.72195,0.0249 -1.41775,0.27642 -1.98875,0.71891l-79.12,61.7386c-1.49911,1.16886 -1.76683,3.33167 -0.59797,4.83078c1.16886,1.49911 3.33167,1.76683 4.83078,0.59797l4.76359,-3.71547v90.4411c0.00019,1.89978 1.54022,3.43981 3.44,3.44h47.58219c0.37149,0.0614 0.75054,0.0614 1.12203,0h40.15797c0.37149,0.0614 0.75054,0.0614 1.12203,0h47.61578c1.89978,-0.00019 3.43981,-1.54022 3.44,-3.44v-90.4411l4.7636,3.71547c0.96974,0.75623 2.26928,0.93763 3.40904,0.47586c1.13976,-0.46177 1.94657,-1.49654 2.11649,-2.71449c0.16992,-1.21795 -0.32287,-2.43403 -1.29273,-3.19012l-26.1964,-20.43844v-25.00719h-20.64v8.89562l-32.2836,-25.18859c-0.64007,-0.49632 -1.43474,-0.7509 -2.24406,-0.71891zM86,11.42859l65.36,51.00203v92.36937h-41.28v-65.36h-48.16v65.36h-41.28v-92.36937zM127.28,27.52h6.88v12.7589l-6.88,-5.375zM68.8,96.32h34.4v58.48h-34.4z"></path></g></g></svg>
				Home</a>  <a class="nav-link" href="/posts/${user_id}/bookmarks"><svg
					xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20"
					height="20" viewBox="0 0 172 172" style="fill: #000000;">
					<g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1"
						stroke-linecap="butt" stroke-linejoin="miter"
						stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0"
						font-family="none" font-weight="none" font-size="none"
						text-anchor="none" style="mix-blend-mode: normal">
					<path d="M0,172v-172h172v172z" fill="none"></path>
					<g fill="#ffffff">
					<path
						d="M17.2,17.2c-9.46,0 -17.2,7.74 -17.2,17.2v99.76c0,9.46 7.74,17.2 17.2,17.2h55.04c5.72438,0 10.32,4.64938 10.32,10.32c0,1.06156 0.49719,2.06938 1.33031,2.71438c0.84656,0.65844 1.935,0.88687 2.96969,0.61812c0.90031,-0.22844 1.67969,-0.80625 2.15,-1.6125c0.29563,-0.52406 0.44344,-1.11531 0.43,-1.72c0,-5.67062 4.59563,-10.32 10.32,-10.32h55.04c9.46,0 17.2,-7.74 17.2,-17.2v-99.76c0,-9.46 -7.74,-17.2 -17.2,-17.2h-55.04c-5.61687,0 -10.61562,2.795 -13.76,6.9875c-3.14437,-4.1925 -8.14312,-6.9875 -13.76,-6.9875zM17.2,24.08h55.04c5.73781,0 10.32,4.58219 10.32,10.32v113.95c-2.91594,-2.27094 -6.36937,-3.87 -10.32,-3.87h-55.04c-5.73781,0 -10.32,-4.58219 -10.32,-10.32v-99.76c0,-5.73781 4.58219,-10.32 10.32,-10.32zM99.76,24.08h55.04c5.73781,0 10.32,4.58219 10.32,10.32v99.76c0,5.73781 -4.58219,10.32 -10.32,10.32h-55.04c-3.95062,0 -7.40406,1.59906 -10.32,3.87v-113.95c0,-5.73781 4.58219,-10.32 10.32,-10.32z"></path></g></g></svg>
				Bookmarks</a> <a class="nav-link" href="/logout"><svg
					xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20"
					height="20" viewBox="0 0 172 172" style="fill: #000000;">
					<g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1"
						stroke-linecap="butt" stroke-linejoin="miter"
						stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0"
						font-family="none" font-weight="none" font-size="none"
						text-anchor="none" style="mix-blend-mode: normal">
					<path d="M0,172v-172h172v172z" fill="none"></path>
					<g fill="#ffffff">
					<path
						d="M10.32,0c-5.65719,0 -10.32,4.66281 -10.32,10.32v151.36c0,5.65719 4.66281,10.32 10.32,10.32h116.96c5.65719,0 10.32,-4.66281 10.32,-10.32v-27.52l-6.88,6.88v20.64c0,1.935 -1.505,3.44 -3.44,3.44h-116.96c-1.935,0 -3.44,-1.505 -3.44,-3.44v-151.36c0,-1.94844 1.49156,-3.44 3.44,-3.44h116.96c1.935,0 3.44,1.505 3.44,3.44v20.64l6.88,6.88v-27.52c0,-5.65719 -4.66281,-10.32 -10.32,-10.32zM130.1825,45.0425c-1.29,0.22844 -2.32469,1.16906 -2.6875,2.41875c-0.36281,1.26313 0.01344,2.60688 0.9675,3.49375l31.605,31.605h-101.5875c-0.1075,0 -0.215,0 -0.3225,0c-1.89469,0.09406 -3.37281,1.70656 -3.27875,3.60125c0.09406,1.89469 1.70656,3.37281 3.60125,3.27875h101.5875l-31.605,31.605c-1.02125,0.83313 -1.49156,2.16344 -1.19594,3.45344c0.29562,1.27656 1.30344,2.28438 2.58,2.58c1.29,0.29563 2.62031,-0.17469 3.45344,-1.19594l37.5175,-37.41l2.365,-2.4725l-2.365,-2.4725l-37.5175,-37.41c-0.71219,-0.76594 -1.74687,-1.15562 -2.795,-1.075c-0.1075,0 -0.215,0 -0.3225,0z"></path></g></g></svg>
				Logout</a> <br> <a class="btn btn-primary" style="width: 50%"
				href="/posts/new">Create a Post</a>
		</nav>
		<div class="main"
			style="flex: 3; align-items: center; flex-direction: column; border: 1px solid grey">
			<div class="d-flex"
				style="justify-content: center; align-items: center; border: 1px solid grey; width: 100%; height: 25vh;">
				<c:if test="${user.coverPhoto == null}">
					<c:if test="${user.id == user_id}">
						<a href="/coverphoto/${user.id }/upload">Click to Upload Cover
						Photo</a>
					</c:if>
					<c:if test="${user.id != user_id}">
						<p style="color: lightgrey">No cover photo has been selected for this user.</p>
					</c:if>
				</c:if>
				<c:if test="${user.coverPhoto != null}">
					<c:if test="${user.id == user_id }">
						<a href="/coverphoto/${user.id }/upload">
							<img style="height:100%; width:100%" alt="Cover Photo" src="${user.coverPhoto}">
						</a>
					</c:if>
					<c:if test="${user.id != user_id}">
						<img style="height:100%; width:100%" alt="Cover Photo" src="${user.coverPhoto}">
					</c:if>
				</c:if>
			</div>
			<div class="profilepic"
				style="border: 2px solid grey; width: 150px; height: 150px; border-radius: 50%; margin-top: -75px; margin-left: 50px; z-index: 1">
				<c:if test="${user.profilePic == null}">
					<c:if test="${user.id == user_id}">
						<a href="/profilepic/${user.id}/upload">
							<img style="width: 100%; border-radius:50%" alt="profilepic" src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png">
						</a>
					</c:if>
					<c:if test="${user.id != user_id }">
						<img style="width: 100%; border-radius:50%" alt="profilepic" src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png">
					</c:if>
				</c:if>
				<c:if test="${user.profilePic != null}">
					<c:if test="${user.id == user_id }">
						<a href="/profilepic/${user.id}/upload">
							<img style="width: 100%; border-radius:50%" alt="profilepic" src="${user.profilePic}">
						</a>
					</c:if>
					<c:if test="${user.id != user_id}">
						<img style="width: 100%; border-radius:50%" alt="profilepic" src="${user.profilePic}">
					</c:if>
				</c:if>
			</div>
			<div class="contents"
				style="align-items: center; padding-left: 50px; padding-top: 10px; padding-right: 50px; color: white">
				<p style="font-size: 24pt">
					<c:out value="${user.name }"></c:out>
				</p>
				<div style="display: flex; justify-content: space-between;">
					<p>
						<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20"
							height="20" viewBox="0 0 172 172" style="fill: #000000;">
							<g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1"
								stroke-linecap="butt" stroke-linejoin="miter"
								stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0"
								font-family="none" font-weight="none" font-size="none"
								text-anchor="none" style="mix-blend-mode: normal">
							<path d="M0,172v-172h172v172z" fill="none"></path>
							<g fill="#ffffff">
							<path
								d="M0,24.08v123.84h172v-123.84zM6.88,30.96h158.24v8.7075l-79.12,62.565l-79.12,-62.565zM6.88,48.4825l76.97,60.845c1.26313,1.00781 3.03688,1.00781 4.3,0l76.97,-60.845v92.5575h-158.24z"></path></g></g></svg>
						<c:out value="${user.email}"></c:out>
					</p>
					<p>
						<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20"
							height="20" viewBox="0 0 172 172" style="fill: #000000;">
							<g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1"
								stroke-linecap="butt" stroke-linejoin="miter"
								stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0"
								font-family="none" font-weight="none" font-size="none"
								text-anchor="none" style="mix-blend-mode: normal">
							<path d="M0,172v-172h172v172z" fill="none"></path>
							<g fill="#ffffff">
							<path
								d="M41.28,0c-3.7625,0 -6.88,3.1175 -6.88,6.88v6.88h-20.64c-1.80062,0 -3.62812,0.65844 -4.91812,1.96188c-1.30344,1.29 -1.96188,3.1175 -1.96188,4.91812v137.6c0,1.80063 0.65844,3.62813 1.96188,4.93156c1.29,1.29 3.1175,1.94844 4.91812,1.94844h144.48c1.80063,0 3.62813,-0.65844 4.93156,-1.94844c1.29,-1.30344 1.94844,-3.13094 1.94844,-4.93156v-137.6c0,-1.80062 -0.65844,-3.62812 -1.94844,-4.91812c-1.30344,-1.30344 -3.13094,-1.96188 -4.93156,-1.96188h-20.64v-6.88c0,-3.7625 -3.1175,-6.88 -6.88,-6.88h-6.88c-3.7625,0 -6.88,3.1175 -6.88,6.88v6.88h-61.92v-6.88c0,-3.7625 -3.1175,-6.88 -6.88,-6.88zM41.28,6.88h6.88v20.64h-6.88zM123.84,6.88h6.88v20.64h-6.88zM13.76,20.64h20.64v6.88c0,3.7625 3.1175,6.88 6.88,6.88h6.88c3.7625,0 6.88,-3.1175 6.88,-6.88v-6.88h61.92v6.88c0,3.7625 3.1175,6.88 6.88,6.88h6.88c3.7625,0 6.88,-3.1175 6.88,-6.88v-6.88h20.64v24.08h-144.48zM13.76,51.6h144.48v106.64h-144.48zM34.4,65.36v79.12h103.2v-79.12zM41.28,72.24h17.2v17.2h-17.2zM65.36,72.24h17.2v17.2h-17.2zM89.44,72.24h17.2v17.2h-17.2zM113.52,72.24h17.2v17.2h-17.2zM41.28,96.32h17.2v17.2h-17.2zM65.36,96.32h17.2v17.2h-17.2zM89.44,96.32h17.2v17.2h-17.2zM113.52,96.32h17.2v17.2h-17.2zM41.28,120.4h17.2v17.2h-17.2zM65.36,120.4h17.2v17.2h-17.2zM89.44,120.4h17.2v17.2h-17.2zM113.52,120.4h17.2v17.2h-17.2z"></path></g></g></svg>
						Member since
						<fmt:formatDate value="${user.createdAt}" type="Date"/>
						<%-- <c:out value="${user.createdAt}"></c:out> --%>
					</p>
				</div>
				<hr>
				<p>
					Total number of posts:
					<c:out value="${user.createdPosts.size()}"></c:out>
				</p>
				<p>
					Total number of likes:
					<c:out value="${user.posts.size() }"></c:out>
				</p>
			</div>
			<div class="main">
				<c:forEach items="${user.createdPosts}" var="post">
					<div class="post"
						style="border-top: 1px solid grey; align-items: center; padding: 10px">
						<div style="display: flex; justify-content: space-between;">
							<p style="color: grey">
								@<a style="color: grey; text-decoration: none;"
									href="/users/${post.creator.id}"><c:out
										value="${post.creator.name}"></c:out></a>
							</p>
							<p style="font-size: 8pt; color: grey;">
								<fmt:formatDate value="${post.createdAt }" type="both"/>
							</p>
						</div>
						<br>
						<div style="color: white">
							<c:out value="${post.content }"></c:out>
						</div>
						<br>
						<div style="display: flex; justify-content: space-between;">
							<p style="color: darkgrey">
								<a style="color: darkgrey" href="/posts/${post.id}"><c:out
										value="${post.users.size()}"></c:out> <c:if
										test="${post.users.size() != 1 }"> people</c:if> <c:if
										test="${post.users.size() == 1 }"> person</c:if></a> liked this
							</p>
							<div
								style="display: flex; justify-content: space-between; align-items: center">
								<c:if test="${!post.users.contains(user) }">
									<div>
										<form action="/posts/${post.id}/like" method="post">
											<input type="hidden" name="user" value="${user_id}">
											<button class="btn btn-link">
												<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
													width="25" height="25" viewBox="0 0 172 172"
													style="fill: #000000;">
												<g fill="none" fill-rule="nonzero" stroke="none"
														stroke-width="1" stroke-linecap="butt"
														stroke-linejoin="miter" stroke-miterlimit="10"
														stroke-dasharray="" stroke-dashoffset="0"
														font-family="none" font-weight="none" font-size="none"
														text-anchor="none" style="mix-blend-mode: normal">
												<path d="M0,172v-172h172v172z" fill="none"></path>
												<g fill="#ffffff">
												<path
														d="M79.12,10.32c-1.89469,0 -3.44,1.54531 -3.44,3.44v26.66l-17.2,34.4v-6.02c0,-1.89469 -1.54531,-3.44 -3.44,-3.44h-44.72c-0.98094,0 -1.92156,0.44344 -2.58,1.1825c-0.65844,0.73906 -0.98094,1.70656 -0.86,2.6875l10.32,82.56c0.215,1.72 1.70656,3.01 3.44,3.01h34.4c1.89469,0 3.44,-1.53187 3.44,-3.44v-3.44h3.9775c1.42438,4.00438 5.29438,6.88 9.7825,6.88h65.36c7.59219,0 13.76,-6.16781 13.76,-13.76c0,-2.83531 -0.90031,-5.44219 -2.365,-7.6325c5.36156,-1.88125 9.245,-7.01437 9.245,-13.0075c0,-3.37281 -1.20937,-6.42312 -3.225,-8.815c3.99094,-2.40531 6.665,-6.82625 6.665,-11.825c0,-3.37281 -1.20937,-6.42312 -3.225,-8.815c3.99094,-2.40531 6.665,-6.82625 6.665,-11.825c0,-7.59219 -6.16781,-13.76 -13.76,-13.76h-50.31c2.09625,-6.63812 5.59,-18.51687 5.59,-24.08c0,-12.95375 -9.48687,-30.96 -18.8125,-30.96zM82.56,17.2h5.2675c3.15781,0 11.9325,11.97281 11.9325,24.08c0,5.38844 -4.81062,20.92219 -6.665,26.445c-0.36281,1.04813 -0.215,2.21719 0.43,3.1175c0.645,0.90031 1.69313,1.3975 2.795,1.3975h55.04c3.78938,0 6.88,3.09063 6.88,6.88c0,3.78938 -3.09062,6.88 -6.88,6.88h-3.44c-1.90812,0 -3.44,1.53188 -3.44,3.44c0,1.90813 1.53188,3.44 3.44,3.44c3.78938,0 6.88,3.09063 6.88,6.88c0,3.78938 -3.09062,6.88 -6.88,6.88h-3.44c-1.90812,0 -3.44,1.53188 -3.44,3.44c0,1.90813 1.53188,3.44 3.44,3.44c3.78938,0 6.88,3.09063 6.88,6.88c0,3.78938 -3.09062,6.88 -6.88,6.88h-6.88c-1.90812,0 -3.44,1.53188 -3.44,3.44c0,1.90813 1.53188,3.44 3.44,3.44c3.78938,0 6.88,3.09063 6.88,6.88c0,3.78938 -3.09062,6.88 -6.88,6.88h-65.36c-1.89469,0 -3.44,-1.54531 -3.44,-3.44c0,-1.90812 -1.54531,-3.44 -3.44,-3.44h-6.88v-58.48h1.72c1.30344,0 2.52625,-0.76594 3.1175,-1.935l18.92,-37.84c0.24188,-0.47031 0.3225,-0.9675 0.3225,-1.505zM14.19,72.24h37.41v75.68h-27.95zM39.56,130.72c-2.84875,0 -5.16,2.31125 -5.16,5.16c0,2.84875 2.31125,5.16 5.16,5.16c2.84875,0 5.16,-2.31125 5.16,-5.16c0,-2.84875 -2.31125,-5.16 -5.16,-5.16z"></path></g></g></svg>
											</button>
										</form>
									</div>
								</c:if>
								<c:if test="${post.users.contains(user) }">
									<div>
										<form action="/posts/${post.id}/unlike" method="post">
											<input type="hidden" name="user" value="${user_id}">
											<button class="btn btn-link">
												<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
													width="20" height="20" viewBox="0 0 172 172"
													style="fill: #000000;">
												<g fill="none" fill-rule="nonzero" stroke="none"
														stroke-width="1" stroke-linecap="butt"
														stroke-linejoin="miter" stroke-miterlimit="10"
														stroke-dasharray="" stroke-dashoffset="0"
														font-family="none" font-weight="none" font-size="none"
														text-anchor="none" style="mix-blend-mode: normal">
												<path d="M0,172v-172h172v172z" fill="none"></path>
												<g fill="#ffffff">
												<path
														d="M79.12,10.32c-1.89469,0 -3.44,1.54531 -3.44,3.44v26.66l-13.76,35.26v72.24c1.42438,4.00438 5.83188,6.88 10.32,6.88h65.36c7.59219,0 13.76,-6.16781 13.76,-13.76c0,-2.83531 -0.90031,-5.44219 -2.365,-7.6325c5.36156,-1.88125 9.245,-7.01437 9.245,-13.0075c0,-3.37281 -1.20937,-6.42312 -3.225,-8.815c3.99094,-2.40531 6.665,-6.82625 6.665,-11.825c0,-3.37281 -1.20937,-6.42312 -3.225,-8.815c3.99094,-2.40531 6.665,-6.82625 6.665,-11.825c0,-7.59219 -6.16781,-13.76 -13.76,-13.76h-50.31c2.09625,-6.63812 5.59,-18.51687 5.59,-24.08c0,-12.95375 -9.48687,-30.96 -18.8125,-30.96zM10.32,65.36c-0.98094,0 -1.92156,0.44344 -2.58,1.1825c-0.65844,0.73906 -0.98094,1.70656 -0.86,2.6875l10.32,82.56c0.215,1.72 1.70656,3.01 3.44,3.01h30.96c1.89469,0 3.44,-1.53187 3.44,-3.44v-82.56c0,-1.89469 -1.54531,-3.44 -3.44,-3.44zM39.56,130.72c2.84875,0 5.16,2.31125 5.16,5.16c0,2.84875 -2.31125,5.16 -5.16,5.16c-2.84875,0 -5.16,-2.31125 -5.16,-5.16c0,-2.84875 2.31125,-5.16 5.16,-5.16z"></path></g></g></svg>
											</button>
										</form>
									</div>
								</c:if>
								<c:if test="${post.creator.id == user_id }">
									<a href="/posts/${post.id }/edit"><img alt="svgImg"
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4Igp3aWR0aD0iMjAiIGhlaWdodD0iMjAiCnZpZXdCb3g9IjAgMCAxNzIgMTcyIgpzdHlsZT0iIGZpbGw6IzAwMDAwMDsiPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0ibm9uemVybyIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIHN0cm9rZS1kYXNoYXJyYXk9IiIgc3Ryb2tlLWRhc2hvZmZzZXQ9IjAiIGZvbnQtZmFtaWx5PSJub25lIiBmb250LXdlaWdodD0ibm9uZSIgZm9udC1zaXplPSJub25lIiB0ZXh0LWFuY2hvcj0ibm9uZSIgc3R5bGU9Im1peC1ibGVuZC1tb2RlOiBub3JtYWwiPjxwYXRoIGQ9Ik0wLDE3MnYtMTcyaDE3MnYxNzJ6IiBmaWxsPSJub25lIj48L3BhdGg+PGcgZmlsbD0iI2ZmZmZmZiI+PHBhdGggZD0iTTE0OC4zNSw2Ljg4Yy00LjI4NjU2LDAgLTguNTU5NjksMS42Nzk2OSAtMTEuODI1LDQuOTQ1bC0yLjc5NSwyLjc5NWwyMy42NSwyMy42NWMtMC4wMTM0NCwwLjAxMzQ0IDIuNzk1LC0yLjc5NSAyLjc5NSwtMi43OTVjNi41NDQwNiwtNi41NDQwNiA2LjUzMDYzLC0xNy4xMTkzNyAwLC0yMy42NWMtMy4yNzg3NSwtMy4yNjUzMSAtNy41Mzg0NCwtNC45NDUgLTExLjgyNSwtNC45NDV6TTEyOC40NjI1LDIwLjc0NzVjLTAuNzc5MzcsMC4xMDc1IC0xLjUwNSwwLjQ5NzE5IC0yLjA0MjUsMS4wNzVsLTExMS41ODUsMTExLjY5MjVjLTAuNDQzNDQsMC40MDMxMyAtMC43NzkzNywwLjkyNzE5IC0wLjk2NzUsMS41MDVsLTYuODgsMjUuOGMtMC4zMDkwNiwxLjE4MjUgMC4wNDAzMSwyLjQzMjE5IDAuOTAwMzEsMy4yOTIxOWMwLjg2LDAuODYgMi4xMDk2OSwxLjIwOTM4IDMuMjkyMTksMC45MDAzMWwyNS44LC02Ljg4YzAuNTc3ODEsLTAuMTg4MTIgMS4xMDE4OCwtMC41MjQwNiAxLjUwNSwtMC45Njc1bDExMS42OTI1LC0xMTEuNTg1YzEuMzcwNjMsLTEuMzMwMzEgMS4zODQwNiwtMy41MjA2MiAwLjA1Mzc1LC00Ljg5MTI1Yy0xLjMzMDMxLC0xLjM3MDYyIC0zLjUyMDYyLC0xLjM4NDA2IC00Ljg5MTI1LC0wLjA1Mzc1bC0xMTEuMDQ3NSwxMTEuMDQ3NWwtMTMuOTc1LC0xMy45NzVsMTExLjA0NzUsLTExMS4wNDc1YzEuMDM0NjksLTAuOTk0MzcgMS4zNDM3NSwtMi41Mzk2OSAwLjc2NTk0LC0zLjg1NjU2Yy0wLjU3NzgxLC0xLjMxNjg3IC0xLjkwODEyLC0yLjEzNjU2IC0zLjM0NTk0LC0yLjA1NTk0Yy0wLjEwNzUsMCAtMC4yMTUsMCAtMC4zMjI1LDB6Ij48L3BhdGg+PC9nPjwvZz48L3N2Zz4=" /></a>
								</c:if>
								<c:if test="${!post.usersBookmarked.contains(user)}">
									<form action="/posts/${post.id}/bookmark" method="post">
										<input type="hidden" name="user" value="${user_id}">
										<button class="btn btn-link">
											<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
												width="20" height="20" viewBox="0 0 172 172"
												style="fill: #000000;">
												<g fill="none" fill-rule="nonzero" stroke="none"
													stroke-width="1" stroke-linecap="butt"
													stroke-linejoin="miter" stroke-miterlimit="10"
													stroke-dasharray="" stroke-dashoffset="0"
													font-family="none" font-weight="none" font-size="none"
													text-anchor="none" style="mix-blend-mode: normal">
												<path d="M0,172v-172h172v172z" fill="none"></path>
												<g fill="#ffffff">
												<path
													d="M44.075,6.88c-1.63937,0.30906 -2.82187,1.76031 -2.795,3.44v151.36c-0.01344,1.23625 0.645,2.37844 1.70656,2.99656c1.06156,0.63156 2.37844,0.63156 3.45344,0.01344l39.56,-23.1125l39.56,23.1125c1.075,0.61813 2.39188,0.61813 3.45344,-0.01344c1.06156,-0.61813 1.72,-1.76031 1.70656,-2.99656v-151.36c0,-1.89469 -1.54531,-3.44 -3.44,-3.44h-82.56c-0.1075,0 -0.215,0 -0.3225,0c-0.1075,0 -0.215,0 -0.3225,0zM48.16,13.76h75.68v141.9l-36.12,-21.07c-1.06156,-0.61812 -2.37844,-0.61812 -3.44,0l-36.12,21.07z"></path></g></g></svg>
										</button>
									</form>
								</c:if>
								<c:if test="${post.usersBookmarked.contains(user)}">
									<form action="/posts/${post.id}/unbookmark" method="post">
										<input type="hidden" name="user" value="${user_id}">
										<button class="btn btn-link">
											<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
												width="20" height="20" viewBox="0 0 172 172"
												style="fill: #000000;">
											<g fill="none" fill-rule="nonzero" stroke="none"
													stroke-width="1" stroke-linecap="butt"
													stroke-linejoin="miter" stroke-miterlimit="10"
													stroke-dasharray="" stroke-dashoffset="0"
													font-family="none" font-weight="none" font-size="none"
													text-anchor="none" style="mix-blend-mode: normal">
											<path d="M0,172v-172h172v172z" fill="none"></path>
											<g fill="#ffffff">
											<path
													d="M127.28,165.12c-0.60469,0 -1.19594,-0.16125 -1.73344,-0.47031l-39.54656,-23.07219l-39.54656,23.07219c-1.06156,0.61813 -2.37844,0.63156 -3.44,0.01344c-1.075,-0.61813 -1.73344,-1.74688 -1.73344,-2.98313v-151.36c0,-1.89469 1.54531,-3.44 3.44,-3.44h82.56c1.90813,0 3.44,1.54531 3.44,3.44v151.36c0,1.23625 -0.65844,2.365 -1.73344,2.98313c-0.52406,0.30906 -1.11531,0.45687 -1.70656,0.45687z"></path></g></g></svg>
										</button>
									</form>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
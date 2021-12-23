<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookmarks</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color: black">
	<div style="display: flex;">
		<nav class="nav flex-column"
			style="flex: 1; padding-top: 10px; align-items: center; border: 1px solid grey; height:100vh;">
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
				Home</a> <a class="nav-link" href="/users/${user_id}"><svg
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
						d="M89.01,11.7175c-16.07125,0.29563 -26.3375,6.78594 -30.745,16.8775c-4.20594,9.60781 -3.26531,21.74188 -0.215,34.2925c-1.63937,1.92156 -2.94281,4.50156 -2.4725,8.385c0.51063,4.23281 1.67969,7.24281 3.3325,9.3525c0.91375,1.15563 2.10969,1.26313 3.225,1.8275c0.60469,3.60125 1.6125,7.2025 3.1175,10.2125c0.86,1.73344 1.84094,3.3325 2.795,4.6225c0.43,0.57781 1.04813,0.91375 1.505,1.3975c0.02688,4.24625 0.04031,7.78031 -0.3225,12.255c-1.11531,2.70094 -3.72219,4.87781 -7.955,6.9875c-4.36719,2.17688 -10.05125,4.1925 -15.8025,6.665c-5.75125,2.4725 -11.66375,5.4825 -16.34,10.2125c-4.67625,4.73 -7.98187,11.22031 -8.4925,19.78l-0.215,3.655h138.03l-0.215,-3.655c-0.51062,-8.55969 -3.82969,-15.05 -8.4925,-19.78c-4.66281,-4.73 -10.50812,-7.74 -16.2325,-10.2125c-5.72437,-2.4725 -11.34125,-4.48812 -15.695,-6.665c-4.17906,-2.09625 -6.81281,-4.21937 -7.955,-6.88c-0.37625,-4.52844 -0.34937,-8.07594 -0.3225,-12.3625c0.45688,-0.49719 1.075,-0.81969 1.505,-1.3975c0.94063,-1.30344 1.84094,-2.9025 2.6875,-4.6225c1.46469,-3.01 2.52625,-6.62469 3.1175,-10.2125c1.075,-0.56437 2.23063,-0.69875 3.1175,-1.8275c1.65281,-2.10969 2.82188,-5.11969 3.3325,-9.3525c0.45688,-3.7625 -0.80625,-6.24844 -2.365,-8.17c1.67969,-5.45562 3.82969,-14.27062 3.1175,-23.3275c-0.38969,-4.945 -1.65281,-9.87656 -4.6225,-13.975c-2.71437,-3.7625 -7.12187,-6.50375 -12.685,-7.6325c-3.61469,-4.68969 -10.11844,-6.45 -17.63,-6.45zM89.1175,18.5975c0.04031,0 0.06719,0 0.1075,0c6.92031,0.02688 11.40844,2.05594 12.685,4.3l0.86,1.3975l1.6125,0.215c4.78375,0.65844 7.525,2.59344 9.46,5.2675c1.935,2.67406 3.01,6.40969 3.3325,10.535c0.645,8.25063 -1.73344,17.85844 -3.225,22.36l-0.86,2.6875l2.365,1.3975c-0.14781,-0.09406 1.31688,0.90031 0.9675,3.7625c-0.40312,3.37281 -1.20937,5.11969 -1.8275,5.9125c-0.61812,0.79281 -0.94062,0.7525 -0.9675,0.7525l-2.9025,0.215l-0.3225,2.795c-0.3225,2.96969 -1.51844,6.61125 -2.9025,9.46c-0.69875,1.42438 -1.41094,2.67406 -2.0425,3.5475c-0.63156,0.87344 -1.29,1.35719 -0.9675,1.1825l-1.8275,0.9675v2.0425c0,4.98531 -0.20156,9.07031 0.3225,14.835v0.43l0.215,0.43c1.96188,5.28094 6.50375,8.57313 11.5025,11.0725c4.99875,2.49938 10.73656,4.34031 16.125,6.665c5.38844,2.32469 10.32,5.10625 13.975,8.815c2.9025,2.94281 4.73,6.83969 5.6975,11.7175h-122.12c0.9675,-4.86437 2.78156,-8.77469 5.6975,-11.7175c3.66844,-3.70875 8.66719,-6.49031 14.0825,-8.815c5.41531,-2.32469 11.11281,-4.16562 16.125,-6.665c5.01219,-2.49937 9.64813,-5.79156 11.61,-11.0725l0.215,-0.86c0.52406,-5.76469 0.3225,-9.84969 0.3225,-14.835v-2.0425l-1.8275,-0.9675c0.30906,0.16125 -0.43,-0.30906 -1.075,-1.1825c-0.645,-0.87344 -1.43781,-2.12312 -2.15,-3.5475c-1.42437,-2.84875 -2.59344,-6.51719 -2.9025,-9.46l-0.3225,-2.795l-2.9025,-0.215c-0.02687,0 -0.34937,0.04031 -0.9675,-0.7525c-0.61812,-0.79281 -1.42437,-2.53969 -1.8275,-5.9125c-0.33594,-2.86219 1.11531,-3.85656 0.9675,-3.7625l2.2575,-1.3975l-0.645,-2.4725c-3.23844,-12.47 -3.80281,-23.79781 -0.43,-31.4975c3.35938,-7.67281 10.2125,-12.49687 24.51,-12.7925z"></path></g></g></svg>
				Profile</a> <a class="nav-link" href="/logout"><svg
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
			style="flex: 3; align-items: center; flex-direction: column">
			<div
				style="justify-content: space-around; padding: 20px; align-items: center">
				<h3 style="color:white">Bookmarks</h3>
			</div>
			<div>
				<c:forEach items="${bookmarks}" var="b">
					<div class="post"
						style="border-top: 1px solid grey; align-items: center; padding: 10px">
						<div style="display: flex; justify-content: space-between;">
							<p style="color: grey">
								@<a style="color: grey; text-decoration: none;"
									href="/users/${b.creator.id}"><c:out
										value="${b.creator.name}"></c:out></a>
							</p>
							<p style="font-size: 8pt; color: grey;">
								<fmt:formatDate value="${b.createdAt}" type="both"/>
							</p>
						</div>
						<br>
						<div style="color: white">
							<c:out value="${b.content }"></c:out>
						</div>
						<br>
						<div style="display: flex; justify-content: space-between;">
							<p style="color: darkgrey">
								<a style="color: darkgrey" href="/posts/${b.id}"><c:out
										value="${b.users.size()}"></c:out> <c:if
										test="${b.users.size() != 1 }"> people</c:if> <c:if
										test="${b.users.size() == 1 }"> person</c:if></a> liked this
							</p>
							<div
								style="display: flex; justify-content: space-between; align-items: center">
								<c:if test="${!b.users.contains(user) }">
									<div>
										<form action="/posts/${b.id}/like" method="post">
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
								<c:if test="${b.users.contains(user) }">
									<div>
										<form action="/posts/${b.id}/unlike" method="post">
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
								<c:if test="${b.creator.id == user_id }">
									<a href="/posts/${b.id }/edit"><img alt="svgImg"
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4Igp3aWR0aD0iMjAiIGhlaWdodD0iMjAiCnZpZXdCb3g9IjAgMCAxNzIgMTcyIgpzdHlsZT0iIGZpbGw6IzAwMDAwMDsiPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0ibm9uemVybyIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIHN0cm9rZS1kYXNoYXJyYXk9IiIgc3Ryb2tlLWRhc2hvZmZzZXQ9IjAiIGZvbnQtZmFtaWx5PSJub25lIiBmb250LXdlaWdodD0ibm9uZSIgZm9udC1zaXplPSJub25lIiB0ZXh0LWFuY2hvcj0ibm9uZSIgc3R5bGU9Im1peC1ibGVuZC1tb2RlOiBub3JtYWwiPjxwYXRoIGQ9Ik0wLDE3MnYtMTcyaDE3MnYxNzJ6IiBmaWxsPSJub25lIj48L3BhdGg+PGcgZmlsbD0iI2ZmZmZmZiI+PHBhdGggZD0iTTE0OC4zNSw2Ljg4Yy00LjI4NjU2LDAgLTguNTU5NjksMS42Nzk2OSAtMTEuODI1LDQuOTQ1bC0yLjc5NSwyLjc5NWwyMy42NSwyMy42NWMtMC4wMTM0NCwwLjAxMzQ0IDIuNzk1LC0yLjc5NSAyLjc5NSwtMi43OTVjNi41NDQwNiwtNi41NDQwNiA2LjUzMDYzLC0xNy4xMTkzNyAwLC0yMy42NWMtMy4yNzg3NSwtMy4yNjUzMSAtNy41Mzg0NCwtNC45NDUgLTExLjgyNSwtNC45NDV6TTEyOC40NjI1LDIwLjc0NzVjLTAuNzc5MzcsMC4xMDc1IC0xLjUwNSwwLjQ5NzE5IC0yLjA0MjUsMS4wNzVsLTExMS41ODUsMTExLjY5MjVjLTAuNDQzNDQsMC40MDMxMyAtMC43NzkzNywwLjkyNzE5IC0wLjk2NzUsMS41MDVsLTYuODgsMjUuOGMtMC4zMDkwNiwxLjE4MjUgMC4wNDAzMSwyLjQzMjE5IDAuOTAwMzEsMy4yOTIxOWMwLjg2LDAuODYgMi4xMDk2OSwxLjIwOTM4IDMuMjkyMTksMC45MDAzMWwyNS44LC02Ljg4YzAuNTc3ODEsLTAuMTg4MTIgMS4xMDE4OCwtMC41MjQwNiAxLjUwNSwtMC45Njc1bDExMS42OTI1LC0xMTEuNTg1YzEuMzcwNjMsLTEuMzMwMzEgMS4zODQwNiwtMy41MjA2MiAwLjA1Mzc1LC00Ljg5MTI1Yy0xLjMzMDMxLC0xLjM3MDYyIC0zLjUyMDYyLC0xLjM4NDA2IC00Ljg5MTI1LC0wLjA1Mzc1bC0xMTEuMDQ3NSwxMTEuMDQ3NWwtMTMuOTc1LC0xMy45NzVsMTExLjA0NzUsLTExMS4wNDc1YzEuMDM0NjksLTAuOTk0MzcgMS4zNDM3NSwtMi41Mzk2OSAwLjc2NTk0LC0zLjg1NjU2Yy0wLjU3NzgxLC0xLjMxNjg3IC0xLjkwODEyLC0yLjEzNjU2IC0zLjM0NTk0LC0yLjA1NTk0Yy0wLjEwNzUsMCAtMC4yMTUsMCAtMC4zMjI1LDB6Ij48L3BhdGg+PC9nPjwvZz48L3N2Zz4=" /></a>
								</c:if>
								<c:if test="${!b.usersBookmarked.contains(user)}">
									<form action="/posts/${b.id}/bookmark" method="post">
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
								<c:if test="${b.usersBookmarked.contains(user)}">
									<form action="/posts/${b.id}/unbookmark" method="post">
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
			<hr>
		</div>
	</div>
</body>
</html>
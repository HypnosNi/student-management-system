<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>User Operation Interface</title>
	<link rel="stylesheet" type="text/css" href="css/user&admin.css">
	<link rel="icon" type="image/x-ico" href="images/stu.ico">
</head>

<body>
	<%
		// Retrieve the user information who logged in successfully
		User user = (User) session.getAttribute("user");
		// Check if the user is logged in
		if(user != null){
	%>
	<header>
		<div class="title">
			<span>User Operation Interface</span>
		</div>
		<nav>
			<div class="userinfo">
				<ul>
					<li><%=user.getUsername() %></li>
					<li><%=user.getLevel() %></li>
					<li><a href="UserExitServlet">Logout</a></li>
					<li><a href="login.html">Return to Homepage</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<main>
		<%
		}else{
			response.sendRedirect("login.html");
		}
		%>
		<div class="container">
			<div class="select">
				<h3>Please Select an Operation</h3>
				<ul id="accordion" class="accordion">
					<li>
						<div class="link">Department Information Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('department')">View All Departments</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Class Information Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('class')">View All Classes</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Student Information Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('student')">View All Students</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Course Information Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('course')">View All Courses</a></li>
							<li><a onclick="course_avg()">Query Course Average Score</a></li>
							<li><a onclick="fail_rate()">Query Course Failure Rate</a></li>
							<li><a onclick="show_course_ranking()">Query Course Ranking Situation</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Student Grade Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('sc')">View All Student Grades</a></li>
						</ul>
					</li>
				</ul>
				</div>

				<div id="result" class="result">
					<p class="welcome">Welcome to the Student Information Management System!</p>
				</div>
			</div>
		</div>
	</main>

	<footer>
		<div class="copyright">
			&copy; Copyright. All rights reserved. Design by <a href="http://www.github.com/Hypnosni/">Kewei Zeng</a>
		</div>
	</footer>

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/user.js"></script>
</body>
</html>

<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Admin Operation Interface</title>
	<link rel="stylesheet" type="text/css" href="css/user&admin.css">
	<link rel="icon" type="image/x-ico" href="images/stu.ico">
</head>

<body>
	<%
		// Get the user information who logged in successfully
		User user = (User) session.getAttribute("admin");
		// Check if the user is logged in
		if(user != null){
	%>
	<header>
		<div class="title">
			<span>Admin Operation Interface</span>
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
						<div id="user-info" class="link">User Information Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('user')">View All Users</a></li>
							<li><a onclick="show_insert_user()">Add New User Information</a></li>
							<li><a onclick="show_delete('user')">Delete Specific User</a></li>
							<li><a onclick="show_alter('user')">Modify User Information</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Department Information Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('department')">View All Departments</a></li>
							<li><a onclick="show_insert_department()">Add New Department Information</a></li>
							<li><a onclick="show_delete('department')">Delete Specific Department</a></li>
							<li><a onclick="show_alter('department')">Modify Department Information</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Class Information Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('class')">View All Classes</a></li>
							<li><a onclick="show_insert_class()">Add New Class Information</a></li>
							<li><a onclick="show_delete('class')">Delete Specific Class</a></li>
							<li><a onclick="show_alter('class')">Modify Class Information</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Student Information Management</div>
						<ul class="submenu">
							<li><a  onclick="query_all('student')">View All Students</a></li>
							<li><a onclick="show_insert_student()">Add New Student Information</a></li>
							<li><a onclick="show_delete('student')">Delete Specific Student</a></li>
							<li><a onclick="show_alter('student')">Modify Student Information</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Course Information Management</div>
						<ul class="submenu">
							<li><a onclick="query_all('course')">View All Courses</a></li>
							<li><a onclick="show_insert_course()">Add New Course Information</a></li>
							<li><a onclick="show_delete('course')">Delete Course Information</a></li>
							<li><a onclick="show_alter('course')">Modify Course Information</a></li>
							<li><a onclick="course_avg()">Query Course Average Score</a></li>
							<li><a onclick="fail_rate()">Query Course Failure Rate</a></li>
							<li><a onclick="show_course_ranking()">Query Course Ranking Situation</a></li>
						</ul>
					</li>
					<li>
						<div class="link">Student Grade Management</div>
						<ul class="submenu">
							<li><a  onclick="query_all('sc')">View All Student Grades</a></li>
							<li><a onclick="show_insert_sc()">Add New Student Grade Record</a></li>
							<li><a onclick="show_delete('sc')">Delete Student Grade Record</a></li>
							<li><a onclick="show_alter('sc')">Modify Student Grade Record</a></li>
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
	<script src="js/admin.js"></script>
</body>
</html>

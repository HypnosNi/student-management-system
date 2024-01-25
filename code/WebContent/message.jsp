<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset=UTF-8>
	<title>Error Message</title>
	<link rel="stylesheet" type="text/css" href="css/message.css">
	<link rel="icon" type="image/x-ico" href="images/stu.ico">
</head>
<body>
	<main>
		<div class="message">
			<div class="left">
			<%
				// Retrieve the prompt message
				String info = (String) request.getAttribute("info");
				// If the prompt message is not empty, then display it
				if(info != null){
			%>
				<h3><%=info%></h3>
			<%
				}
				// Get the information of the successfully logged-in user
				User user = (User) session.getAttribute("user");
				// Check if the user is logged in
				if(user != null){

				}else{
					//out.print("<script>alert('Sorry! You are not logged in!');</script>");
			%>
				<p><%="Sorry! You are not logged in!"%></p>
			<%
				}
			%>
			</div>
			<div class="right">
				<a class="relogin" href="login.html">Re-login</a>
			</div>
		</div>
	</main>

	<footer>
		<div class="info">
				<ul>
					<a href="#"><li>Student Information Management System</li></a>
					<a href="#"><li>Help & Feedback</li></a>
					<a href="#"><li>Contact Us</li></a>
				</ul>
			</div>
			<div class="copyright">
				&copy; Copyright. All rights reserved. Design by <a href="http://www.github.com/Hypnosni/">Kewei Zeng</a>
			</div>
	</footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Pub</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
  	<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
</head>
<body>
	<div class="menubar">
    	<ul class="nav nav-tabs">
  			<li role="presentation"><a href="Home">Home</a></li>
  			<li role="presentation"><a href="ProductInfo?p=all">All Categories</a></li>
  			<li role="presentation"><a href="About">About Us</a></li>
  			<li role="presentation" class="active"><a href="Login">Login</a></li>
		</ul>
	</div>
	<div class="container">
  	<h2>Music Pub Login </h2>
  	<form role="form">
    	<div class="form-group">
      		<label for="email">Email:</label>
      		<input type="email" class="form-control" id="email" placeholder="Enter email">
    	</div>
    	<div class="form-group">
      		<label for="pwd">Password:</label>
      		<input type="password" class="form-control" id="pwd" placeholder="Enter password">
    	</div>
    	<div class="checkbox">
      		<label><input type="checkbox"> Remember me</label>
    	</div>
    	<button type="submit" class="btn btn-default">Submit</button>
    	<a href="register.html">New User?</a>
  	</form>
	</div>
</body>
</html>
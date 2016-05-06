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
  			<li role="presentation" class="active"><a href="About">About Us</a></li>
  			<li role="presentation"><a href="Login">Login</a></li>
		</ul>
	</div>
	<div class="container">
		<h3>Music Pub</h3>
  		<div class="jumbotron">
    	<p>Description in brief for about few lines </p>
  	</div>
  	<p style="text-align: justify;">This is some text about Product.This is some text about Product.This is some text about Product.This is some text about Product.
  		This is some text about Product.This is some text about Product.This is some text about Product.This is some text about Product.
  		This is some text about Product.This is some text about Product.This is some text about Product.This is some text about Product.
  		This is some text about Product.This is some text about Product.
  	</p>   
	</div>
</body>
</html>
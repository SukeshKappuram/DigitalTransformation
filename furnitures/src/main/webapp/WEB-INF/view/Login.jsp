<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furzu</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js" ></script>
  	<script>document.write('<base href="' + document.location + '" />');</script>
<style type="text/css">
  		.content{
  			width:75%;
  			float: right;
  		}
</style>
</head>
<body>
	<%@include file="header.jsp" %>
	<div class="container">
  		<div class="content" >
			<div >
      		<label for="email">Email:</label>
      		<input type="email"  id="email" placeholder="Enter email">
    	</div>
    	<div >
      		<label for="pwd">Password:</label>
      		<input type="password"  id="pwd" placeholder="Enter password">
    	</div>
    	<div>
      		<label><input type="checkbox"> Remember me</label>
    	</div>
    	<button type="submit" >Submit</button>
    	<a href="UserRegister">New User?</a>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>
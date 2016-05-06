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
	<style type="text/css">
		.content{
			width: 80%;
			margin: 150px auto;
		}
		.content img{
			float:left;
			width: 50%;
		}
		.content table{
			float:right;
			width:50%;
		}
		.content table tr td{
			font-size: 30px;
		}
	</style>
</head>
<body>
	<div class="menubar">
    	<ul class="nav nav-tabs">
  			<li role="presentation"><a href="Home">Home</a></li>
  			<li role="presentation" class="active"><a href="ProductInfo?p=all">All Categories</a></li>
  			<li role="presentation"><a href="About">About Us</a></li>
  			<li role="presentation"><a href="Login">Login</a></li>
		</ul>
	</div>
	<div class="content">
	<img src="<c:url value="/resources/images/${product}"/>" width="350" height="350" alt="img1" class="img-rounded" /> 
	<table cellspacing="10" cellpadding="10">
		<tbody>
			<tr>
				<td>Product Name</td>
			</tr>
			<tr>
				<td>Price</td>
			</tr>
			<tr>
				<td>Description</td>
			</tr>
			<tr>
				<td><input type="submit" formaction="addToCart" class="btn btn-primary" value="Add To Cart" /></td>
			</tr>
		</tbody>
	</table>
	</div>
</body>
</html>
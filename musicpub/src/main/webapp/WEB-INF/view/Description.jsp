<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Pub</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
  	<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js" ></script>
  	<script>document.write('<base href="' + document.location + '" />');</script>
  	<style type="text/css">
  		table tr td,table tr th{
  			text-align: center;
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
	<div class="container">
  	<div class="jumbotron">
    <h1 style="float:left;"><%=request.getParameter("p")%></h1>      
    <p style="float:left;">Product description in brief for about few lines </p>
    	<img src="<c:url value="/resources/images/music1.jpg" />" width="150" height="150" alt="img1"  style="float:right;" class="img-rounded" /> 
  	</div>
  	<p style="text-align: justify;">
  		<div ng-app="myApp" ng-controller="namesCtrl">
			<form>
				<input type="text" ng-model="search"/>&nbsp&nbsp
				<span class="glyphicon glyphicon-search"></span>
			</form>
			<table class="table table-striped">
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>Info</th>
				</tr>
				<tr ng-repeat="resource in names | filter:search">
  					<td>{{ resource.productId }}</td>
  					<td>{{ resource.name}}</td>
					<td><a href="product?p={{ resource.productId}}"><img src="<c:url value="/resources/images/info.jpg" />" style="width:15px;height:15px;"/></a></td>
				</tr>
			</table>
			<script>
				angular.module('myApp', []).controller('namesCtrl', function($scope) {
    				$scope.names = ${data};
    				$scope.orderByMe = function(x) {
        				$scope.myOrderBy = x;
    				}
				});
			</script>
		</div>
  	</p>  
	</div>
  </body>
</html>
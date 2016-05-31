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
  		.container,.jumbotron{
  			width:100%;
  		}
  		.content{
  			width:75%;
  			float: right;
  		}
  		table tr td,table tr th{
  			text-align: center;
  		}
  	</style>
</head>
<body>
<%@include file="header.jsp" %>
<br/>
<div class="container">
  	<div class="jumbotron">
    	<h1 style="float:left;">${about}s<span class="badge">${count}</span></h1>      
    	<p class="navbar-text">Product description in brief for about few lines </p>
  	</div>
  		<div class="content" ng-app="myApp" ng-controller="namesCtrl">
			<form>
				<input type="text" ng-model="search"/>&nbsp&nbsp
				<span class="glyphicon glyphicon-search"></span>
			</form>
			<br/>
			<table class="table table-striped">
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>Info</th>
				</tr>
				<tr ng-repeat="resource in names | filter:search">
  					<td>{{ resource.id }}</td>
  					<td>{{ resource.name}}</td>
					<td><a href="Details?p={{ resource.id}}"><img src="<c:url value="/resources/images/info.jpg" />" style="width:15px;height:15px;"/></a></td>
				</tr>
			</table>
			<script>
				angular.module('myApp', []).controller('namesCtrl', function($scope) {
    				$scope.names = ${product};
    				$scope.orderByMe = function(x) {
        				$scope.myOrderBy = x;
    				}
				});
			</script>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>
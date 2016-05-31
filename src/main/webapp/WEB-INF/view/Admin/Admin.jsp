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
<%@include file="/WEB-INF/view/header.jsp" %>
<div class="container">
  	<div class="jumbotron">
    	<h1 style="float:left;">Hello Admin!!</h1>      
    	<p class="navbar-text">
    		<c:choose>
  				<c:when test="${!empty msg}">
    				<c:out value="${msg}"></c:out>
  				</c:when>
  				<c:otherwise>
    				<c:out value="Manage your Transactions here!!"></c:out>
  				</c:otherwise>
			</c:choose>
    	</p>
  	</div>
  	<div style="float:right">
  		<a href="addProduct">Add Product</a> | <a href="viewProduct">View Product</a>
  	</div>
  	<br/>
	
	<br/>
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
					<th>Update</th>
					<th>Delete</th>
				</tr>
				<tr ng-repeat="resource in names | filter:search">
  					<td>{{ resource.id }}</td>
  					<td>{{ resource.name}}</td>
					<td><a href="Product?p={{ resource.id}}"><img src="<c:url value="/resources/images/edit.jpg" />" style="width:20px;height:20px;"/></a></td>
					<td><a href="Delete?p={{ resource.id}}"><img src="<c:url value="/resources/images/del.jpg" />" style="width:20px;height:20px;"/></a></td>
				</tr>
			</table>
			<script>
				angular.module('myApp', []).controller('namesCtrl', function($scope) {
    				$scope.names = ${products};
    				$scope.orderByMe = function(x) {
        				$scope.myOrderBy = x;
    				}
				});
			</script>
		</div>
	</div>
<%@include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>
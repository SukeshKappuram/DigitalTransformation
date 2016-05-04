<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Pub</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  	<script>document.write('<base href="' + document.location + '" />');</script>
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>
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
    	<img src="<c:url value="/resources/images/music1.jpg" />" width="150" height="150" alt="img1"  style="float:right;"/> 
  	</div>
  	<p style="text-align: justify;">
  		<div ng-app="myApp" ng-controller="namesCtrl">
	<form>
		<input type="text" value="G"  ng-model="search">&nbsp&nbsp
		<span class="glyphicon glyphicon-search"></span>
	</form>
	<table class="table table-striped">
	<tr>
		<th>NO</th>
		<th>NAME</th>
		<th>ID</th>
		<th>PRICE</th>
		<th>DESCRIPTION</th>
	</tr>
	<tr ng-repeat="resource in names | filter:search">
		<td>{{ resource.no }}</td>
		<td>{{ resource.name}}</td>
		<td>{{ resource.id }}</td>
		<td>{{ resource.price}}</td>
		<td>{{ resource.description}}</td>
	</tr>
	</table>
	<script>
	angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.names = [
        {no:'1',name:'Guitar express',id:'101',price:'$120',description:'this is guitar express'},
        {no:'2',name:'Guitar yamaha',id:'102',price:'$170',description:'this is guitar yamaha'},
        {no:'3',name:'Guitar rx 100',id:'103',price:'$160',description:'this is guitar  rx 100'},
        {no:'4',name:'Guitar  niit',id:'104',price:'$220',description:'this is guitar niit'},
        {no:'5',name:'voilon 120',id:'105',price:'$127',description:'this is voilon 120'},
        {no:'6',name:'voilon 89',id:'106',price:'$170',description:'this isvoilon 89'},
        {no:'7',name:'voilon speed way',id:'107',price:'$150',description:'this is voilon speed way'},
        {no:'8',name:'voilon soft',id:'108',price:'$190',description:'this is voilon soft'},
        {no:'9',name:'drums rock',id:'109',price:'$520',description:'this isdrums rock'},
        {no:'10',name:'drummer new rock',id:'110',price:'$170',description:'this is drummer new rock'},
        {no:'11',name:'drummer yamaha',id:'111',price:'$130',description:'this is drummer yamaha'},
        {no:'12',name:'drummer newyork',id:'112',price:'$190',description:'this is drummer newyork'},
        {no:'13',name:'drums 104k',id:'113',price:'$140',description:'this is drums 104k'},
        {no:'14',name:'rock drums rocket',id:'114',price:'$140',description:'this is rock drums rocket'},
        ];
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
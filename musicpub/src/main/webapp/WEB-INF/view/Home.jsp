<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Pub</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
  	<style>
  		.carousel-inner > .item > img,
  		.carousel-inner > .item > a > img {
      		width: 70%;
      		margin: auto;
      		height: 350px;
  		}
  		.container{
  			height: 350px;
  		}
  		.footer{
  			width:100%;
  			bottom: 0px;
  			left:0px;
  			text-align: center;
  		}
  	</style>
</head>
<body>
	<div class="menubar">
    	<ul class="nav nav-tabs">
  			<li role="presentation" class="active"><a href="Home">Home</a></li>
  			<li role="presentation"><a href="ProductInfo?p=all">All Categories</a></li>
  			<li role="presentation"><a href="About">About Us</a></li>
  			<li role="presentation"><a href="Login">Login</a></li>
		</ul>
	</div>
	<div class="container">
  	<br>
  		<div id="myCarousel" class="carousel slide" data-ride="carousel">
    	<!-- Indicators -->
    	<ol class="carousel-indicators">
      		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      		<li data-target="#myCarousel" data-slide-to="1"></li>
      		<li data-target="#myCarousel" data-slide-to="2"></li>
    	</ol>

    	<!-- Wrapper for slides -->
    	<div class="carousel-inner" role="listbox">
      		<div class="item active">
        		<img src="<c:url value="/resources/images/music2.jpg" />" width="350" height="350" alt="img1"/>
      		</div>
      		<div class="item">
        		<img src="<c:url value="/resources/images/music3.jpg" />" width="350" height="350" alt="img1"/>
      		</div>
      		<div class="item">
        		<img src="<c:url value="/resources/images/music4.jpg" />" width="350" height="350" alt="img1"/>
      		</div>
    	</div>
    	<!-- Left and right controls -->
    	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      		<span class="sr-only">Previous</span>
    	</a>
    	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      		<span class="sr-only">Next</span>
    	</a>
		</div>
	</div>
	<div class="content">
 		<div class="row">
    		<div class="col-xs-4">
      			<a href="ProductInfo?p=tabala" class="thumbnail"> 
        			<img src="<c:url value="/resources/images/102.jpg" />" style="width:300px;height:150px" alt="img1"/>
      			</a>
    		</div>
    		<div class="col-xs-4">
      			<a href="ProductInfo?p=gitar" class="thumbnail">
        			<img src="<c:url value="/resources/images/101.jpg" />" style="width:300px;height:150px" alt="img2"/>
      			</a>
    		</div>
    		<div class="col-xs-4">
      			<a href="ProductInfo?p=drums" class="thumbnail">
        			<img src="<c:url value="/resources/images/103.jpg" />" style="width:300px;height:150px" alt="img3"/>
      			</a>
    		</div>
  		</div>
	</div>
	<div class="footer">
		&copy Copyright to #FastCode 2016
	</div>
</body>
</html>
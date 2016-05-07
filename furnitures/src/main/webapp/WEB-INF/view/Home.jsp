<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furzu</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
	<link rel="stylesheet" href="<c:url value="/resources/css/site.css" />" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
  	<style>
  		.carousel-inner > .item > img,
  		.carousel-inner > .item > a > img {
      		width: 100%;
      		margin: auto;
      		height: 550px;
  		}
  		.container{
  			width:85%;
  			height: 580px;
  			float:right;
  		}
  		.header{
  			width:85%;
  			float:right;
  			text-align: center;
  			font-size: 45px;
  			font-family: cursive;
  			color: whitesmoke;
  			background-image: url("<c:url value="/resources/images/bc.jpg" />");
  			background-repeat: no-repeat;
  			background-size:100% 70px;
  		}
  		.footer{
  			width:100%;
  			bottom: 0px;
  			left:0px;
  			text-align: center;
  			position: fixed;
  		}
  	</style>
</head>
<body>
	<div class="header">
		${Title} .com
	</div>
	<nav class="navbar navbar-default sidebar" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>      
    </div>
    <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Home">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
            <li><a href="UserLogin">Customer</a></li>
            <li class="divider"></li>
            <li><a href="#">Seller</a></li>
          </ul>
        </li>          
        <li ><a href="ProductInfo">All Products<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a></li>        
        <li ><a href="classified">Categories<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tags"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
	<div class="container">
  		<div id="myCarousel" class="carousel slide" data-ride="carousel">
    	<!-- Wrapper for slides -->
    	<div class="carousel-inner" role="listbox">
      		<div class="item active">
        		<img src="<c:url value="/resources/images/1001.jpg" />" alt="img1"/>
      		</div>
      		<div class="item">
        		<img src="<c:url value="/resources/images/1002.jpg" />" alt="img1"/>
      		</div>
      		<div class="item">
        		<img src="<c:url value="/resources/images/1003.jpg" />" alt="img1"/>
      		</div>
      		<div class="item">
        		<img src="<c:url value="/resources/images/1004.jpg" />" alt="img1"/>
      		</div>
      		<div class="item">
        		<img src="<c:url value="/resources/images/1005.jpg" />" alt="img1"/>
      		</div>
    	</div>
		</div>
	</div>
	<div class="footer">
		&copy Copyright #Furuz.com  All rights reserved.
	</div>
</body>
</html>
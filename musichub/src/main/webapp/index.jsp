<!DOCTYPE html>
<html lang="en">
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
  		.carousel-inner > .item > img,
  		.carousel-inner > .item > a > img {
      		width: 70%;
      		margin: auto;
      		height: 350px;
  		}
  		.container{
  			width: 90%;
  			height: 350px;
  			margin: auto;
  		}
  		.info{
  			width: 90%;
      		margin: auto;	
      		height: 150px;
  		}
  		.menuinfo{
  			width: 90%;
      		margin: auto;
  		}
  </style>
</head>
<body>
<div class="menubar">
    <ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">Home</a></li>
  <li role="presentation"><a href="aboutUs.html">About Us</a></li>
  <li role="presentation"><a href="Login.html">Login</a></li>
</ul>
</div>
<div class="container">
	<div id="the-slider" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#the-slider" data-slide-to="0" class="active"></li>
			<li data-target="#the-slider" data-slide-to="1" ></li>
			<li data-target="#the-slider" data-slide-to="2" ></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="http://placehold.it/350x350" alt="img1"/>
			</div>
			<div class="item">
				<img src="http://placehold.it/350x350" alt="img1"/>
			</div>
			<div class="item">
				<img src="http://placehold.it/350x350" alt="img1"/>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    	</a>
    	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    	</a>
	</div>
</div>
<div class="container2">
 <div class="row">
    <div class="col-xs-4">
      <a href="img.html" class="thumbnail"> 
        <img src="http://placehold.it/300x150" alt="img1"/>
      </a>
    </div>
    <div class="col-xs-4">
      <a href="img.html" class="thumbnail">
        <img src="http://placehold.it/300x150" alt="img1"/>
      </a>
    </div>
    <div class="col-xs-4">
      <a href="img.html" class="thumbnail">
        <img src="http://placehold.it/300x150" alt="img1"/>
      </a>
    </div>
  </div>
</div>
</body>
</html>
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
</head>
<body>
<%@include file="/WEB-INF/view/header.jsp" %>
<div style="width:100%;height:80px;"></div>
<div class="row" style="width: 100%;margin 0 auto;">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="<c:url value="/resources/images/"/><%=request.getParameter("p")%>.jpg" alt="...">
      <div class="caption">
        <h3>${product.name}</h3>
        	<ul>
				<li>${product.description}</li>
				<li>${product.manufacture}</li>
			</ul>
			<h3 style="color:orange;">$ ${product.price}</h3>
        <p><a href="${flowExecutionUrl}&_eventId=addcart" class="btn btn-primary" role="button">Add to Cart</a> <a href="#" class="btn btn-default" role="button">View Later</a></p>
      </div>
    </div>
  </div>
</div>
<%@include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>
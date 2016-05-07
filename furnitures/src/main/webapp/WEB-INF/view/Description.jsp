<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furzu</title>
</head>
<body>
<%@include file="header.jsp" %>
<div class="row" style="width: 100%;margin 0 auto;">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="<c:url value="/resources/images/101.jpg"/>" alt="...">
      <div class="caption">
        <h3>Product Name</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a> <a href="#" class="btn btn-default" role="button">View Later</a></p>
      </div>
    </div>
  </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
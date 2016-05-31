<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
  	<br/><br/>
    <div align="center">
        <form:form action="./add" enctype="multipart/form-data" method="post">
            <table border="1" cellpadding="10" cellspacing="10">    
            	<c:if test="${!empty command.name}">
            	<tr>
                    <td>Product Id:</td>
                    <td><form:input path="id" value="${command.id}" readonly="true" placeholder="*****"/></td>
                </tr> 
                </c:if>     
                <c:forEach var="i" items="${messages}">
   						<p style="color:red;"><c:out value="${i.getDefaultMessage()}"/></p>
				</c:forEach>      
                <tr>
                    <td>Product Name:</td>
                    <td><form:input path="name" value="${command.name}" placeholder="Product Name"/></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><form:input path="description" value="${command.description}" placeholder="Description"/></td>
                </tr>
                <tr>
                    <td>Manufacture</td>
                    <td><form:input path="manufacture" value="${command.manufacture}" placeholder="Manufacture"/></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><form:input path="price" value="${command.price}" placeholder="Price" type="number"/></td>
                </tr>
                <tr>
                	<td colspan="2">
                		Please select a file to upload : <input type="file" name="file" required="required"/>
                	</td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                    	<c:choose>
  							<c:when test="${empty command.name}">
    							<input type="submit" value="Add Product" />
  							</c:when>
  							<c:otherwise>
    							<input type="submit" value="Update Product" formaction="./Update" />
  							</c:otherwise>
							</c:choose>
					</td>
                </tr>
            </table>
        </form:form>
    </div>
</div>
<%@include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>
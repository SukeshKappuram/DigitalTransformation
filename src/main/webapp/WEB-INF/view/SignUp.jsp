<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register Page</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
	<link rel="stylesheet" href="<c:url value="/resources/css/site.css" />" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
	<style>
		body {
  
  padding-bottom: 40px;
  background-color: #eee;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
	</style>
</head>
<body>
<%@include file="header.jsp" %>
    <div class="container">
    <h2 class="form-signin-heading">Sign Up</h2>
    <c:if test="${!empty messages}">
    <div class="alert alert-danger" role="alert" style="margin-left: 100px;">
    <c:forEach var="i" items="${messages}">
   		<p style="color:red;"><b>OOPS!! </b><c:out value="${i.getDefaultMessage()}"/></p>
	</c:forEach>
    </div>
    </c:if>
        <form:form action="./store" method="post" class="form-signin">
                    <label for="userName" class="sr-only">User Name</label>
                    <form:input path='username' id="userName" class="form-control" placeholder="User Name" />
                    <form:errors path="username" /><br/>
                    <label for="password" class="sr-only">Password</label>
                    <form:input path="password" class="form-control" placeholder="Password" type="password"/>
                    <form:errors path="password">Hello</form:errors><br/>
                    <label for="email" class="sr-only">E-mail:</label>
                    <form:input path="email" class="form-control" placeholder="Email Id"/>
                    <form:errors path="email" /><br/>
                    <label for="phone" class="sr-only">Phone</label>
                    <form:input path="phone" class="form-control" placeholder="Phone"/>
                    <form:errors path="phone" /><br/>
                    <input type="submit" value="Register" class="btn btn-lg btn-primary btn-block" />
        </form:form>
    </div>
<%@include file="footer.jsp" %>
</body>
</html>
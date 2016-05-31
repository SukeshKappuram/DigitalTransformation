<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Login Page</title>
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
<body onload='document.f.username.focus();'>
<%@include file="header.jsp" %>
<div class="container">
<h2 class="form-signin-heading">Sign In</h2>
<c:if test="${!empty message}">
<div class="alert alert-danger" role="alert" style="margin-left: 100px;">
	<b>OOPS!! </b><c:out value="${message}" ></c:out>
</div>
</c:if>	
<form name='f' action='/ekart/login' method='POST' class="form-signin">
	<label for="inputEmail" class="sr-only">Email address</label>
	<input type='text' name='username' id="inputEmail" class="form-control" placeholder="Email address" required autofocus><br/>
	<label for="inputPassword" class="sr-only">Password</label>
	<input type='password' name='password' id="inputPassword" class="form-control" placeholder="Password" required/>
		<div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        New User? click <a href="UserRegister" >here</a>
</form>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
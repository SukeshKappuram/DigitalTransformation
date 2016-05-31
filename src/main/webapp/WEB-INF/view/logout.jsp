<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.springframework.security.core.Authentication" %>   
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	session.invalidate();
	 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
     if (auth.isAuthenticated()){    
        new SecurityContextLogoutHandler().logout(request, response, auth);
     }
     out.print(auth.isAuthenticated());
    auth.setAuthenticated(false);
    out.print(auth.isAuthenticated());
	%>
You are now logged out!!
 
<a href="${pageContext.request.contextPath}/login">go back</a>
</body>
</html>
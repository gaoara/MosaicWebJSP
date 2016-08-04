<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
<%
	session.invalidate();		// 세션의 저장된 것들이 파괴된다(소멸된다)
	
	response.sendRedirect("/");
%>
</body>
</html>
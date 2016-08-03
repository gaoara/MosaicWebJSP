<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>makeCookie.jsp</title>
</head>
<body>
<%
	Cookie c = new Cookie("id", "hong");
	c.setPath("/chap09");			// 해당 밑으로만 요청이 들어올시, 쿠키 같이 보내달라는 요청
	
	response.addCookie(c);
%>
<h1>쿠키 생성</h1>
</body>
</html>
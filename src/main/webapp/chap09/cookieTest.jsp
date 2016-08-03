<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>cookieTest.jsp</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) 
	for (Cookie c : cookies){
		out.println(c.getName() + " = " + c.getValue() + "<br>");
	}
	
	Cookie c = new Cookie("id", "hong");
	c.setPath("/chap09");			// 해당 밑으로만 요청이 들어올시, 쿠키 같이 보내달라는 요청
	
	response.addCookie(c);
%>
</body>
</html>
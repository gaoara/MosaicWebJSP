<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>readinitParameter.jsp</title>
</head>
<body>

초기화 파라미터 목록 : 
<ul>
<%
	Enumeration<String> initParamEnum = application.getInitParameterNames();
	while(initParamEnum.hasMoreElements()){
		String initParamName = initParamEnum.nextElement();
		
%>

<li><%=initParamName %> = 
	<%=application.getInitParameter(initParamName) %>
<% 
	}
%>	
server.context-parameters.logEnabled = true<br>
server.context-parameters.debugLevel = 5
</ul>
</body>
</html>

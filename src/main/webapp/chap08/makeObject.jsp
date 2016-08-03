<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="com.hybrid.domain.MemberInfo"/>
<%
	member.setId("hmhee12");
	member.setName("이병철");
%>
<jsp:forward page="useObject.jsp"/>

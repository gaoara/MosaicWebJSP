<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout.jsp</title>
</head>
<body>

<table width="400" border="1" cellpadding="0" cellspacing="0">

<tr>
	<td colspan="2">
		<jsp:include page="/chap07/top.jsp" flush="false"/>
	</td>
</tr>

<tr>
	<td width="100" valign="top">
		<jsp:include page="/chap07/left.jsp" flush="false"/>
	</td>
	
	<td width="300" valign="top">
		<!-- 내용 부분 시작  -->
		레이아웃1 
		<br><br><br>
		<!-- 내용 부분 끝  -->
	</td>
</tr>

<tr>
	<td colspan="2">
		<jsp:include page="/chap07/bottom.jsp" flush="false"/>
	</td>
</tr>

</table>
</body>
</html>
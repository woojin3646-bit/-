<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
			스크립트릿 태그 는 아래와 같이 나눠서 사용할수도 있다. 
	 --%>
	 
	<%
		int age = 10;	
	%>
	
	<%
		age = 20;
	%>
	
	당신의 나이는 <%= age %>살 입니다. <br>
	당신의 나이는 age살 입니다. <br>
</body>
</html>
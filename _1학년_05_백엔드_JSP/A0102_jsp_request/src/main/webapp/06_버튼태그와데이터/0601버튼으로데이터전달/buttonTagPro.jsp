<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String strA = request.getParameter("a");
		int a = Integer.parseInt(strA);
		
		String strB  = request.getParameter("b");
		int b = Integer.parseInt(strB);
		
		String strC  = request.getParameter("c");
		int c = Integer.parseInt(strC);
	%>
    
    <%=a%> <%=b%> <%=c%>
    <br/>
    <a href="buttonTag.jsp" >뒤로가기</a>
</body>
</html>
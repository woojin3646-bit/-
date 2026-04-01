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
 		속성 type="hidden" 을 사용하여 사용자에게 입력받지않은 데이터를 전달할수있다. 
 		주의 : value값을 설정해야한다.
  --%>
 <%
 	int a = 10;
 	int b = 20;
 %>
 
 <form action="hiddenFormPro.jsp">
 	<input type="hidden" value=<%=a %> name="a">
 	<input type="hidden" value=<%=b %> name="b">
 	<input type="text" name="c">
 	<input type="submit" value="전송">
 </form>
</body>
</html>
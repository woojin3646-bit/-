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
		Object obj = null;
	
		obj = session.getAttribute("max");
		int max = (int)obj;
	
		obj = session.getAttribute("count");
		int count = (int)obj;
		
		obj = session.getAttribute("list");
		int[] list = (int[])obj;
		
		obj = session.getAttribute("index");
		int index = (int)obj;
		
		int updateNum = Integer.parseInt(request.getParameter("updateNum"));
		
		list[index] = updateNum;
		
		System.out.println("[메세지]수정을 완료하였습니다.");
		
		/*
			선택의 자유이다 즉시 돌아 갈수도 있고, 메세지를 출력후 버튼으로 돌아가갈수도있다. 
		*/
		response.sendRedirect("01_list.jsp");
	%>
	
	<h1>[메세지]수정을 완료하였습니다</h1>
	<a href="01_list.jsp">뒤로가기</a>
	
	
</body>
</html>
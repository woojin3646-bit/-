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
		
		int index = Integer.parseInt(request.getParameter("index"));
		
		for(int i=index; i<count - 1; i++){
			list[i] = list[i + 1];
		}
		count -= 1;
		
		session.setAttribute("count", count);
		session.setAttribute("list", list);
		
		/*
			선택의 자유이다 즉시 돌아 갈수도 있고, 메세지를 출력후 버튼으로 돌아가갈수도있다. 
		*/
		response.sendRedirect("01_list.jsp");
	%>
	<h1>[메세지]삭제를 완료하였습니다</h1>
	<a href="01_list.jsp">뒤로가기</a>
</body>
</html>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Random"%>
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
		Random ran = new Random();
	
		Object obj = null;
		
	
		obj = session.getAttribute("list");
		Vector<Integer> list = (Vector<Integer>)obj;
		
		obj = session.getAttribute("max");
		int max = (int)obj;

		
		boolean check = false;
		if(list.size() < max) {
			int rNum = ran.nextInt(100);
			list.add(rNum);
			System.out.println("[메세지]추가를 완료하였습니다");
			check = true;
		}else{
			System.out.println("[메세지]더이상 추가할 수 없습니다");
			check = false;
		}
		
				
		session.setAttribute("list", list);
		
		/*
			선택의 자유이다 즉시 돌아 갈수도 있고, 메세지를 출력후 버튼으로 돌아가갈수도있다. 
		*/
		response.sendRedirect("01_list.jsp");
	%>
	<%if(check == true){ %>
		<h1>[메세지]추가를 완료하였습니다</h1>
	<%} else {%>
		<h1>[메세지]더이상 추가할 수 없습니다</h1>
	<%} %>
	<a href="01_list.jsp">뒤로가기</a>
	
</body>
</html>



























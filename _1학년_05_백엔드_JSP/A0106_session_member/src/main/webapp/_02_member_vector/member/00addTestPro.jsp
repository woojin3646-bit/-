<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%
		int lastNum = (int)session.getAttribute("lastNum");
	
		Vector<Integer> noList =  (Vector<Integer>)session.getAttribute("noList");
		Vector<String> idList =(Vector<String>) session.getAttribute("idList");
		Vector<String> pwList = (Vector<String>) session.getAttribute("pwList");
		Vector<String> nameList =(Vector<String>) session.getAttribute("nameList");
		Vector<String> genderList =(Vector<String>) session.getAttribute("genderList");
		
		for (int i = 0; i < 10; i++) {
		    noList.add(lastNum + 1);
		    idList.add("qwer" + (lastNum + 1));
		    pwList.add("1234" + (lastNum + 1));
		    nameList.add("테스트" + (lastNum + 1));
		    genderList.add("남");

		    lastNum++;
		}
		
		session.setAttribute("lastNum", lastNum);

		session.setAttribute("noList", noList);
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		
		
		response.sendRedirect("03memberList.jsp");
	%>
	<jsp:include page="01memberHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>더미 글 10개를 작성했습니다</h1>
	</div>


<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	

<%
	request.setCharacterEncoding("UTF-8");

	int lastNum = (int)session.getAttribute("lastNum");
	
	Vector<Integer> noList =  (Vector<Integer>)session.getAttribute("noList");
	Vector<String> idList =(Vector<String>) session.getAttribute("idList");
	Vector<String> pwList = (Vector<String>) session.getAttribute("pwList");
	Vector<String> nameList =(Vector<String>) session.getAttribute("nameList");
	Vector<String> genderList =(Vector<String>) session.getAttribute("genderList");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	int count = 0;
	for(int i=0; i< noList.size(); i++) {
		if(noList.get(i).equals(id)) {
			count += 1;
			break;
		}
	}
	
	if(count == 0){
		noList.add(lastNum + 1);
		idList.add(id);
		pwList.add(pw);
		nameList.add(name);
		genderList.add(gender);
		
		lastNum += 1;
		
		// 마지막번호 
		session.setAttribute("lastNum", lastNum);
		// 세션에 회원 정보 저장
		session.setAttribute("noList", noList);
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		
		response.sendRedirect("02main.jsp");
	}
	%>

	<jsp:include page="01memberHeader.jsp"/>
	<div align="center">
		<%if(count == 0){ %>	
				
			<h1>회원가입 성공</h1>					
		<%}else{ %>	
			<h1>회원가입 실패</h1>	
		<%} %>
	</div>


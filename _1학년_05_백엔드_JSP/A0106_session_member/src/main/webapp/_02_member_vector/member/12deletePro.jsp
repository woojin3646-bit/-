<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Vector<Integer> noList =  (Vector<Integer>)session.getAttribute("noList");
	Vector<String> idList =(Vector<String>) session.getAttribute("idList");
	Vector<String> pwList = (Vector<String>) session.getAttribute("pwList");
	Vector<String> nameList =(Vector<String>) session.getAttribute("nameList");
	Vector<String> genderList =(Vector<String>) session.getAttribute("genderList");


	String log = (String)session.getAttribute("log");
	
	String pw = request.getParameter("pw");
	int count = 0;
	int index = 0;
	String dbPw = "";
	for(int i=0; i < noList.size(); i++) {
		if(idList.get(i).equals(log)) {
			count += 1;
			dbPw = pwList.get(i);
			index = i;
			break;
		}
	}
	
	if(pw.equals(dbPw)) {
		
		
		noList.remove(index);
		idList.remove(index);
		pwList.remove(index);
		nameList.remove(index);
		genderList.remove(index);
		
		
		
		session.setAttribute("noList", noList);
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		
		session.removeAttribute("log");	
		
		//response.sendRedirect("02main.jsp");
	}
		
	%>
		
	<jsp:include page="01memberHeader.jsp"/>
	
	<div align="center">
		<%if(count == 1){ %>	
				<h1>회원탈퇴 성공</h1>
		<%}else{ %>
				<h1>회원탈퇴 실패</h1>
		<%} %>
	</div>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int lastNum = (int)session.getAttribute("lastNum");
	
	Vector<Integer> noList =  (Vector<Integer>)session.getAttribute("noList");
	Vector<String> idList =(Vector<String>) session.getAttribute("idList");
	Vector<String> pwList = (Vector<String>) session.getAttribute("pwList");
	Vector<String> nameList =(Vector<String>) session.getAttribute("nameList");
	Vector<String> genderList =(Vector<String>) session.getAttribute("genderList");

	String log = (String)session.getAttribute("log");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int count = 0;
	for(int i=0; i < noList.size(); i++) {
		if(idList.get(i).equals(id) && pwList.get(i).equals(pw)){
			count += 1;
			break;
		}
	}
	
	if(count >= 1) {
		session.setAttribute("log", id);
	}else{
		session.setAttribute("log", null);
	}
	
	//response.sendRedirect("02main.jsp");
%>
	
	<jsp:include page="01memberHeader.jsp"></jsp:include>
	<div align="center">
		<%if(count >= 1){ %>
		
			<h1>로그인 성공</h1>
			
		<%}else{ %>
		
			<h1>로그인 실패</h1>
			
		<%} %>
	</div>

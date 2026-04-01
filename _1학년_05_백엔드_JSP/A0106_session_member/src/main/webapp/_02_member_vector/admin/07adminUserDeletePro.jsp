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


	String strIndex = request.getParameter("index");
	int index = Integer.parseInt(strIndex);

	
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
	
	response.sendRedirect("05adminUserList.jsp");
	
%>

	<jsp:include page="01adminHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>회원삭제 성공</h1>
	</div>



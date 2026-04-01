<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		request.setCharacterEncoding("UTF-8");
	
		Object obj1 = session.getAttribute("lastNum");
		int lastNum = (int) obj1;
	
		Object obj2 = session.getAttribute("noList");
		Vector<Integer> noList = (Vector<Integer>) obj2;
	
		Object obj3 = session.getAttribute("writerList");
		Vector<String> writerList = (Vector<String>) obj3;
	
		Object obj4 = session.getAttribute("subjectList");
		Vector<String> subjectList = (Vector<String>) obj4;
	
		Object obj5 = session.getAttribute("contentsList");
		Vector<String> contentsList = (Vector<String>) obj5;
	
		Object obj6 = session.getAttribute("readCountList");
		Vector<Integer> readCountList = (Vector<Integer>) obj6;
		

		String writer = request.getParameter("writer");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		
	  	noList.add(lastNum + 1);
	    writerList.add(writer);
	    subjectList.add(subject);
	    contentsList.add(contents);
	    readCountList.add(0);
	
		
		lastNum += 1;
		
		session.setAttribute("lastNum", lastNum);
		
		session.setAttribute("noList", noList);
		session.setAttribute("writerList", writerList);
		session.setAttribute("subjectList", subjectList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("readCountList", readCountList);
		
		response.sendRedirect("03boardList.jsp");
	%>
	
	<jsp:include page="01boardHeader.jsp"></jsp:include>
	<div align="center">
		<h1>게시글을 작성했습니다</h1>
	</div>











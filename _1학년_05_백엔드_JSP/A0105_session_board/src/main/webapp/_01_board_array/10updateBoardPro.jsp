<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
		request.setCharacterEncoding("UTF-8");
	
		Object obj = session.getAttribute("boardIndex");
		int boardIndex = (int)obj;
		
		Object obj2 = session.getAttribute("lastNum");
		int lastNum = (int)obj2;
	
		Object obj3 = session.getAttribute("noList");
		String[] noList = (String[])obj3;
	
		Object obj4 = session.getAttribute("writerList");
		String[] writerList = (String[])obj4;
	
		Object obj5 = session.getAttribute("subjectList");
		String[] subjectList = (String[])obj5;
		
		Object obj6 = session.getAttribute("contentsList");
		String[] contentsList = (String[])obj6;
		
		Object obj7 = session.getAttribute("readCountList");
		int[] readCountList = (int[])obj7;
		
		String writer = request.getParameter("writer");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		
		int index = (int)session.getAttribute("index");
	
		writerList[index] = writer;
		subjectList[index] = subject;
		contentsList[index] = contents;
		
		
		session.setAttribute("boardIndex", boardIndex);
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
		<h1>게시글을 수정했습니다</h1>
	</div>
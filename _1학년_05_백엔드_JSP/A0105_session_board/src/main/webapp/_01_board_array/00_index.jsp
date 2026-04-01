<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%
	// 저장할 수 있는 게시글 수
	String[] noList = new String[1000];
	String[] writerList = new String[1000];
	String[] subjectList = new String[1000];
	String[] contentsList = new String[1000];
	int [] readCountList = new int[1000];
	
	
	int lastNum = 0; // 마지막번호
	int boardIndex = 0;  // 실제 저장된 데이터 개수 
	
	session.setAttribute("boardIndex", boardIndex);
	session.setAttribute("lastNum", lastNum);
	
	session.setAttribute("noList", noList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("subjectList", subjectList);
	session.setAttribute("contentsList", contentsList);
	session.setAttribute("readCountList", readCountList);
	
	response.sendRedirect("02main.jsp");
%>

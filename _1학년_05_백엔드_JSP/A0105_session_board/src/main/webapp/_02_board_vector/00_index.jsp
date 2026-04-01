<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%
	// 저장할 수 있는 게시글 수


	Vector<Integer> noList = new Vector<Integer>();
	Vector<String> writerList = new Vector<String>();
	Vector<String> subjectList = new Vector<String>();
	Vector<String> contentsList = new Vector<String>();
	Vector<Integer> readCountList = new Vector<Integer>();
	
	int lastNum = 0; // 마지막번호
	
	session.setAttribute("lastNum", lastNum);
	
	session.setAttribute("noList", noList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("subjectList", subjectList);
	session.setAttribute("contentsList", contentsList);
	session.setAttribute("readCountList", readCountList);
	
	response.sendRedirect("02main.jsp");
%>

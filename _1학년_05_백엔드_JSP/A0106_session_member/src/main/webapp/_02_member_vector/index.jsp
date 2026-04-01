<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	// 저장할 수 있는 최대 회원 수
	Vector<Integer> noList = new Vector<>();
	Vector<String> idList = new Vector<>();
	Vector<String> pwList = new Vector<>();
	Vector<String> nameList = new Vector<>();
	Vector<String> genderList = new Vector<>();
	
	int lastNum = 0;
	
	// 로그인 상태를 확인할 수 있는 log변수 세션에 저장
	session.setAttribute("log", null);
	
	// 마지막번호 
	session.setAttribute("lastNum", lastNum);
	// 세션에 회원 정보 저장
	session.setAttribute("noList", noList);
	session.setAttribute("idList", idList);
	session.setAttribute("pwList", pwList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("genderList", genderList);
	
	// 관리자 아이디 비밀번호
	session.setAttribute("idAdmin", "admin");
	session.setAttribute("pwAdmin", "admin");
	
	// 각종 정보 저장 후, main페이지로 이동하기
	response.sendRedirect("member/02main.jsp");
%>

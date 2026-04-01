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
%>

	<jsp:include page="01memberHeader.jsp"/>

	<div align="center">
		<h1>회원전체정보</h1>
		
		<%if(noList.size() > 0){ %>
		
			<table border="1">
				<tr>
					<td>번호</td>
					<td>아이디</td>
					<td>패스워드</td>
					<td>이름</td>
					<td>성별</td>
				</tr>			
				<% for(int i=0; i<noList.size(); i++) { %>
					<tr>
						<td><%= noList.get(i) %></td>
						<td><%= idList.get(i) %></td>
						<td><%= pwList.get(i) %></td>
						<td><%= nameList.get(i) %></td>
						<td><%= genderList.get(i) %></td>
					</tr>
				<%}%>		
			</table>
			
		<%} %>
	</div>

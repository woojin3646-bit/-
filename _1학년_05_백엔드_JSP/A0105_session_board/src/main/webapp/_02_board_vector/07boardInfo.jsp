<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
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
		
		
		int index = Integer.parseInt(request.getParameter("index"));
		int readCount = readCountList.get(index);
		readCountList.set(index, readCount + 1);
		
		session.setAttribute("readCountList", readCountList);
		
	%>
	<jsp:include page="01boardHeader.jsp"/>
	
	<div align="center">

		<h2>게시글 정보</h2>

		<table border="1">
			<tr>
				<td>번호</td>
				<td ><%= noList.get(index) %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= writerList.get(index) %></td>
				
			</tr>
			<tr>
				<td>조회수</td>
				<td><%= readCountList.get(index) %></td>
				
			</tr>
			<tr>
				<td>제목</td>
				<td >
					<%= subjectList.get(index)%>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td >
					<textarea rows="10" cols="30" name="contents" readonly="readonly"><%= contentsList.get(index) %></textarea>
				</td>
			</tr>
			
		</table>
	</div>

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
	
	%>
	
	<jsp:include page="01boardHeader.jsp"></jsp:include>
	
	
	<div align="center">
		<h1>전체게시글 <%= noList.size() %>개</h1>
		
		<% if(noList.size() > 0){ %>
		
			<table border="1">
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>삭제</td>
					<td>수정</td>
				</tr>
			<%	for(int i = 0; i < noList.size(); i++) {	%>
				<tr>
					<td><%= noList.get(i) %></td>		
					<td>
						<a href="07boardInfo.jsp?index=<%= i %>"><%= subjectList.get(i) %></a>
					</td>		
					<td><%= writerList.get(i) %></td>	
					<td align="center"><%= readCountList.get(i) %></td>	
					<td>
						<button onclick="window.location.href='08deleteBoardPro.jsp?index=<%= i %>'">삭제</button>
					</td>	
					<td>
						<button onclick="window.location.href='09updateBoard.jsp?index=<%= i %>'">수정</button>
					</td>	
				</tr>
			<%	} %>
				
			</table>
		
		<%} %>
	</div>
		

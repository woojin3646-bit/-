<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
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
	%>
	
	<jsp:include page="01boardHeader.jsp"></jsp:include>
	
	
	<div align="center">
		<h1>전체게시글 <%= boardIndex %>개</h1>
		
		<% if(boardIndex > 0){ %>
		
			<table border="1">
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>삭제</td>
					<td>수정</td>
				</tr>
			<%	for(int i = 0; i < boardIndex; i++) {	%>
				<tr>
					<td><%= noList[i] %></td>		
					<td>
						<a href="07boardInfo.jsp?index=<%= i %>"><%= subjectList[i] %></a>
					</td>		
					<td><%= writerList[i] %></td>	
					<td align="center"><%= readCountList[i] %></td>	
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
		

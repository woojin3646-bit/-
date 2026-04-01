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
		
		
		int index = Integer.parseInt(request.getParameter("index"));
		
		readCountList[index] += 1;
		
		session.setAttribute("readCountList", readCountList);
		
	%>
	<jsp:include page="01boardHeader.jsp"/>
	
	<div align="center">

		<h2>게시글 정보</h2>

		<table border="1">
			<tr>
				<td>번호</td>
				<td ><%= noList[index] %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= writerList[index] %></td>
				
			</tr>
			<tr>
				<td>조회수</td>
				<td><%= readCountList[index] %></td>
				
			</tr>
			<tr>
				<td>제목</td>
				<td >
					<%= subjectList[index] %>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td >
					<textarea rows="10" cols="30" name="contents" readonly="readonly"><%= contentsList[index] %></textarea>
				</td>
			</tr>
			
		</table>
	</div>

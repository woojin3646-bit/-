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
		
		session.setAttribute("index", index); // 다음페이지에서 사용하기위해 저장한다.
		
	%>
	<jsp:include page="01boardHeader.jsp"/>
	
	<div align="center">

		<h2>게시글 수정</h2>
		
		<form action="10updateBoardPro.jsp" method="post">
		
			<table border="1">
				<tr>
					<td>번호</td>
					<td ><%= noList.get(index) %></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td ><input type="text" name="writer" value="<%= writerList.get(index) %>" style="background: yellow;"></td>
					
				</tr>
				<tr>
					<td>조회수</td>
					<td><%= readCountList.get(index) %></td>
					
				</tr>
				<tr>
					<td>제목</td>
					<td >
						<input type="text" name="subject" value="<%= subjectList.get(index) %>" style="background: yellow;">
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td >
						<textarea rows="10" cols="30" name="contents" style="background: yellow;"><%= contentsList.get(index) %></textarea>
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" value="수정">
					</td>
				</tr>
			</table>
		
		</form>

	</div>

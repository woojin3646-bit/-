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
		
		session.setAttribute("index", index); // 다음페이지에서 사용하기위해 저장한다.
		
	%>
	<jsp:include page="01boardHeader.jsp"/>
	
	<div align="center">

		<h2>게시글 수정</h2>
		
		<form action="10updateBoardPro.jsp" method="post">
		
			<table border="1">
				<tr>
					<td>번호</td>
					<td ><%= noList[index] %></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td ><input type="text" name="writer" value="<%= writerList[index] %>" style="background: yellow;"></td>
					
				</tr>
				<tr>
					<td>조회수</td>
					<td><%= readCountList[index] %></td>
					
				</tr>
				<tr>
					<td>제목</td>
					<td >
						<input type="text" name="subject" value="<%= subjectList[index] %>" style="background: yellow;">
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td >
						<textarea rows="10" cols="30" name="contents" style="background: yellow;"><%= contentsList[index] %></textarea>
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

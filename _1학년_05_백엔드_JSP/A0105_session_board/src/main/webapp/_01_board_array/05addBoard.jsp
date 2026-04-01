<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
	<%
		Object obj = session.getAttribute("lastNum");
		int lastNum = (int)obj;
	%>
	
	<jsp:include page="01boardHeader.jsp"></jsp:include>
	
	<div align="center">
	
		<h2>게시글 추가하기</h2>
		
		<form action="06addBoardPro.jsp" method="post" >
			<table border="1">
				<tr>
					<td>번호</td>
					<td><%= lastNum + 1 %></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="subject"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea rows="10" cols="30" name="contents"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="작성완료">
					</td>
				</tr>
			</table>
		</form>
	</div>

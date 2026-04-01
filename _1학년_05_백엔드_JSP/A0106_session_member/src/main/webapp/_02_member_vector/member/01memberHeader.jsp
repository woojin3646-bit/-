<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
</head>
<body>
	

	<% String log = (String)session.getAttribute("log"); %>

	<div align="center">
	
		<h1>회원관리페이지</h1>
		
		<table border="1">
			<tr>			
				<%	if(log == null) { %>
					<td><a href="04joinForm.jsp">회원가입</a></td>
					<td><a href="06loginForm.jsp">로그인</a></td>
						
				<%	} else { %>		
					<td>	[<%=log%> 님 로그인중 ]	</td>		
					<td><a href="08logout.jsp">로그아웃</a></td>
					<td><a href="09updateForm.jsp">회원정보수정</a></td>
					<td><a href="11deleteForm.jsp">회원탈퇴</a></td>
	
				<%	} %>
				
				<td><a href="../admin/02adminMain.jsp">ADMIN</a></td>
				<td >										
					<a href="03memberList.jsp">회원전체</a>
				</td>
				<td >										
					<a href="00addTestPro.jsp">랜덤회원추가(10명)</a>
				</td>
				<td >										
					<a href="../index.jsp">초기화</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
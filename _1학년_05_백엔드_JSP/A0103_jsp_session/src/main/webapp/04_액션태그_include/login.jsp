<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<jsp:include page="01_header.jsp"/>
	
	<div align="center">
		<h1>로그인 페이지</h1>
		
		<table border="1">
			<tr>
				<td>
					아이디 :
				</td>
				<td>
					 <input type="text" name="id" placeholder="아이디를 입력하세요">
				</td>
			
			</tr>	
			
			<tr>
				<td>
					비밀번호 :
				</td>
				<td>
					 <input type="password" name="pw" placeholder="비밀번호를 입력하세요">
				</td>
			
			</tr>		
			
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>

	</div>
	
	<br><br>
	<jsp:include page="02_bottom.jsp"/>

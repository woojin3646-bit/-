<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판1</title>
</head>
<body>


	<div align="center">
		<h1>게시판</h1>
		
		<table border="1">
		
			<tr>
				
				<td >
					<button onclick="location.href='02main.jsp'">메인</button>
				</td>
				<td >
					<button onclick="location.href='03boardList.jsp'">전체 게시글</button>
				</td>			
				<td >
					<button onclick="location.href='05addBoard.jsp'"> 게시글 쓰기 </button>
				</td>
				<td>
					<button onclick="location.href='00addTestPro.jsp'">랜덤 게시글(10개) 추가</button>
				</td>
				<td >
					<button onclick="location.href='00_index.jsp'">초기화</button>
				</td>			
			</tr>
		</table>		
	</div>
</body>
</html>
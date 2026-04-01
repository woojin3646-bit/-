<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	/*
	    [문제]
	    철수는 김밥을 만들기 위해 재료를 사러 마트에 왔습니다.
	    철수가 필요한 재료는 오이 14개입니다.
	    오이는 한 번에 4개씩 묶어서 1500원에 판매됩니다
	    철수가 재료를 구입하는 데 필요한 총 금액을 구하여 출력하시오.    
	*/

	/*
	    [출력예시]
	   		오이 필요 묶음 수 : 4개
	   		총 금액 : 56원
	*/
	%>
	
	<%
		int a = 14;		// 오이 수량
		
		int b = 1500;	// 오이 가격
		
		int c = a / 4;	// 오이 필요 묶음 수
		if(a % 4 > 0) {
			c += 1;
		}
		
		
		int d = a * c;
	%>
	
		오이 필요 묶음 수 : <%= c %>개 <br>
		총 금액 : <%= d %>원

</body>
</html>
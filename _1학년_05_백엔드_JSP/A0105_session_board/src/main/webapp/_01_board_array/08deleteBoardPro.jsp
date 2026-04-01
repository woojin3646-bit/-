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
	
		String[] noList2 = new String[1000];
		String[] writerList2 = new String[1000];
		String[] subjectList2 = new String[1000];
		String[] contentsList2 = new String[1000];
		int[] readCountList2 = new int[1000];
		
		int index2 = 0;
		for(int i = 0; i < boardIndex; i++){
			if(i == index){
				
			}else{
				noList2[index2] = noList[i];
				writerList2[index2] = writerList[i];
				subjectList2[index2] = subjectList[i];
				contentsList2[index2] = contentsList[i];
				readCountList2[index2] = readCountList[i];
				index2 += 1;
			}
		}
		
		boardIndex -= 1;
		
		noList = noList2;
		writerList = writerList2;
		subjectList= subjectList2;
		contentsList = contentsList2;
		readCountList = readCountList2;
		
	
		session.setAttribute("boardIndex", boardIndex);
		session.setAttribute("lastNum", lastNum);

		session.setAttribute("noList", noList);
		session.setAttribute("writerList", writerList);
		session.setAttribute("subjectList", subjectList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("readCountList", readCountList);
	
		response.sendRedirect("03boardList.jsp");
		
	%>
	<jsp:include page="01boardHeader.jsp"></jsp:include>
	<div align="center">
		<h1>게시글을 삭제했습니다</h1>
	</div>
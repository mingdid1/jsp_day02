<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 입니다</h1>
	
	<%
		String app = (String)application.getAttribute("app");
		out.print(app);
		if (app == null) {
			application.setAttribute("app", 1 + "");
		}else {
			int a = Integer.parseInt(app);
			application.setAttribute("app", ++a + "" );
		}
	%>
	<h3>공지사항 입니다</h3>
	jsp application을 이용한<br>
	조회수 올리기 문제 입니다<br>
	<a href="quiz.jsp">돌아가기</a>
	
</body>
</html>
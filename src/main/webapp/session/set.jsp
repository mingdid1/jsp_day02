<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	set.jsp<br>
	<%
		session.setAttribute("id", "abc");
		session.setAttribute("name", "홍길동");
	%>
	<hr>
	<a href="get.jsp">세션 가져오기</a>
	<a href="del.jsp">세션 삭제</a>
</body>
</html>
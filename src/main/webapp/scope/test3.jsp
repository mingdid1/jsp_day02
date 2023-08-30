<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test3.jsp<br>
	page : <%= pageContext.getAttribute("name") %><br>
	request : <%= request.getAttribute("name") %><br>
	session : <%= session.getAttribute("name") %><br>
	application : <%= application.getAttribute("name") %><br>
	application => 서버 껏다가 다시 켜면 null<br>
	<a href="test1.jsp">test1</a>
	<a href="test2.jsp">test2</a>
</body>
</html>
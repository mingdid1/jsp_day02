<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test2.jsp<br>
	session => 다른 브라우저로 들어가게되면 null<br><br>

	page : <%= pageContext.getAttribute("name") %><br>
	request : <%= request.getAttribute("name") %><br>
	session : <%= session.getAttribute("name") %><br>
	application : <%= application.getAttribute("name") %><br>
	<a href="test3.jsp">test3</a>
	<a href="test1.jsp">test1</a>
</body>
</html>
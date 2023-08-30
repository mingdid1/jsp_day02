<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>제목</th><th>조회수</th>
		</tr>
		<tr>
			<td><a href="result.jsp">안녕하세요</a></td>
			<td>
				<% System.out.println(application.getAttribute("app"));
				if (application.getAttribute("app") == null) {
					out.print(0);
				}else {%>
					<%= application.getAttribute("app") %>
				 <% } %>
			</td>
		</tr>
	</table>
</body>
</html>
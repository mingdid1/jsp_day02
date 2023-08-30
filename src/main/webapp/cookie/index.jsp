<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>CARE LAB</h1>
	<%
		boolean bool = true;
		
		Cookie[] cookieArr = request.getCookies();
		if ( cookieArr != null) {
			for (Cookie c: cookieArr) {
				out.print("name: " + c.getName() + "<br>");
				out.print("value: " + c.getValue() + "<br>");
				if(c.getName().equals("testCookie")) {
				// if(c.getValue().equals("myCookie")) {	// c.getValue로도 가능
					bool = false;
				}
			}
		}
		
		// 최초 페이지
		// name: JSESSIONID
		// value: C25646501B21364BC76BE530F370932E
		
		// 새로고침 후 나옴
		// name: testCookie
		// value: myCookie
		
		Cookie cookie = new Cookie("testCookie", "myCookie");	// 쿠키 생성
		cookie.setMaxAge(5);	// 5초동안 유지하겠다
		cookie.setPath("/");	// path값 설정
		
		response.addCookie(cookie);	// 사용자한테 쿠키 전달
	%>
	
	<% if(bool) { %> 
	<script type="text/javascript">
		window.open("popup.jsp", "",
				"width=300,height=200,top=500,left=500");
	</script>
	<% } %>
</body>
</html>
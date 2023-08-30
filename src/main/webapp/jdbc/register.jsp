<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
		request.setCharacterEncoding("utf-8");
		
		Connection con = DBConnect.getConnect();
		String sql = "insert into member(m_id, m_pwd, m_name, m_addr) values(?,?,?,?)";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, request.getParameter("m_id"));
		ps.setString(2, request.getParameter("m_pwd"));
		ps.setString(3, request.getParameter("m_name"));
		ps.setString(4, request.getParameter("m_addr"));
		
		int result = ps.executeUpdate();
		response.sendRedirect("select.jsp");
	%>
</body>
</html>
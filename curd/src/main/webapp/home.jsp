<%@page import="java.sql.ResultSet"%>
<%@ page import="com.user.userDAO"%>
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
	//create <%@ page tag
	String uname = (String) session.getAttribute("username");
	response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
	if (uname == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	<h1>
		Welcome
		<%=uname%></h1>

	<%
	userDAO userDao = new userDAO();
	ResultSet rs = userDao.home(uname);
	%>

	<TABLE BORDER="1">

		<TR>

			<TH>Username</TH>
			<TH>Password</TH>
			<TH>Email</TH>
			<TH>Gender</TH>
			<TH>Phoneno</TH>

		</TR>
		<%
		while (rs.next()) {
		%>
		<TR>

			<TD><%=rs.getString(1)%></TD>
			<TD><%=rs.getString(2)%></TD>
			<TD><%=rs.getString(3)%></TD>
			<TD><%=rs.getString(4)%></TD>
			<TD><%=rs.getString(5)%></TD>

		</TR>
		<%
		}
		%>
	</TABLE>
	<br>
	<br>
	<form action="refresh.jsp" method="post">
		<input type="submit" name="action" value="update">
	</form>
	<form action="controller" method="post">
		<input type="submit" name="action" value="delete">
	</form>



</body>
</html>
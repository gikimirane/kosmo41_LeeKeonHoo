<%@ page import = "java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String name, id, pw, major, protocol;
		String[] hobbys;
	%>
	
	<%
		String sType = request.getMethod();
		if(sType.equals("POST")){
			response.sendRedirect("error40A.html");
		}
			request.setCharacterEncoding("UTF-8");

			name = request.getParameter("name");
			id = request.getParameter("id");
			pw = request.getParameter("pw");
			major = request.getParameter("major");
			protocol = request.getParameter("protocol");	
			hobbys = request.getParameterValues("hobby");
	%>
	
	이름: <%= name %> <br />
	아이디: <%= id %> <br />
	비밀번호: <%= pw %> <br />
	취미: <%= Arrays.toString(hobbys) %> <br />
	전공: <%= major %> <br />
	

</body>
</html>
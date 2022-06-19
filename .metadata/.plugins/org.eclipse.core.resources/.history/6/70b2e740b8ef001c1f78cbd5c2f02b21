<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 리다이렉트는 새로운 요청이기 때문에
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String params = String.format("?name=%s&age=%s",name,age);
	
	String location = "ex05_finish.jsp" + params;
	response.sendRedirect(location);
%>
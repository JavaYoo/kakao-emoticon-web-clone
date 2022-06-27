<%@page import="com.util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ex06_auth.jspf" %>
<!-- <h3>ex06_logout.jsp</h3> -->

<%
	// 세션 자동 삭제
	// 세션 강제 삭제
	session.invalidate();

	// ex06_default.jsp 이동
%>

<script>
	alert("[<%= logonID%>]님 로그아웃 하셨습니다.")
	location.href = "ex06_default.jsp";
</script>
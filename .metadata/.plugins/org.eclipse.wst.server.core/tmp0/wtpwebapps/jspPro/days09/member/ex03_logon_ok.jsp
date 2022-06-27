<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <h3>ex03_logon_ok.jsp</h3> -->
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	// 로그인 성공 가정
	session.setAttribute("member", id);
	
	// 무조건 로그인 성공하면 메인 페이지 X
	// 글 목록   요청 URL   ->   로그인  X  -> 로그인 페이지 _ok.jsp
	// 글 쓰기 
	// 기타
	String location;
	
	
	location = "/jspPro/days09/ex03.jsp";   // 메인 페이지
	
	String referer = (String)session.getAttribute("referer");
	if( referer != null ){
		location = referer;
		session.removeAttribute("referer");
	}
	
	response.sendRedirect(location);
%>
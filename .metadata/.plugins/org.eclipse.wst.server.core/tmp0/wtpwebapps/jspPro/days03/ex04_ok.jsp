<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");

// DB 회원테이블 id/passwd 로그인 성공, 실패
String location = "ex04.jsp";
if(id.equals("홍길동") && passwd.equals("1234") ){
	// 로그인 성공
	// 리다이렉트 할 때 한글 파라미터는 반드시 인코딩을 해야 한다.
	// String encodedValue = URLEncoder.encode(value, "utf-8°);
	String pid = URLEncoder.encode( id , "UTF-8");
	location += "?id=" + pid + "&ok";
}else {
	// 로그인 실패
	location += "?error";
}

response.sendRedirect( location );
%>
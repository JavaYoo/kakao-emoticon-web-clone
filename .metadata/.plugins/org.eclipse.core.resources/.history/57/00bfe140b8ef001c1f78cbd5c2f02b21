<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 16. - 오전 9:03:08</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>days03/ex01.jsp</h3>

<pre>
p 88 ~ jsp 기본 객체 : request 객체	헤더 정보를 얻어올 수 있다.

http 프로토콜의 헤드 부가적인 정보 ( - 웹 브라우저 종류, 선호하는 언어 등등 )
[ 표 3.6 ]
1) String getHeader(name) 				지정한 이름의 헤더 값을 반환
2) Enumeration getHeaders(name) 		지정한 이름의 헤더 목록 반환
3) Enumeration getHeadersName(); 	모든 헤더의 이름 반환
4) int getIntHeader(name) 					지정한 헤더의 값을 정수 값으로 반환
5) long getDateHeader(name) 			지정한 헤더의 값을 시간값을 반환 ( 1970.1.1 ~ ms)

src/main/java
	ㄴ days02 패키지
		ㄴ Now.java 서블릿클래스
		ㄴ DeptDTO.java DTO 클래스
		
		컴파일 -> Now.class, DeptDTO.class 클래스파일 -> 실행
		WEB-INF 폴더 안에 classes 폴더
		웹 사이트 개발 -> 웹 서버 배포( 게시 )

</pre>

<h3>헤드 목록 출력</h3>

<ol>
<%
	// 스크립트릿 - 자바코딩
	Enumeration<String> en = request.getHeaderNames();
	while( en.hasMoreElements() ){
		String headerName = en.nextElement();
		//out.println("<li>" + headerName + "</li>");
		String headerValue = request.getHeader(headerName);
	
%>
 <li><%= headerName %> : <%= headerValue %></li>
<%
	}// while
%>
</ol>

</body>
</html>
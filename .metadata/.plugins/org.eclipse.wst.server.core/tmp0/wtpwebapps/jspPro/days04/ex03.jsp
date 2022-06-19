<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오후 12:48:28</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex03.jsp</h3>

<pre>
p98 Chapter 04
1. JSP 요청 ->
		<- 응답 ( 출력 버퍼 )
		처리과정
		
	브라우저 [ 주소창 : http://~~~/ex01.jsp ]  -> 톰캣 ( 웹서버 + WAS )  -> ex01.jsp
                                                                                                  jasper     서블릿 클래스
                                                                                                  ex01_jsp.java
                                                                                                  
                                                                                                  
                                                                                                  ex01_jsp.java
                                               <- 응답 웹 컨테이너 [ 서블릿 객체 ]
	
</pre>
<%
	// 스크립트릿
	// jspService(){
	// 지역변수
	String name = "hong";
	// >
%>

<%!
	// 선언문
	// 서블릿 클래스의 멤버변수 ( 필드 ), 메서드 선언
	int age = 20;

	public String getname(){
		return "홍길동";
	}
%>


<%
	// 스크립트릿
	for( int i = 1; i <= 10; i++){
		//out.append( "<li>" + i + "</li>");
%>

	<li><%= i %></li>

<%

	}
%>
<!-- 
 
게시판 글 + 첨부 파일
이클립스 내에서 배포했을 때의 위치 : 첨부파일 업로드
C:\Class\JSPClass
	\.metadata
		\.plugins
			\org.eclipse.wst.server.core
				\tmp0
					\work
						\Catalina
							\localhost\jspPro\org\apache\jsp\days04

ex03.jsp -> 서블릿 클래스    ->   컴파일 class
                  ex03_jsp.java     ex03_jsp.class


ex03.jsp ->    서블릿 + 서블릿 객체

             <- 응답                    출력버퍼[............]
[............]
[............]
[............]
[............]
채워서 보낸다.
 -->
<%
%>

</body>
</html>
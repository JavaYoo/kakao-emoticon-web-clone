<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 15. - 오전 9:57:01</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02.jsp</h3>

<pre>
p 498
1. 서블릿 ( Servlet ) ? java 언어를 사용하는 웹 기술( 서블릿, jsp )
2. 서블릿 구현 방법 ( 과정 )
	1) [ 서블릿 규약 ]을 따르는 자바 클래스 선언
		ㄱ. 자바 클래스의 접근 지정자 : public
		ㄴ. javax.servlet.http.HttpServlet 클래스 상속
		ㄷ. service() , get() , post() 오버라이딩해야 한다
	2) 자바 코딩 -> 컴파일 -> 클래스 파일 생성
	3) 클래스 파일 ( .class )을 [ WEB-INF/classes ]폴더에 넣어둬야 한다.
	
		2) + 3) 이클립스 툴을 사용하면 자동으로 컴파일 + classes 폴더 넣는다.
		
	4) web.xml ( DD 파일 )에 서블릿 등록
	5) 톰캣 ( 웹 서버 ) 실행
	6) 요청URL -> 서블릿 응답
	
3. 예제

4. 서블릿 2.5 : 서블릿을 web/xml 등록 사용 가능
	서블릿 3.0 : @WebSerlvet 어노테이션 사용하면 웹 컨테이너(톰캣)이 자동 서블릿 등록
	서블릿 버전 ? WAS 서버 버전 따라서 달라지고
	Tomcat 8.5 > jsp 2.3 , Servlet 4.0, EL 3.0 사용한다
						
</pre>

<a href="http://localhost/jspPro/days01/now">/days01/now</a><br>
<a href="http://localhost/jspPro/test/now">/test/now</a><br>
<a href="http://localhost/jspPro/test/now">/test/today</a><br>
<a href="http://localhost/jspPro/now.html">/now.htm</a><br>

</body>
</html>












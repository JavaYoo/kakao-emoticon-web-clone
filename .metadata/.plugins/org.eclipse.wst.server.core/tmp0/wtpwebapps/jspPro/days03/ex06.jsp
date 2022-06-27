<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hwan/2022/06/16-10:35 AM</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex06</h3>


<pre>
	MVC 패턴
	M 로직 처리
	V 화면 출력
	C 컨트롤
    1. a 링크 태그 선언
    2. 서블릿 생성 - GET 방식 요청 / doGet() 오버라이딩
    	days03.ScottDept
    	서블릿 등록 - 1) web.xml  2) @webServlet 어노테이션
    	
    	doGet(){
    		부서정보를 ArrayList 저장
    		// 로직 처리
    		포워딩
    		
    		// 화면 출력
    		// ex06_dept.jsp
    	}

    프로젝트 진행할 떄 모든 경로는 상대경로 X, /jspPro 컨텍스트 패스부터 경로 설정
    웹의 경로 구분자는 /
    요청 URL : /jspPro/scott/dept -> 서블릿 선언 url pattern = "????"
    3. ex06_dept.jsp 포워딩 부서정보 select 태그 출력
    
    4. ex06_dept.jsp -> select 태그에서 부서 선택
    5. ScottEmp.java 서블릿 호출
    	선택한 부서의 사원 정보 ArrayList 저장 후
    6. ex06_emp.jsp 포워딩시켜서 해당 부서원 정보를 출력 ..
    
    어떤 요청 url 						-> 	서블릿
    /jspPro/scott/dept 					url-pattern = ""
    /jspPro/board/write
</pre>

<%
    String contextPath = request.getContextPath(); // /jspPro
%>

<a href="<%=contextPath%>/scott/dept">scott.dept(부서 정보)</a>

</body>
</html>
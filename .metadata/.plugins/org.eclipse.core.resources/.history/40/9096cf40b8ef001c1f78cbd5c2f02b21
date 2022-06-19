<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// jsp 스크립트 : 
		// [ 스크립트릿 ] - 자바 코딩
		// 표현식
		// 선언문
	// http://localhost/jspPro/days01/ex05_02.jsp?n=10
	// n 파라미터가 넘어오지 않으면 request.getParameter("n") =>  null
	// [ jsp 기본 객체 ]
	int pn = Integer.parseInt(request.getParameter("n"));

	String content = "";
	int sum = 0;
	for(int i = 1; i <= pn ; i++){
		content += i + " + ";
		sum += i;
	}
	content += " = " + sum;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 14. - 오후 4:37:37</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05_02.jsp</h3>

<!-- action="" 자기 자신 URL 호출 -->
<!-- 
정수를 입력하고 엔터를 치면 서브밋 ( 서버 제출 ) -> ex05_02.jsp 응답

form의 action 속성을 설정하지 않았기에 같은 URL 호출

http://localhost/jspPro/days01/ex05_02.jsp?n=10
-->
<form>
정수 입력 : <input type="text" name="n">
<br>
<span></span>
<p id="demo">
<%=content %>
</p>
</form>

<script>
	$(function(){
		$(":text:first")
			.focus()
			.select();
		
		$("form").submit(function(){
			var pattern = /^\d+$/
			// js test()
			if( pattern.test( $(":text:first").val() ) ){		// 유효성 검사
				return ;
			}
			// 유효성 검사 실패
			//$("form > span")
			$("span", "form")
				.text("Not Valid")
				.css("color","red")
				.show()
				.fadeOut(3000);
			event.preventDault()
			
		});
		
	});
</script>

</body>
</html>










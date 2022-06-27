<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 20. - 오전 9:17:05</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>viewErrormessage.jsp</h3>

요청 처리 과정에서 에러가 발생했습니다.<br>
빠른 시간 내에 문제를 해결하도록 하겠습니다.

<p>
<!-- jsp 9가지 기본 내장 객체 : exception -->
에러 타입 : <%= exception.getClass().getName() %><br>
에러 메시지 : <%= exception.getMessage() %><br>
</p>

</body>
</html>
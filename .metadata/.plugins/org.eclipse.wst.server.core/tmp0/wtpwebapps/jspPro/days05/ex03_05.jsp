<%@page import="java.util.Date"%>
<%@page import="days05.MemberInfo"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 20. - 오전 11:45:08</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex03_05.jsp</h3>

<!-- jsp 액션태그 중 : useBean 사용 -->
<jsp:useBean id="info" class="days05.MemberInfo" scope="page"></jsp:useBean>

<jsp:setProperty property="*" name="info"/>

<jsp:setProperty property="registerDate" name="info" value='<%= new Date() %>' />

<h3>MemberInfo 정보 출력</h3>
아이디 : <%= info.getId() %><br>
이름 : <%= info.getName() %><br>
비번 : <%= info.getPasswd() %><br>
등록일 : <%= info.getRegisterDate() %><br>
이메일 : <%= info.getEmail() %><br>


</body>
</html>
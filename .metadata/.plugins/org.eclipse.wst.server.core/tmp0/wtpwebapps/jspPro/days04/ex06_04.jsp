<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오후 4:35:54</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex06_04.jsp</h3>

a name : <%= application.getAttribute("name") %><br>
s age : <%= session.getAttribute("age") %><br>
r addr : <%= request.getAttribute("addr") %><br>
p color : <%= pageContext.getAttribute("color") %><br>

</body>
</html>
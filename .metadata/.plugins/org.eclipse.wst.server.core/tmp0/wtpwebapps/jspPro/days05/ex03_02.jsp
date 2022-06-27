<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 20. - 오전 11:37:07</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex03_02.jsp</h3>

<pre>
	꼭 지킬 것 : id 속성값은 MemberInfo 클래스의 필드명과 반드시 동일하게 설명
</pre>
	private String id;
	private String passwd;
	private String name;
	private Date registerDate;
	private String email;
<form action="ex03_05.jsp" method="get">
	<table border="1" style="width:400px">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" value="admin"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value="관리자"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="passwd" value="1234"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" value="admin@naver.com"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit">
				<input type="reset">
			</td>
		</tr>
	</table>
</form>

</body>
</html>












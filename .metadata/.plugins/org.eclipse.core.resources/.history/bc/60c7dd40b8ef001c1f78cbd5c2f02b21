<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	// &pet=dog&pet=pig
	String [] pets = request.getParameterValues("pet");
%>
<%
	//http://localhost/jspPro/days02/ex07_ok.jsp
	// ?[name]=&[gender]=m&[pe]t=dog&pet=pig
	
	Enumeration<String> en = request.getParameterNames();
	while( en.hasMoreElements() ){
		String pname = en.nextElement();
%>
	<li><%= pname %></li>
<%
	}
%>

<%
		  //pname  pvalue   entry
	Map<String, String[]> map = request.getParameterMap();
	Set<Entry<String, String[]>> set = map.entrySet();
	Iterator<Entry<String, String[]>> ir = set.iterator();
	while(ir.hasNext()){
		Entry<String, String[]> entry = ir.next();
		String k = entry.getKey();
		String [] v = entry.getValue();
%>
	<li type="circle"><%= String.format("key=%s, value=%s<br>", k ,Arrays.toString( v )) %></li>
<%
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 15. - 오후 4:08:32</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex07_ok.jsp</h3>

> 이름 : <%= name %><br>
> 이름 : ${ param.name }<br>

> 성별 : <%= gender %><br>
> 성별 : ${ param.gender }<br>

성별 : 
<%-- 
	<input type="radio" name="gender" value="m" <%= gender.equals( "m") ? "checked" : "" %>> 남자
	<input type="radio" name="gender" value="f"  <%= gender.equals( "f") ? "checked" : "" %>> 여자<br>
--%>
	<input type="radio" name="gender" value="m"> 남자
	<input type="radio" name="gender" value="f" > 여자<br>
	
좋아하는 동물
	<%= Arrays.toString(pets) %>
	<br>
	<input type="checkbox" name="pet" value="dog">개
	<input type="checkbox" name="pet" value="cat">고양이
	<input type="checkbox" name="pet" value="pig">돼지
	<br>
	
<script>
	// pets 배열
	// Arrays.toString(pets) == "[dog,pig]"
	
	$(":checkbox").each(function(i,element){
		// console.log(element.value)
		if("<%= Arrays.toString(pets) %>".indexOf( element.value) != -1 ){
			element.checked = true;
		}
	});
</script>

<script>
	<%-- 
	$(":radio[name=gender]").each(function(i,element){
		if(element.value == "<%= gender%>"){
			element.checked = true;
			//$(element).attr("checked",true);
		}
	});
	 --%>
	// ?
	<%-- $(":radio[name=gender]").val("<%= gender %>").attr("checked",true); --%>
	$(":radio[value='<%= gender%>']").prop("checked" , true);
	
</script>

</body>
</html>










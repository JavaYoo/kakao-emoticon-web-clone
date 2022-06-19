<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 14. - 오후 3:59:46</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05.jsp</h3>

<pre>
js , jquery 사용해서 정수를 입력하고 엔터를 치면 demo 라는 p 요소에 출력
클라이언트(브라우저)에서 출력
</pre>

정수 입력 : <input type="text" name="n" value="5">
<p id="demo">
1 + 2 + 3 + 4 + 5 = 15
</p>

<script>
	$(function(){
		$(":text[name=n]").keyup(function(event){
			if(event.which == 13){
				var n = $(this).val()
				var sum = 0
				
				$("#demo").text("");
				
				for (var i = 1; i <=  n; i++) {
					$("#demo").text(function(index , text){
						// index 변수
						// text 변수 : #demo text
						// console.log( index + " / " + text + " : " + i );
						return (i != n) ? text + i + " + " : text + i
					})
					sum += i;
				}//for
				$("#demo").text(function(index,text){
					return text + " = " + sum;
				})
			}//if
		})
		
		
		/*     1. 
		$(":text[name=n]").keyup(function(event){
			if(event.which == 13){
				var n = $(this).val()
				var sum = 0
				var content = ""
				for (var i = 1; i <=  n; i++) {
					if( i != n ){
					content += i + " + "
					}else content += i
					sum += i;
				}//for
				//$("#demo").html()
				content += " = "+sum
				$("#demo").text(content)
			}//if
		})
		*/
	});
</script>


</body>
</html>














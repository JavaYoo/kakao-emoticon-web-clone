<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 20. - 오전 9:43:23</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02.jsp</h3>

<pre>
  p 155 Chapter 07 [ 페이지 모듈화 ]와 요청 흐름 제어 ***
  1.  jsp: 접두사     JSP액션태그
      ***   jsp:include  액션태그     포함한다. 
      
      웹사이트 :   공통 영역 부분
                          TOP
                          LEFT
                          FOOTER(BOTTOM)
                          
                          중복 제거하기 위해서 별로의  top.jsp, left.jsp, footer.jsp
                          
                          jsp:incldue  액션태그를 사용해서 각각의 웹페이지에 추가.. 
      
      -- 10:15 쉬는 시간..--
      모든 웹페이지에 공통적인 부분 :  top.bottom
              webapp/layout/
                                       top.jsp
                                       bottom.jsp
                                       
               webapp/days05/layout
                                              left.jsp
                                               right.jsp                        
      
      ex02_template.jsp
      
  2. 지시자
     page 지시자    
     taglib 지시자
    *** include 지시자
    
   ****** jsp:include와   include 지시자의 차이점 이해 -> 사용
   
   모든 웹 사이트에 공통 적인 변수 필요하다면   jsp -> include 지시자로 모든 웹 페이지 추가.
   예)
    
  3. jsp:forward 액션태그
  4. 기본 객체를 이용한 값 전달 ( 개념 ) - 스프링 이해   
</pre>

</body>
</html>
















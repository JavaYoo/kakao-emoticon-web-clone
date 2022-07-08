<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 28.-오후 10:38:53</title>
<link rel="shortcut icon" href="../icons/e_16x16.ico">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/header/sidemenu.css" >
</head>
<body>

	<!-- 로그인 안한경우 -->
	<div class="wrap_menu">
		<div class="inner_menu">
			<a href="#" class="wrap_profile"><span class="wrap_thumb"><span
					class="inner_thumb"><img class="thumb_user"
						src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
						alt="사용자"></span></span><span class="wrap_name"><span
					class="txt_name">로그인<span class="ico_comm ico_logarr_type1"></span></span></span></a><strong
				class="screen_out">나의 이용정보</strong>
			<ul class="list_mymenu">
				<li id="menu1"><a class="link_mymenu" href="#"><span
						class="ico_comm ico_buy"></span><span class="txt_mymenu">구매내역</span></a></li>
				<li id="menu1"><a class="link_mymenu" href="#"><span
						class="ico_comm ico_gift"></span><span class="txt_mymenu">선물함</span></a></li>
				<li id="menu1"><a class="link_mymenu" href="#"><span
						class="ico_comm ico_coupon"></span><span class="txt_mymenu">쿠폰함</span></a></li>
				<li id="menu1"><a class="link_mymenu" href="#"><span
						class="ico_comm ico_good"></span><span class="txt_mymenu">좋아요</span></a></li>
			</ul>
			<strong class="screen_out">kakao emoticon shop 메뉴</strong>
			<ul class="list_nav">
				<li><a class="link_nav" href="/">홈</a></li>
				<li><a class="link_nav" href="/item/new">신규</a></li>
				<li><a class="link_nav" href="/item/hot">인기</a></li>
				<li><a class="link_nav" href="/item/style">스타일</a></li>
			</ul>
			<ul class="list_aside">
				<li><a class="link_aside" href="/notices">새소식</a></li>
				<li><a class="link_aside" href="/faq">자주묻는 질문</a></li>
				<li><a href="#" class="link_aside" target="_blank" onclick="numbermodal();">이모티콘
						일련번호 입력하기</a></li>
			</ul>
		</div>
		<div class="wrap_copyright">
			<a class="link_shop" href="/"><span class="ico_comm ico_menulogo">카카오이모티콘
					샵</span></a><a href="https://www.kakaocorp.com" class="link_corp">@ kakao
				Corp</a>
		</div>
	</div>
	<div class="dimmed_menu" style="display:none"></div> 
		<div class="alert_layer" id="alert_logon">
	               <div class="inner_layer">
	                  <div class="layer_body">
	                     <strong class="txt_info">로그인 후 이용해주세요.</strong>
	                  </div>
	                  <div class="layer_foot">
	                     <button class="btn_s btn_m" id="alert_close">취소</button>
	                     <button class="btn_g btn_m">로그인</button>
	                  </div>
	               </div>
	               <button type="button" class="btn_close">
	                  <span class="ico_comm ico_orderclose" id="btn_layer_close">닫기</span>
	               </button>
	            </div>
			<div class="dimmed_layer dim_over"></div>


<script>

// 누르면 로그인 창 뜨도록 배경은 어둡게 
$(".list_mymenu").click(function() {
	$(".dimmed_layer").css("display", "block");
    $("#alert_logon").css("display", "block");
});

//어두운 부분 누르면 다시 돌아감
$(".dimmed_layer").on("click", function() {
	$(".alert_layer").css("display", "none");
	$(".dimmed_layer").css("display","none");
	
}); 

</script>

<script>

// x 버튼
 $("#btn_layer_close").click(function() {
    $(".dimmed_layer").css("display", "none");
    $("#alert_logon").css("display", "none");
 });
//취소 버튼
 $("#alert_close").click(function() {
    $(".dimmed_layer").css("display", "none");
    $("#alert_logon").css("display", "none");
 });
 
</script>

<script>

/* 로그인 버튼 누르면 로그인 페이지로 */
$(".btn_g").click(function() {
	location.href="../mypage/purchases.jsp";  
});
$(".wrap_profile").click(function() {
	location.href="../mypage/purchases.jsp";  
});
</script>

<script>
//이메일을 보내줌?
function numbermodal(){
	window.open("../sidemenu/numbermodal.jsp" ,"numbermodal", "width=380,height=650");
}
</script>


</body>
</html>




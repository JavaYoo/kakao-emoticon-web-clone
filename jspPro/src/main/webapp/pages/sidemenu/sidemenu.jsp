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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
dl, ul, ol, menu, li {
    list-style: none;
}
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, textarea, p, blockquote, th, td, input, select, button {
    margin: 0;
    padding: 0;
}
button {
    border: 0 none;
    background-color: rgba(0,0,0,0);
    cursor: pointer;
}
.ico_comm {
    display: inline-block;
    overflow: hidden;
    font-size: 1px;
    line-height: 0;
    color: rgba(0,0,0,0);
    vertical-align: top;
    background: url(https://t1.kakaocdn.net/estoreweb/images/20220421091219/ico_comm_220415.png) no-repeat;
    -webkit-background-size: 830px 230px;
    background-size: 830px 230px;
}

.wrap_menu {
	position: fixed;
	top: 0;
	z-index: 113;
	width: 290px;
	height: 100%;
	padding-bottom: 54px;
	background: #fff;
	box-sizing: border-box;
}

.wrap_menu .inner_menu {
	overflow-y: auto;
	height: 100%;
	padding: 18px 0 12px;
	box-sizing: border-box;
}
.wrap_menu .wrap_profile {
    position: relative;
    display: -webkit-box;
    display: flex;
    align-items: center;
    -webkit-box-align: center;
    padding: 12px 20px;
}
a {
    color: #191919;
    text-decoration: none;
}
.wrap_menu .wrap_profile .wrap_thumb {
    overflow: hidden;
    position: relative;
    display: inline-block;
    width: 56px;
    height: 56px;
    padding: 0;
}
.wrap_thumb:after {
    display: block;
    position: absolute;
    z-index: 1;
    top: 50%;
    left: 50%;
    width: 75px;
    height: 75px;
    background-size: 100% 100%;
    -moz-transform: translate(-50%, -50%);
    -webkit-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    content: "";
}
.wrap_menu .wrap_profile .wrap_thumb:after {
    background-image: url(https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_mask56.svg);
}

.wrap_thumb {
    overflow: hidden;
    margin: 0 auto;
    padding: 1px;
}
.wrap_thumb .inner_thumb {
    overflow: hidden;
    display: block;
    height: 100%;
}
.wrap_thumb .thumb_user {
    width: 100%;
    height: auto;
}
.wrap_menu .wrap_profile .wrap_name {
    -webkit-box-flex: 1;
    flex: 1;
    display: block;
    overflow: hidden;
    padding-left: 12px;
}
.wrap_menu .wrap_profile .wrap_name .txt_name {
    display: block;
    overflow: hidden; 
    font-size: 18px;
    font-family: "notokr-bold";
    font-weight: bold;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
}
.wrap_menu .wrap_profile .wrap_name .ico_logarr_type1 {
    margin: 8px 0 0 5px;
}
 @media (max-width: 767px){
.ico_comm {
    background-image: url(https://t1.kakaocdn.net/estoreweb/images/20220421091219/m/ico_comm_220415.png);
	}
} 

.ico_logarr_type1 {
    width: 10px;
    height: 10px;
    background-position: -290px -40px;
}


.wrap_menu .list_mymenu {
    display: table;
    width: 100%;
    padding: 0 11px;
    box-sizing: border-box;
}

.wrap_menu .list_mymenu li {
    display: table-cell;
    width: 25%;
    padding: 12px 0;
    text-align: center;
}
.wrap_menu .list_mymenu .link_mymenu {
    position: relative;
    display: block;
}
.ico_buy {
    width: 30px;
    height: 30px;
    background-position: -210px -60px;
}
.wrap_menu .list_mymenu .txt_mymenu {
    display: block;
    margin-top: 6px;
    font-size: 13px;
    line-height: 19px;
}
.ico_gift {
    width: 30px;
    height: 30px;
    background-position: -240px -60px;
}
.ico_coupon {
    width: 30px;
    height: 30px;
    background-position: -270px -60px;
}
.ico_good {
    width: 30px;
    height: 30px;
    background-position: -300px -60px;
}

.screen_out {
    overflow: hidden;
    position: absolute;
    width: 0;
    height: 0;
    line-height: 0;
    text-indent: -9999px;
}
strong {
    font-weight: normal;
}
.wrap_menu .list_nav {
    margin-top: 9px;
    padding-top: 13px;
    border-top: 1px solid rgba(0,0,0,.04);
}
.wrap_menu .list_nav li {
    height: 50px;
}
.wrap_menu .list_nav .link_nav {
    display: block;
    height: 100%;
    padding: 14px 20px 0;
    font-size: 16px;
    color: #191919;
    box-sizing: border-box;
}
.wrap_menu .list_nav .link_nav:hover {
	background-color: rgba(0, 0, 0, .02)
}
.wrap_menu .list_aside {
    margin-top: 12px;
    padding-top: 12px;
    border-top: 1px solid rgba(0,0,0,.04);
}
.wrap_menu .list_aside .link_aside:hover {
	background-color: rgba(0, 0, 0, .02)
}
.wrap_menu .list_aside li {
    height: 40px;
}
.wrap_menu .list_aside .link_aside {
    display: block;
    height: 100%;
    padding: 11px 20px 0;
    font-size: 14px;
    color: #7f7f7f;
    box-sizing: border-box;
}
.wrap_menu .wrap_copyright {
    position: relative;
    height: 54px;
    padding: 9px 10px 0;
    border-top: 1px solid rgba(0,0,0,.08);
    box-sizing: border-box;
}
.wrap_menu .wrap_copyright .link_shop {
    display: inline-block;
    padding: 7px 10px 5px;
}
.ico_menulogo {
    width: 136px;
    height: 20px;
    background-position: -210px -90px;
}
.wrap_menu .wrap_copyright .link_corp {
    position: absolute;
    top: 12px;
    right: 10px;
    display: inline-block;
    padding: 6px 10px 5px;
    font-family: "helvetica","helvetica neue";
    color: #999;
}

.dimmed_layer {
   display:none;
    position: fixed;
    left: 0;
    right: 0;
    top: 0;
    z-index: 140;
    width: 100%;
    height: 100%;
    background-color: #191919;
    opacity: .3;
}
.dimmed_layer.dim_over {
    z-index: 201;
}

.alert_layer {
   display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    z-index: 210;
    transform: translate(-50%, -50%);
    min-height: 151px;
    -ms-transform: translate(-50%, -50%);
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    min-width: 344px;
    max-width: 344px;
    background-color: #fff;
    border-radius: 10px;
    background-color: #fff;
    box-shadow: 0 2px 10px 0 rgb(0 0 0 / 6%);
}

.alert_layer .inner_layer {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-justify-content: space-between;
    justify-content: space-between;
    padding: 24px 20px 0;
    box-sizing: border-box;
}

.alert_layer .layer_body {
    min-height: 31px;
    padding-top: 12px;
}

.alert_layer .layer_body .txt_info {
    display: block;
    padding-right: 30px;
    line-height: 22px;
    font-size: 15px;
}

.alert_layer .layer_foot {
    height: 85px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding: 20px 0;
    box-sizing: border-box;
}

.alert_layer .layer_foot .btn_s {
    margin-right: 3px;
}

.btn_m {
    height: 45px;
    line-height: 47px;
    font-size: 14px;
}

.btn_s {
    display: block;
    width: 100%;
    background-color: #f5f5f5;
    font-size: 15px;
    line-height: 42px;
    text-align: center;
    border-radius: 6px;
    border: 1px solid rgba(0,0,0,0);
}
.btn_g {
    display: block;
    width: 100%;
    background-color: #fee500;
    font-size: 15px;
    line-height: 42px;
    text-align: center;
    border-radius: 6px;
    border: 1px solid rgba(0,0,0,0);
}

.alert_layer .btn_close {
    position: absolute;
    top: 9px;
    right: 5px;
    padding: 15px;
    font-size: 0;
    line-height: 0;
}

.ico_orderclose {
    width: 15px;
    height: 15px;
    background-position: -630px -70px;
}

</style>
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




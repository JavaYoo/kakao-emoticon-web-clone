<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 30.-오후 2:38:29</title>
<%String email = (String)session.getAttribute("email"); %>
<link rel="shortcut icon" type="image/x-icon" href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypageusedcoupons.css?ver=1"> --%>
<style>
.main_mypage {
	max-width: 1024px;
	margin: 0 auto;
	padding: 0 40px 32px;
	box-sizing: border-box
}

.main_mypage .tit_mypage .txt_tit {
	display: inline-block;
	padding: 40px 0 21px;
	font-size: 18px;
	line-height: 27px;
	font-weight: normal;
	font-family: "notokr-bold", sans-serif
}

.main_mypage .tit_mypage .list_tit {
	padding: 40px 0 21px;
	font-size: 18px;
	line-height: 27px;
	font-weight: normal
}

.main_mypage .tit_mypage .tit_num {
	display: inline-block;
	margin-left: 4px;
	font-size: 18px;
	line-height: 22px;
	font-family: "helvetica", "helvetica neue";
	font-weight: bold;
	color: #fa4637
}

.main_mypage .list_tit li {
	display: inline-block;
	margin-right: 20px
}

.main_mypage .list_tit li.on .link_tit {
	font-family: "notokr-bold", sans-serif;
	line-height: 27px;
	color: #191919
}

.main_mypage .list_tit li.on .num_tit {
	font-weight: bold;
	color: #fa4637
}

.main_mypage .list_tit li .num_tit {
	display: inline-block;
	margin: 0 0 0 4px;
	font-family: "helvetica", "helvetica neue";
	line-height: 27px
}

.main_mypage .list_tit li .link_tit {
	color: #999
}

.main_mypage .list_item {
	border-top: 1px solid #3b3b3b
}

.main_mypage .list_item:after {
	display: block;
	overflow: hidden;
	clear: both;
	width: 0;
	height: 0;
	content: ""
}

.main_mypage .list_item .item_unit {
	float: left;
	width: 50%;
	padding-top: 30px;
	box-sizing: border-box;
	padding-bottom: 30px
}

.main_mypage .list_item .item_unit:nth-child(odd) {
	position: relative;
	padding-right: 16px
}

.main_mypage .list_item .item_unit:nth-child(odd):after {
	position: absolute;
	width: 200%;
	height: 1px;
	left: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, .04);
	content: ""
}

.main_mypage .list_item .item_unit:nth-child(even) {
	padding-left: 16px
}

.main_mypage .list_item .date_item {
	display: inline-block;
	margin-bottom: 14px;
	font-size: 15px;
	line-height: 19px;
	font-family: "helvetica", "helvetica neue"
}

.main_mypage .list_item .area_itemlist:after {
	display: block;
	clear: both;
	height: 0;
	content: ""
}

.main_mypage .list_item .item_list {
	float: left;
	width: 50%;
	overflow: hidden
}

.main_mypage .list_item .item_list+.item_list {
	margin-bottom: 14px
}

.main_mypage .list_item .item_list dt {
	display: inline-block;
	width: 48px;
	font-size: 13px;
	line-height: 21px;
	color: #7f7f7f
}

.main_mypage .list_item .item_list dd {
	display: inline-block;
	width: calc(100% - 53px);
	box-sizing: border-box;
	padding-left: 14px;
	font-size: 13px;
	line-height: 21px;
	color: #3b3b3b
}

.main_mypage .list_item .item_list dd.txt_price {
	color: #fa4637
}

.main_mypage .list_item .item_list .txt_num {
	font-family: "helvetica", "helvetica neue"
}

.main_mypage .list_item .area_item .link_item {
	display: table;
	height: 100%;
	width: 100%;
	box-sizing: border-box;
	padding: 12px 24px;
	background-color: #fafafa;
	border-radius: 6px
}

.main_mypage .list_item .area_item .link_item:hover {
	background-color: #f5f5f5
}

.main_mypage .list_item .area_item .link_item:hover>.area_tit .txt_tit {
	font-family: "notokr-bold", sans-serif;
	border-bottom: 1px solid #000
}

.main_mypage .list_item .area_item .link_item .ico_expand3 {
	position: absolute;
	bottom: 0;
	right: 0
}

.main_mypage .list_item .area_item .area_tit {
	display: table-cell;
	overflow: hidden;
	vertical-align: middle;
	width: calc(100% - 64px - 16px);
	max-width: 200px;
	box-sizing: border-box
}

.main_mypage .list_item .area_item .area_tit .tit_product {
	position: relative;
	display: inline-block;
	max-width: 100%;
	box-sizing: border-box;
	font-weight: normal
}

.main_mypage .list_item .area_item .area_tit .tit_product .area_icons {
	float: right
}

.main_mypage .list_item .area_item .area_tit .tit_product .ico_new {
	margin: 4px 0 0 4px
}

.main_mypage .list_item .area_item .area_tit .tit_product .ico_sound {
	margin: 5px 0 0 4px
}

.main_mypage .list_item .area_item .area_tit .tit_product .txt_tit {
	display: block;
	overflow: hidden;
	height: 20px;
	margin-bottom: 2px;
	white-space: nowrap;
	text-overflow: ellipsis;
	box-sizing: border-box;
	border-bottom: 1px solid rgba(0, 0, 0, 0);
	font-size: 16px;
	line-height: 22px;
	word-wrap: break-word;
	font-family: "notokr-regular"
}

.main_mypage .list_item .area_item .area_tit .txt_author {
	display: block;
	margin-top: -3px;
	color: #7f7f7f;
	font-size: 13px;
	line-height: 19px;
	font-family: "notokr-regular";
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis
}

.main_mypage .list_item .area_item .area_itememoticon {
	display: table-cell;
	position: relative;
	width: 64px;
	min-width: 64px;
	max-width: 64px;
	padding: 0 0 0 16px;
	vertical-align: middle
}

.main_mypage .list_item .area_item .img_emot {
	display: inline-block;
	width: 100%
}

.main_mypage .list_item.list_gift .area_item {
	clear: both
}

.main_mypage .txt_account {
	float: right;
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	box-sizing: border-box;
	max-width: calc(100% - 160px);
	font-size: 13px;
	line-height: 22px;
	color: #3b3b3b;
	word-wrap: break-word
}

.main_mypage .txt_account .account_id {
	margin-left: 3px;
	font-family: "notokr-bold", sans-serif
}

.main_mypage .list_coupon {
	position: relative;
	display: inline-block;
	width: 100%
}

.main_mypage .list_coupon .item_unit {
	padding: 32px 0
}

.main_mypage .list_coupon .item_unit:nth-child(odd):after {
	position: absolute;
	width: 200%;
	height: 1px;
	left: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, .04);
	content: ""
}

.main_mypage .list_coupon .area_coupons {
	display: inline-block;
	width: 64px;
	max-width: 64px;
	min-width: 64px;
	vertical-align: middle
}

.main_mypage .list_coupon .info_detail {
	display: inline-block;
	width: calc(100% - 68px);
	box-sizing: border-box;
	padding-left: 16px
}

.main_mypage .list_coupon .area_tit {
	display: inline-block;
	overflow: hidden;
	padding-left: 16px;
	vertical-align: middle;
	width: calc(100% - 68px);
	max-width: 378px;
	box-sizing: border-box
}

.main_mypage .list_coupon .tit_product {
	position: relative;
	display: inline-block;
	max-width: 100%;
	box-sizing: border-box;
	font-weight: normal;
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	box-sizing: border-box;
	border-bottom: 1px solid rgba(0, 0, 0, 0);
	font-size: 16px;
	line-height: 22px;
	word-wrap: break-word;
	font-family: "notokr-regular";
	margin-bottom: 4px
}

.main_mypage .list_coupon .desc_coupon {
	font-size: 13px;
	line-height: 19px;
	color: #7f7f7f;
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis
}

.main_mypage .list_coupon .desc_coupon .txt_en {
	font-family: "helvetica", "helvetica neue"
}

.main_mypage .list_used .list_item .item_unit {
	margin-left: 0px
}

.main_mypage .list_used .list_item .item_unit:nth-child(even) {
	margin-left: -4px
}

.main_mypage .list_used .area_paging {
	margin-top: 14px;
	text-align: center
}

.main_mypage .list_used .area_paging [class^=btn_] {
	width: 48px;
	padding: 10px 19px
}

.main_mypage .list_used .area_paging [class^=btn_]:disabled {
	opacity: 0;
	cursor: default
}

.main_mypage .list_used .area_paging .paging_info {
	font-size: 14px;
	line-height: 15px;
	font-family: "helvetica", "helvetica neue";
	color: #999
}

.main_mypage .list_used .area_paging .paging_info .info_now {
	color: #000
}

.main_mypage .list_notice {
	padding: 30px 0
}

.main_mypage .list_notice li {
	position: relative;
	font-size: 13px;
	line-height: 18px;
	color: #7f7f7f;
	margin-bottom: 8px;
	padding-left: 11px
}

.main_mypage .list_notice li:before {
	content: "";
	width: 3px;
	height: 3px;
	position: absolute;
	left: 0;
	top: 7px;
	border-radius: 50%;
	background-color: #ccc
}

.list_used .list_item>li.item_loading {
	display: none
}

.list_used .list_item>li.item_loadingall {
	display: none
}

.main_mypage .list_item+.spinner_wrapper {
	height: auto;
	min-height: initial
}

.main_mypage .list_item+.spinner_wrapper .area_spinner {
	padding: 30px 0 20px
}

.main_mypage .list_item+.spinner_wrapper .area_spinner .spinner {
	width: 30px;
	height: 30px
}

.list_like .spinner_like {
	height: calc(100vh - 593px);
	line-height: 0;
	height: 0
}

.list_like .spinner_like .spinner_wrapper {
	height: calc(100vh - 593px);
	min-height: 252px
}

.list_like .spinner_like .spinner_wrapper .spinner {
	width: 52px;
	height: 52px
}

@media ( max-width : 1023px) {
	.main_mypage {
		padding: 0 40px 20px
	}
	.main_mypage .list_item .area_item .link_item:hover {
		background-color: #fafafa
	}
	.main_mypage .list_item .area_item .link_item:hover>.area_tit .txt_tit {
		font-family: "notokr-regular", sans-serif;
		border-color: rgba(0, 0, 0, 0)
	}
	.main_mypage .list_item .item_list dd {
		width: calc(100% - 53px)
	}
	.main_mypage .list_item .area_itemlist .item_list {
		float: none;
		width: 100%
	}
	.area_mypage .list_tab li:hover .link_tab {
		background-color: rgba(0, 0, 0, .1);
		color: #fff;
		font-family: "notokr-regular", sans-serif
	}
	.area_mypage .list_tab li:hover .link_tab .num_tab {
		color: #fff;
		font-family: "helvetica", "helvetica neue";
		font-weight: normal
	}
	.area_mypage .list_tab li.on:hover .link_tab {
		background-color: #fff;
		color: #4774c1;
		font-family: "notokr-bold", sans-serif
	}
	.area_mypage .list_tab li.on:hover .link_tab .num_tab {
		font-weight: bold;
		color: #fa4637
	}
}

.list_like {
	margin-top: 30px
}

@media ( min-width : 768px)and (max-width: 1024px) {
	.main_mypage .list_item .item_unit {
		padding: 28px 0 28px
	}
	.main_mypage .list_item .item_unit:nth-child(odd) {
		padding-right: 16px
	}
	.main_mypage .list_item .item_unit:nth-child(even) {
		padding-left: 16px
	}
}

@media ( max-width : 767px) {
	.wrap_empty .main_mypage .tit_mypage {
		height: 62px
	}
	.wrap_empty .main_mypage .tit_mypage .txt_tit {
		display: block;
		visibility: hidden
	}
	.area_mypage .area_tabbnr {
		display: block;
		height: 110px;
		padding: 0
	}
	.area_mypage .tabbnr_header {
		display: block;
		overflow: hidden;
		width: 100%;
		padding-top: 23px
	}
	.area_mypage .tit_tab {
		padding: 0 24px;
		margin-bottom: 8px;
		font-size: 18px;
		line-height: 27px
	}
	.area_mypage .list_tab {
		display: table;
		table-layout: fixed
	}
	.area_mypage .list_tab li {
		display: table-cell;
		padding-right: 8px;
		margin: 0;
		white-space: nowrap
	}
	.area_mypage .list_tab li:first-child {
		padding-left: 24px
	}
	.area_mypage .list_tab li:last-child {
		padding-right: 24px
	}
	.area_mypage .list_tab .link_tab {
		height: 32px;
		padding: 0 14px;
		font-size: 13px;
		line-height: 33px;
		box-sizing: border-box
	}
	.area_mypage .area_empty {
		height: calc(100% - 172px)
	}
	.main_mypage {
		padding: 0 24px 0
	}
	.main_mypage .tit_mypage .txt_tit {
		display: none;
		padding: 20px 0 0px;
		font-size: 15px;
		line-height: 22px
	}
	.main_mypage .tit_mypage .list_tit {
		padding: 18px 0 17px;
		font-size: 15px
	}
	.main_mypage .tit_mypage .list_tit li .num_tit {
		margin-top: 5px;
		line-height: 1
	}
	.main_mypage .list_used .list_item .item_unit:nth-child(even) {
		margin-left: 0
	}
	.main_mypage .list_item {
		border-top: 0px;
		margin-bottom: 10px
	}
	.main_mypage .list_item .area_item .link_item {
		padding: 12px 12px 12px 18px
	}
	.main_mypage .list_item .area_item .area_itememoticon {
		padding: 0 0 0 14px
	}
	.main_mypage .list_item .area_item .area_tit {
		max-width: 162px
	}
	.main_mypage .list_item .item_unit {
		float: none;
		width: 100%;
		position: relative
	}
	.main_mypage .list_item .item_unit:nth-child(odd) {
		padding-right: 0px
	}
	.main_mypage .list_item .item_unit:nth-child(odd):after {
		position: absolute;
		width: 100%;
		height: 1px;
		left: 0px;
		bottom: 0;
		background-color: rgba(0, 0, 0, .04);
		content: ""
	}
	.main_mypage .list_item .item_unit:nth-child(even) {
		padding-left: 0
	}
	.main_mypage .list_item .item_unit:after {
		position: absolute;
		width: 100%;
		height: 1px;
		left: 0px;
		bottom: 0;
		background-color: rgba(0, 0, 0, .04);
		content: ""
	}
	.main_mypage .list_item .item_unit:first-child {
		padding-top: 10px
	}
	.main_mypage .list_item.list_gift .item_unit:first-child, .main_mypage .list_item.list_coupon .item_unit:first-child
		{
		padding-top: 10px
	}
	.main_mypage .txt_account {
		max-width: calc(100% - 120px)
	}
	.main_mypage .list_coupon .item_unit {
		padding: 22px 0
	}
	.main_mypage .list_coupon .info_detail {
		padding-left: 14px
	}
	.main_mypage .list_coupon .area_tit {
		max-width: 651px
	}
	.main_mypage .list_used .area_paging {
		display: none
	}
	.main_mypage .list_notice {
		padding: 14px 0 18px
	}
	.area_mypage .area_empty {
    height: calc(100% - 172px);
    }
    .wrap_empty .area_empty {
    height: calc(100% - 80px);
    padding: 80px 0;
	}
	.wrap_empty .area_empty .img_empty {
    width: 105px;
    height: 105px;
	}
	.wrap_empty .area_empty .tit_empty {
	    font-size: 16px;
	}
	.wrap_empty .area_empty .desc_empty {
    padding: 0 24px;
    font-size: 12px;
    line-height: 16px;
	}

}
.wrap_empty .area_empty {
    display: table;
    width: 100%;
    padding: 100px 0;
}
.wrap_empty .area_empty .inner_area {
    display: table-cell;
    vertical-align: middle;
    text-align: center;
}
.wrap_empty .area_empty .img_empty {
    width: 124px;
    height: 124px;
}
.wrap_empty .area_empty .tit_empty {
    display: block;
    margin: 12px 0 4px;
    font-weight: normal;
    font-family: "notokr-bold",sans-serif;
    font-size: 18px;
    line-height: 24px;
}
.wrap_empty .area_empty .desc_empty {
    font-size: 13px;
    line-height: 20px;
    color: #7f7f7f;
}

</style> 
</head>
<body>

	<div id="kakaoIndex"
		style="overflow: hidden; position: absolute; left: -9999px; width: 0; height: 1px; margin: 0; padding: 0;">
		<a href="#dkBody">본문 바로가기</a> <a href="#dkGnb">메뉴 바로가기</a>
	</div>
	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="default head_bnr head_etc">
			<div class="wrap_topbnr"
				style="background-color: rgb(247, 245, 184);">
				<div class="inner_topbnr">
					<a
						href="https://my.kakao.com/product/EMOTICON001?t_src=emoticon&amp;t_ch=webstore&amp;t_obj=web_gnb_banner"
						class="link_bnr"><span class="txt_info"
						style="color: rgb(0, 0, 0);">이모티콘 플러스 웹에선 평생 할인!</span><span
						class="unit_coupon"><img
							src="https://item.kakaocdn.net/dn/vxL2v/btrGuosfE2C/VTwAo3RmMCFZDnUjMgkX2K/img.png"
							class="img_coupon" alt="띠배너이미지"></span></a>
				</div>
				<button class="btn_close" aria-label="띠배너닫기">
					<span class="ico_comm ico_closew"></span>
				</button>
			</div>
			<div id="kakaoHead" class="emoticon_head">
				<div class="wrap_menu" style="display:none">
					<div class="inner_menu" >
						<span class="wrap_profile"><span class="wrap_thumb"><span
								class="inner_thumb"><img class="thumb_user"
									src="https://p.kakaocdn.net/th/talkp/wnbP8oS1NG/DktFxeIGJ6gExSbCOp5ON1/mwlke4_110x110_c.jpg"
									alt="사용자"></span></span><span class="wrap_name"><span
								class="txt_name">김기태</span><span class="txt_email">gitty58@naver.com</span></span></span><strong
							class="screen_out">나의 이용정보</strong>
						<ul class="list_mymenu">
							<li><a class="link_mymenu" href="<%=contextPath %>/purchases.do?id=email"><span
									class="ico_comm ico_buy"></span><span class="txt_mymenu">구매내역</span></a></li>
							<li><a class="link_mymenu" href="<%=contextPath %>/received.do?id=email"><span
									class="ico_comm ico_gift"></span><span class="txt_mymenu">선물함</span></a></li>
							<li><a class="link_mymenu" href="<%=contextPath %>/coupons.do?id=email"><span
									class="ico_comm ico_menunew">신규</span><span
									class="ico_comm ico_coupon"></span><span class="txt_mymenu">쿠폰함
									<c:if test="${not empty couponsList}">
									<em class="txt_count">${fn:length(couponsList)}<span class="screen_out">개</span></em></c:if></span></a></li>
							<li><a class="link_mymenu" href="<%=contextPath %>/likes.do?id=email"><span
									class="ico_comm ico_good"></span><span class="txt_mymenu">좋아요<em
										class="txt_count">2<span class="screen_out">개</span></em></span></a></li>
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
							<li><a href="#" class="link_aside">로그아웃</a></li>
						</ul>
					</div>
					<div class="wrap_copyright">
						<a class="link_shop" href="/"><span class="ico_comm ico_menulogo">카카오이모티콘
								샵</span></a><a href="https://www.kakaocorp.com" class="link_corp">@ kakao
							Corp</a>
							
					</div>
				</div> 
				  <div class="dimmed_menu" style="display:none"></div> 
				  
				<div class="k_head">
					<button class="link_menu" id="side_open">
						<span class="ico_comm ico_menu">사이드메뉴 열기</span><span
							class="ico_comm ico_new">new</span>
					</button>
					<a class="link_home" href="/"><span class="ico_comm ico_home">홈으로 이동</span></a>
					<h1 class="tit_logo">
						<a class="link_thome" href="/"><span class="ico_comm ico_logo">kakao emoticon shop</span></a><span
							class="ico_comm ico_logo">kakao emoticon shop</span>
					</h1>
					<strong class="tit_cont"></strong>
					<button class="link_search">
						<span class="ico_comm ico_search">검색하기</span>
					</button>
					<button class="link_my">
						<span class="wrap_thumb"><span class="inner_thumb"><img
								class="thumb_user"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
								width="28px" height="28px" alt="사용자"></span></span>
					</button>
					<!-- <div class="tooltip_layer">
						<div class="area_tooltip">
							<p class="layer_tooltip">
								<a class="link_tooltip" href="/mypage/coupons"><strong>항상 전상품 20% 할인</strong> 쿠폰이 발급되었습니다.</a>
							</p>
							<button class="btn_close" aria-label="툴팁닫기">
								<span class="ico_comm ico_close"></span>
							</button>
						</div>
					</div> -->
				</div>
				<nav id="kakaoGnb">
					<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
					<ul class="list_gnb">
						<li class=""><a class="link_gnb" href="/">홈</a></li>
						<li class=""><a class="link_gnb" href="/item/new">신규</a></li>
						<li class=""><a class="link_gnb" href="/item/hot">인기</a></li>
						<li class=""><a class="link_gnb" href="/item/style">스타일</a></li>
					</ul>
				</nav>
			</div>
			
			<!-- 마이페이지 메뉴 -->
			<div id="kakaoContent" class="cont_mypage">
				<!-- 사용한 쿠폰 없는 경우 -->
				<c:if test="${empty usedcouponsList }">
					<div class="area_mypage  wrap_empty">
					<div class="header_mypage">
						<div class="area_tabbnr">
							<div class="tabbnr_header">
								<h3 class="tit_tab">
									마이페이지<img class="img_bnrbg"
										src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_bg_my.png"
										alt="마이페이지 배너이미지">
								</h3>
								<strong class="screen_out">마이페이지 메인 메뉴</strong>
								<ul class="list_tab" style="transform: translate(0px, 0px);">
									<li class=""><a class="link_tab" href="<%=contextPath %>/purchases.do?id=email">구매내역</a></li>
									<li class=""><a class="link_tab"
										href="<%=contextPath %>/received.do?id=email">선물함</a></li>
									<li class="on"><a class="link_tab" href="<%=contextPath %>/coupons.do?id=email">쿠폰함<span
											class="num_tab">1</span><span class="screen_out">선택됨</span></a></li>
									<li class=""><a class="link_tab" href="<%=contextPath %>/likes.do?id=email">좋아요<span
											class="num_tab">2</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="main_mypage">
						<h4 class="tit_mypage">
							<strong class="screen_out">쿠폰 메뉴</strong>
							<ul class="list_tit">
								<li><a class="link_tit" href="/mypage/coupons">보유쿠폰<span
										class="num_tit">${fn:length(couponsList)}</span><span class="screen_out">선택됨</span></a></li>
								<li class="on"><a class="link_tit" href="/mypage/coupons/used">사용한
										쿠폰<span class="screen_out">선택됨</span>
								</a></li>
							</ul>
						</h4>
						<div class="area_empty">
							<div class="inner_area">
								<img class="img_empty"
									src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/empty_coupon.png"
									alt="사용한 쿠폰 없음 이미지"><strong class="tit_empty">사용한
									쿠폰이 없습니다.</strong>
								<p class="desc_empty">진행중인 쿠폰 이벤트를 확인해보세요!</p>
							</div>
						</div>
					</div>	
				</div>
			</c:if>
			
			<!-- 사용한 쿠폰 있는 경우 -->
			<c:if test="${not empty usedcouponsList}">
				<div class="area_mypage">
					<div class="header_mypage">
						<div class="area_tabbnr">
							<div class="tabbnr_header">
								<h3 class="tit_tab">마이페이지<img class="img_bnrbg"
										src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_bg_my.png"
										alt="마이페이지 배너이미지">
								</h3>
								<strong class="screen_out">마이페이지 메인 메뉴</strong>
								<ul class="list_tab">
									<li class=""><a class="link_tab" href="<%=contextPath %>/purchases.do?id=email">구매내역</a></li>
									<li class=""><a class="link_tab"
										href="<%=contextPath %>/received.do?id=email">선물함</a></li>
									<li class="on"><a class="link_tab" href="<%=contextPath %>/coupons.do?id=email">쿠폰함<span
											class="num_tab">1</span><span class="screen_out">선택됨</span></a></li>
									<li class=""><a class="link_tab" href="<%=contextPath %>/likes.do?id=email">좋아요</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="main_mypage">
						<h4 class="tit_mypage">
							<strong class="screen_out">쿠폰 메뉴</strong>
							<ul class="list_tit">
								<li><a class="link_tit" href="<%=contextPath %>/coupons.do?id=email">보유쿠폰<span
										class="num_tit">${fn:length(couponsList)}</span><span class="screen_out">선택됨</span></a></li>
								<li class="on"><a class="link_tit"
									href="<%=contextPath %>/usedcoupons.do?id=email">사용한 쿠폰<span
										class="num_tit">${fn:length(usedcouponsList)}</span><span class="screen_out">선택됨</span></a></li>
							</ul>
						</h4>
						<strong class="screen_out">사용한쿠폰 본문</strong>
						<div class="list_used">
							<ul class="list_item list_coupon">
								<c:forEach items="${usedcouponsList}" var="dto">
								<li class="item_unit"><div class="area_coupons">
										<span class="ico_coupons ico_usedcoupon${dto.co_percent}"> ${dto.co_percent}% 쿠폰</span>
									</div>
									<div class="area_tit">
										<strong class="tit_product"><span class="txt_tit">${dto.co_name}</span></strong>
										<p class="desc_coupon">
											<span class="txt_en">${dto.co_usedate}</span> 사용</p>
									</div></li>
								</c:forEach>
							</ul>
							<!-- 페이징 처리 -->
							<!-- <div class="area_paging">
								<button class="btn_prev" disabled="">
									<span class="ico_comm ico_prev">이전</span>
								</button>
								<span class="paging_info"><em class="info_now">1</em>/4</span>
								<button class="btn_next">
									<span class="ico_comm ico_next">다음</span>
								</button>
							</div> -->
						</div>
						<ul class="list_notice">
							<li>쿠폰은 <b>이모티콘샵(e.kakao.com)과 카톡 PC버전</b>에서만 쓸 수 있습니다.</li>
							<li>쿠폰은 중복으로 사용할 수 없으며, 결제 횟수당 1개만 사용 가능합니다.</li>
							<li>일부 카테고리 상품은 할인쿠폰 적용이 불가능합니다.</li>
							<li>쿠폰 이벤트는 별도의 사전 고지 없이 종료될 수 있습니다.</li>
						</ul>
					</div>
					</div>
				
				</c:if>
			</div>
			
			
			<div id="kakaoFoot" class="foot_group ">
				<div class="area_footer">
					<h2 class="screen_out">서비스 이용정보</h2>
					<div class="service_info">
						<a class="link_service" href="/policy" target="_blank"
							rel="noreferrer">이용약관</a><a class="link_service"
							href="https://billing-web.kakao.com/kbill/terms/service"
							target="_blank" rel="noreferrer">유료이용안내</a><a
							class="link_service" href="https://www.kakao.com/policy/privacy"
							target="_blank" rel="noreferrer"><strong class="dlnk_txt">개인정보처리방침</strong></a><a
							class="link_service" href="https://bizemoticon.kakao.com"
							target="_blank" rel="noreferrer">기업고객</a><a class="link_service"
							href="https://cs.kakao.com/requests?category=278&amp;locale=ko&amp;node=30555&amp;service=94"
							target="_blank" rel="noreferrer">문의하기</a><a class="link_service"
							href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1208147521"
							target="_blank" rel="noreferrer">공정위사업자정보</a><a
							class="link_service" href="https://www.kakaocorp.com/page/"
							target="_blank" rel="noopener noreferrer"><strong
							class="dlnk_txt">(주) 카카오</strong></a>
						<p class="desc_service">카카오 이모티콘샵에서 판매되는 콘텐츠의 저작권은 콘텐츠 제공자에게 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 처벌될 수 있습니다.</p>
					</div>
					<div class="wrap_info">
						<strong class="tit_info"><a class="link_info"
							href="https://www.kakaocorp.com/page/" target="_blank"
							rel="noopener noreferrer">(주) 카카오</a></strong>
						<dl class="list_info">
							<div class="unit_info">
								<dt>대표</dt>
								<dd>남궁훈</dd>
								<dt>사업자등록번호</dt>
								<dd>
									<span class="txt_en">120-81-47521</span>
								</dd>
							</div>
							<div class="unit_info">
								<dt>통신판매업신고번호</dt>
								<dd>제2015-제주아라-0032호</dd>
							</div>
						</dl>
						<dl class="list_info">
							<div class="unit_info">
								<dt>주소</dt>
								<dd>제주특별자치도 제주시 첨단로 <span class="txt_en">242</span>(영평동)</dd>
							</div>
							<div class="unit_info">
								<dt>호스팅사업자</dt>
								<dd>(주)카카오</dd>
								<dt>고객센터</dt>
								<dd>
									<span class="txt_en">1577-3754</span>
								</dd>
							</div>
							<div class="unit_info">
								<dt>메일</dt>
								<dd>
									<span class="txt_en">help.notice@kakaocorp.com</span>
								</dd>
							</div>
						</dl>
					</div>
					<div class="area_movetop">
						<button type="button" class="btn_movetop">
							<span class="ico_comm ico_movetop">위로 이동</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<script src="js/sidemenu.js"></script>	
<script src="js/snum.js"></script>	

</body>
</html>
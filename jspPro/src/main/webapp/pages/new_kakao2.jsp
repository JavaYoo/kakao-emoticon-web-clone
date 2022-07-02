<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>쌍용 이모티콘 #</title>
<link rel="shortcut icon " type = "image/x-icon" href = "SiSt.ico">
<!-- <link rel="shortcut icon" href="../assets/icons/e_16x16.ico" /> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="header_footer.css?ver=1">
<link rel="stylesheet" href="new_body.css">
<link rel="stylesheet" href="header_style.css" />
</head>
<body>

	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="">
			<header class="header">
		<div class="header__inner">
			<button class="btn-open-sidemenu" aria-label="사이드메뉴 열기">
	            <span class="ico-common ico-menu"></span>
	            <!-- 로그인 하면 이거 생기도록 -->
	            <!-- <span class="ico-menu-new"></span> -->
          	</button>
          <h1 class="header__title">
            <a class="header__link" href="../home/home.jsp">
              <span class="ico-common ico-logo">카카오 이모티콘샵</span>
            </a>
          </h1>
          <button class="btn-open-search" aria-label="검색 열기">
          	<!-- 나중에 다시 원래대로 해보기... -->
            <!-- <span class="ico-common ico-search"></span> -->
            <img alt="검색" src="../images/search.png" style="width: 30px; height: 30px;">
          </button>
          <!-- 로그인 X : 로그인 페이지로 이동  -->
          <!-- 로그인 O : 아래 profile 토글  -->
          <button class="btn-open-profile" aria-label="사용자 프로필 열기">
            <img src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png" alt="사용자 프로필" style="width: 26px; height: 26px;"/>
          </button>
        </div>
        <!-- Search -->
        <div class="search-box search-box--hide">
          <div class="search-box__inner">
            <h3 class="screen-out">이모티콘 검색어 입력</h3>
            
            <form class="search-box__form" action="search.jsp">
              <div class="search-box__form__inner">
                <input class="search-box__input" type="search" name="q" placeholder="이모티콘을 검색해보세요!" autocomplete="off" />
                <button class="btn-remove-input btn-remove-input--hide" type="button" aria-label="검색 입력값 지우기">
                	<span class="ico-common ico-remove"></span>
                </button>
	                <button class="btn-search" type="submit" aria-label="이모티콘 검색하기">
	                	<!-- <span class="ico-common ico-search"></span> -->
	                	<img alt="검색" src="../images/search.png" style="width: 35px; height: 35px;">
	                </button>
              </div>
            </form>
            
            <button class="btn-cancel" aria-label="이모티콘 검색 취소">취소</button>
          </div>
        </div>
        <!-- Profile -->
        <div class="profile profile--hide">
          <h3 class="screen-out">사용자 프로필 정보</h3>
          <!-- 로그인 한 경우, 회원 이미지, 이름, 이메일 불러오기  -->
          <img class="profile__image" src="" alt="사용자 프로필" />
          <div class="profile__name"></div>
          <div class="profile__email"></div>
          <button class="btn-logout" aria-label="로그아웃">로그아웃</button>
        </div>
        <!-- Nav -->
        <nav class="nav">
          <h3 class="screen-out">메인메뉴</h3>
          <div class="nav__inner">
            <ul class="nav__list">
            	<!--  nav__item--active 이게 밑줄 (li태그 클래스로 추가) -->
              <li class="nav__item"><a class="nav__link" href="../home/home.jsp">홈</a></li>
              <li class="nav__item"><a class="nav__link" href="../new/new.jsp">신규</a></li>
              <li class="nav__item"><a class="nav__link" href="../hot/hot.jsp">인기</a></li>
              <li class="nav__item"><a class="nav__link" href="../style/style.jsp">스타일</a></li>
            </ul>
          </div>
        </nav>
        <!-- Overlay -->
        <div class="overlay overlay--hide"></div>
	</header>
	
	<script>
	/* 검색 관련 */
	
	// 검색 버튼 클릭 
	$(".btn-open-search").on("click", function() {
		$(".kakao-wrap").addClass('kakao-wrap--overlaid');
		$(".search-box").removeClass("search-box--hide");
		$(".btn-open-search img").css("display", "none");
		$(".btn-open-search").css("cursor", "default");
		$(".overlay").removeClass("overlay--hide");
		$(".overlay").addClass("overlay-search");
		$(".btn-remove-input").removeClass("btn-remove-input--hide");
		$(".btn-remove-input span").css("display", "none");
	});
	
	//검색창 밖 클릭시 검색창 제거 + 입력했던 값 제거
	$(".overlay").on("click", function() {
		$(".search-box").addClass("search-box--hide");
		$(".btn-open-search img").css("display", "block");
		$(".btn-open-search").css("cursor", "pointer");
		$(".overlay").addClass("overlay--hide");
		$(".overlay").removeClass("overlay-search");
		$(".search-box__input").val("");
	});
	
	//검색 삭제 버튼
	$(".search-box__input").on("keyup", function() {
		$(".btn-remove-input span").css("display", "");
	});
	
	//검색 창 활성화
	$(".search-box__input").on("focusin", function() {
		$(this).css({"border":"2px solid #015ecc", "border-radius":"10px"});
	});
	
	// 검색어 삭제 
	$(".btn-remove-input span").on("click", function() {
		$(".search-box__input").val("");
		$(".btn-remove-input span").css("display", "none");
	});
</script>
	<div></div>
			<div id="kakaoContent" class="cont_home">
				<div class="area_newtab">
					<div class="area_tabbnr">
						<h3 class="tit_tab">
							<img class="img_bnrtit"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_tit_new.png"
								alt="배너 텍스트 이미지"><img class="img_bnrbg"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_bg_new.png"
								alt="배너이미지">
						</h3>
					</div>
					<ul class="list_new">
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/cute-and-kind-bubble-ver-6"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">예쁜
												말풍선톡 5</span></strong><span class="txt_author">무릎이 임선경</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="예쁜 말풍선톡 5 상세"
							href="/t/cute-and-kind-bubble-ver-6"><ul
									class="area_newemoticon">
									<li><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed15b3f4e3c2033bfd702a321ec6eda72c"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deedf604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed4022de826f725e10df604bf1b9725cfd"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed9f5287469802eca457586a25a096fd31"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed8b566dca82634c93f811198148a26065"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed82f3bd8c9735553d03f6f982e10ebe70"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/illusion-rabbit-ver-21"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">망붕이는
												다이어트 중!</span></strong><span class="txt_author">EB</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="망붕이는 다이어트 중! 상세"
							href="/t/illusion-rabbit-ver-21"><ul class="area_newemoticon">
									<li><img
										src="https://item.kakaocdn.net/do/cc0c879ed29760309a46128de11e01a08f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/cc0c879ed29760309a46128de11e01a015b3f4e3c2033bfd702a321ec6eda72c"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/cc0c879ed29760309a46128de11e01a0f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/cc0c879ed29760309a46128de11e01a04022de826f725e10df604bf1b9725cfd"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/cc0c879ed29760309a46128de11e01a09f5287469802eca457586a25a096fd31"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/cc0c879ed29760309a46128de11e01a08b566dca82634c93f811198148a26065"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/cc0c879ed29760309a46128de11e01a09f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/cc0c879ed29760309a46128de11e01a082f3bd8c9735553d03f6f982e10ebe70"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/doodle-party"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">아무낙서
												대잔치</span></strong><span class="txt_author">쥐냥</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="아무낙서 대잔치 상세"
							href="/t/doodle-party"><ul class="area_newemoticon">
									<li><img
										src="https://item.kakaocdn.net/do/25560c7f088ff5ff1c4384963f469b788f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/25560c7f088ff5ff1c4384963f469b788f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/25560c7f088ff5ff1c4384963f469b78f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/25560c7f088ff5ff1c4384963f469b78f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/25560c7f088ff5ff1c4384963f469b789f5287469802eca457586a25a096fd31"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/25560c7f088ff5ff1c4384963f469b789f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://item.kakaocdn.net/do/25560c7f088ff5ff1c4384963f469b789f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/25560c7f088ff5ff1c4384963f469b789f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/baby-tiger-myoya"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">아기
												호랑이 묘야</span></strong><span class="txt_author">샵팬픽</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="아기 호랑이 묘야 상세"
							href="/t/baby-tiger-myoya"><ul class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/f07bcbab993791c9c161914817189cd58f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/f07bcbab993791c9c161914817189cd5f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/f07bcbab993791c9c161914817189cd59f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/f07bcbab993791c9c161914817189cd59f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/is-kkongji-really-that-cute"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">나
												꽁쥐, 내가 그렇게 귀여운가?</span></strong><span class="txt_author">KMJ</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="나 꽁쥐, 내가 그렇게 귀여운가? 상세"
							href="/t/is-kkongji-really-that-cute"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/81c02aa2927bdc2b95f71ab9149c6c688f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/81c02aa2927bdc2b95f71ab9149c6c68f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/81c02aa2927bdc2b95f71ab9149c6c689f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/81c02aa2927bdc2b95f71ab9149c6c689f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/jakzi-is-a-country-mouse"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">작찌는
												시골찌</span></strong><span class="txt_author">쯔니</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="작찌는 시골찌 상세"
							href="/t/jakzi-is-a-country-mouse"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/c86ef2c7ef54ab51d82e069a9de186638f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/c86ef2c7ef54ab51d82e069a9de18663f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/c86ef2c7ef54ab51d82e069a9de186639f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/c86ef2c7ef54ab51d82e069a9de186639f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/sweet-fruit-cat-cats-melody"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">과즙팡팡
												후르츠 캣츠멜로디</span></strong><span class="txt_author">캣츠멜로디</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="과즙팡팡 후르츠 캣츠멜로디 상세"
							href="/t/sweet-fruit-cat-cats-melody"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/dffd32de069353f1b03724e250ea5a3f8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/dffd32de069353f1b03724e250ea5a3ff604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/dffd32de069353f1b03724e250ea5a3f9f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/dffd32de069353f1b03724e250ea5a3f9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/the-consonant-villain"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">한글
												초성 풀어 읽는 거 킹받네</span></strong><span class="txt_author">라밍</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="한글 초성 풀어 읽는 거 킹받네 상세"
							href="/t/the-consonant-villain"><ul class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/75155e92ef89bbe27c1125a83be2f20f8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/75155e92ef89bbe27c1125a83be2f20ff604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/75155e92ef89bbe27c1125a83be2f20f9f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/75155e92ef89bbe27c1125a83be2f20f9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/coupons-for-our-friendship"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">쿠폰
												우리42</span></strong><span class="txt_author">ⓒ 코나아이</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="쿠폰 우리42 상세"
							href="/t/coupons-for-our-friendship"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/7359a79155a690321e8bec2f4f6334268f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/7359a79155a690321e8bec2f4f633426f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/7359a79155a690321e8bec2f4f6334269f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/7359a79155a690321e8bec2f4f6334269f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/im-just-a-potato-2"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">전
												감잔데요..? 2</span></strong><span class="txt_author">오찡</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="전 감잔데요..? 2 상세"
							href="/t/im-just-a-potato-2"><ul class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/7934a754017b05996d0363dd78899c778f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/7934a754017b05996d0363dd78899c77f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/7934a754017b05996d0363dd78899c779f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/7934a754017b05996d0363dd78899c779f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/pompochis-energetic-day"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">폼포치의
												기운찬 하루</span></strong><span class="txt_author">효닝</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="폼포치의 기운찬 하루 상세"
							href="/t/pompochis-energetic-day"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/a315d3131f75044eb15c402b0602d2dc8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/a315d3131f75044eb15c402b0602d2dcf604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/a315d3131f75044eb15c402b0602d2dc9f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/a315d3131f75044eb15c402b0602d2dc9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/the-daily-life-of-panda-mouse-5"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">판다마우스의
												소소한 일상.5</span></strong><span class="txt_author">하야루비</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="판다마우스의 소소한 일상.5 상세"
							href="/t/the-daily-life-of-panda-mouse-5"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/23d12baf17ea25276dc5aff5c6ab75c58f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/23d12baf17ea25276dc5aff5c6ab75c5f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/23d12baf17ea25276dc5aff5c6ab75c59f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/23d12baf17ea25276dc5aff5c6ab75c59f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/baby-i-love-you2"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">사랑해
												쟈기냥냥냥2</span></strong><span class="txt_author">콩꼬물</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="사랑해 쟈기냥냥냥2 상세"
							href="/t/baby-i-love-you2"><ul class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/f195faa87b21e29edde2efdaf18e7d1b8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/f195faa87b21e29edde2efdaf18e7d1bf604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/f195faa87b21e29edde2efdaf18e7d1b9f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/f195faa87b21e29edde2efdaf18e7d1b9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/i-have-too-much-money"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">언니는
												돈밖에 없어</span></strong><span class="txt_author">리치리치</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="언니는 돈밖에 없어 상세"
							href="/t/i-have-too-much-money"><ul class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/d090994867b8bb921b7090bf626251bb8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/d090994867b8bb921b7090bf626251bbf604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/d090994867b8bb921b7090bf626251bb9f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/d090994867b8bb921b7090bf626251bb9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/warm-spring-girl-and-croaking-frog"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">따뜻한
												봄소녀와 개굴개굴</span></strong><span class="txt_author">달콘</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="따뜻한 봄소녀와 개굴개굴 상세"
							href="/t/warm-spring-girl-and-croaking-frog"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/1757bd5906bd5b5ee8bdf85b707b71f78f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/1757bd5906bd5b5ee8bdf85b707b71f7f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/1757bd5906bd5b5ee8bdf85b707b71f79f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/1757bd5906bd5b5ee8bdf85b707b71f79f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/far-away-from-mommy"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">엄마가
												그리운 타지생활러</span></strong><span class="txt_author">세지니어스</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="엄마가 그리운 타지생활러 상세"
							href="/t/far-away-from-mommy"><ul class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/dbb377fd88fdb422adce342bfa937f518f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/dbb377fd88fdb422adce342bfa937f51f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/dbb377fd88fdb422adce342bfa937f519f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/dbb377fd88fdb422adce342bfa937f519f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/inseparable-mom-daughter-daughter"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">엄마랑
												찰떡 붙고싶다 #딸</span></strong><span class="txt_author">더하기</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="엄마랑 찰떡 붙고싶다 #딸 상세"
							href="/t/inseparable-mom-daughter-daughter"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/28fac4307895659f0a3473da8e76ead08f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/28fac4307895659f0a3473da8e76ead0f604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/28fac4307895659f0a3473da8e76ead09f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/28fac4307895659f0a3473da8e76ead09f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/my-cute-rice-cake-fiancee-girl"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">찹쌀뽀짝
												나의 피앙새 (여친용)</span></strong><span class="txt_author">로한</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="찹쌀뽀짝 나의 피앙새 (여친용) 상세"
							href="/t/my-cute-rice-cake-fiancee-girl"><ul
									class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/3bf9fe90bc01d765911e2fbcbe60796e8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/3bf9fe90bc01d765911e2fbcbe60796ef604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/3bf9fe90bc01d765911e2fbcbe60796e9f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/3bf9fe90bc01d765911e2fbcbe60796e9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/noisy-parrots"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">시끄러운
												앵무새들</span></strong><span class="txt_author">옥튜디오</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="시끄러운 앵무새들 상세"
							href="/t/noisy-parrots"><ul class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/566ed43adc95fb0f5c823e8c481c1d7f8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/566ed43adc95fb0f5c823e8c481c1d7ff604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/566ed43adc95fb0f5c823e8c481c1d7f9f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/566ed43adc95fb0f5c823e8c481c1d7f9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
						<li class=""><div class="link_new new_tit">
								<a class="link_new" href="/t/clingy-baby-koala"><div
										class="area_tit">
										<strong class="tit_product"><span class="txt_tit">베이비
												코알라는 어리광쟁이</span></strong><span class="txt_author">DK</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="베이비 코알라는 어리광쟁이 상세"
							href="/t/clingy-baby-koala"><ul class="area_newemoticon">
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/3deb60cc8589a9e483ccbfcadec48fed8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/3deb60cc8589a9e483ccbfcadec48fedf604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/3deb60cc8589a9e483ccbfcadec48fed9f5287469802eca457586a25a096fd31"
										class="img_emot img_hover" alt=""></li>
									<li><img
										src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
										class="img_emot img_default" alt=""><img
										src="https://item.kakaocdn.net/do/3deb60cc8589a9e483ccbfcadec48fed9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_hover" alt=""></li>
								</ul></a></li>
					</ul>
					<div></div>
				</div>
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
						<p class="desc_service">카카오 이모티콘샵에서 판매되는 콘텐츠의 저작권은 콘텐츠 제공자에게
							있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 처벌될 수 있습니다.</p>
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
								<dd>
									제주특별자치도 제주시 첨단로 <span class="txt_en">242</span>(영평동)
								</dd>
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
</body>
</html>
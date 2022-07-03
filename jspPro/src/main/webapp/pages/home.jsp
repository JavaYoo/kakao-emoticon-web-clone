<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>쌍용 이모티콘 #</title>
<link rel="shortcut icon " type = "image/x-icon" href = "SiSt.ico">
<!-- <link rel="shortcut icon" href="../assets/icons/e_16x16.ico" /> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="home_body.css?ver=1">
</head>
<body>

	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="">
			<div id="kakaoHead" class="emoticon_head">
				<div class="k_head">
					<button class="link_menu" id="side_open">
						<span class="ico_comm ico_menu">사이드메뉴 열기</span>
					</button>
					<a class="link_home" href="/"><span class="ico_comm ico_home">홈으로
							이동</span></a>
					<h1 class="tit_logo">
						<a class="link_thome" href="/"><span class="ico_comm ico_logo">kakao
								emoticon shop</span></a><span class="ico_comm ico_logo">kakao
							emoticon shop</span>
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
				</div>
				<nav id="kakaoGnb">
					<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
					<ul class="list_gnb">
						<li class="on"><a class="link_gnb" href="/">홈</a></li>
						<li class=""><a class="link_gnb" href="/item/new">신규</a></li>
						<li class=""><a class="link_gnb" href="/item/hot">인기</a></li>
						<li class=""><a class="link_gnb" href="/item/style">스타일</a></li>
					</ul>
				</nav>
			</div>
			<div id="kakaoContent" class="cont_home">
				<div class="area_hometab">
					<div class="wrap_banner">
						<div class="box_banner">
							<strong class="screen_out">프로모션 및 이벤트 배너</strong>
							<div class="slick-slider list_banner slick-initialized">
								<div class="slick-list">
									<div class="slick-track"
										style="width: 770px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
										<div data-index="0"
											class="slick-slide slick-active slick-current" tabindex="-1"
											aria-hidden="false" style="outline: none; width: 770px;">
											<div>
												<a
													href="https://emoticon.kakao.com/pages/store/grouplist/mkt_onlyplus_220614?t_src=emoticon&amp;t_ch=webstore&amp;t_obj=web_main_banner"
													class="link_banner" target="_blank" rel="noreferrer"
													aria-label="링크배너"
													style="background-color: rgb(255, 172, 199);"><img
													src="https://item.kakaocdn.net/dn/bmmC30/btrFf3c0HhO/xXhKLHCSBlMdBev6mJABpK/img.gif"
													class="img_banner" alt=""></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="wrap_newemoticon">
						<h3 class="tit_section">
							<a class="link_menu" href="/item/new">신규 이모티콘<span
								class="ico_comm ico_logarr"></span></a>
						</h3>
						<div class="area_listproduct">
							<div class="list_product">
								<div class="list_unit">
									<a class="link_emot" href="/t/cute-and-kind-bubble-ver-6"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/fbb45c03321dd074db4d6aa18823f1f7617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/fbb45c03321dd074db4d6aa18823f1f7617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">예쁜
												말풍선톡 5</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/illusion-rabbit-ver-21"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/7d6536158ccaf28d8bc8d080d04b5136617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/7d6536158ccaf28d8bc8d080d04b5136617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">망붕이는
												다이어트 중!</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/doodle-party"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/ad21654ae10a95c94c9145cbab51093c617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/ad21654ae10a95c94c9145cbab51093c617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">아무낙서
												대잔치</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/baby-tiger-myoya"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/960c407db298e0271e0d6434d1025e3a617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/960c407db298e0271e0d6434d1025e3a617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">아기
												호랑이 묘야</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/is-kkongji-really-that-cute"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/45cd7f0390a42836f285e9a415c6a963617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/45cd7f0390a42836f285e9a415c6a963617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">나
												꽁쥐, 내가 그렇게 귀여운가?</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/jakzi-is-a-country-mouse"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/d4063277eccdfb6961920a3877029445617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/d4063277eccdfb6961920a3877029445617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">작찌는
												시골찌</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/sweet-fruit-cat-cats-melody"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/cad6a104616fbfbe73431023ec59d07f617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/cad6a104616fbfbe73431023ec59d07f617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">과즙팡팡
												후르츠 캣츠멜로디</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/the-consonant-villain"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/74f14803471e339189d4cb30fb63df9c617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/74f14803471e339189d4cb30fb63df9c617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">한글
												초성 풀어 읽는 거 킹받네</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/coupons-for-our-friendship"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/a80317a3f2a7a1b77c07a478c483c632617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/a80317a3f2a7a1b77c07a478c483c632617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">쿠폰
												우리42</span></strong></a>
								</div>
								<div class="list_unit">
									<a class="link_emot" href="/t/im-just-a-potato-2"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/957b4d480ad8c67290255b3f2ee9785e617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/957b4d480ad8c67290255b3f2ee9785e617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">전
												감잔데요..? 2</span></strong></a>
								</div>
							</div>
						</div>
					</div>
					<div class="wrap_hottab">
						<h3 class="tit_section">
							<a class="link_menu" href="/item/hot">인기 이모티콘<span
								class="ico_comm ico_logarr"></span></a>
						</h3>
						<div class="area_hot">
							<ol class="list_double">
								<li><span class="txt_num num_highlight">1</span>
								<div class="double_tit">
										<a class="link_double" href="/t/little-minigiri"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">쬐끄만한
														미니기리</span></strong><span class="txt_author">오니기리</span>
											</div></a>
									</div>
									<a class="link_double double_img" href="/t/little-minigiri"><div
											class="area_doubleemoticon">
											<img
												src="https://item.kakaocdn.net/do/94e3bc15680039dc2a3e9a114d3a1e52617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_default" alt="쬐끄만한 미니기리이미지"><img
												src="https://item.kakaocdn.net/do/94e3bc15680039dc2a3e9a114d3a1e52617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="쬐끄만한 미니기리세부이미지">
										</div></a></li>
								<li><span class="txt_num num_highlight">2</span>
								<div class="double_tit">
										<a class="link_double"
											href="/t/friendly-dog-couple-maltese-ver"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">사이좋은
														댕댕이커플(몰티즈.ver)</span></strong><span class="txt_author">문랩</span>
											</div></a>
									</div>
									<a class="link_double double_img"
									href="/t/friendly-dog-couple-maltese-ver"><div
											class="area_doubleemoticon">
											<img
												src="https://item.kakaocdn.net/do/b1075862a4a5489c103d0357d1938df3617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_default" alt="사이좋은 댕댕이커플(몰티즈.ver)이미지"><img
												src="https://item.kakaocdn.net/do/b1075862a4a5489c103d0357d1938df3617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="사이좋은 댕댕이커플(몰티즈.ver)세부이미지">
										</div></a></li>
								<li><span class="txt_num num_highlight">3</span>
								<div class="double_tit">
										<a class="link_double" href="/t/illusion-rabbit-ver-21"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">망붕이는
														다이어트 중!</span></strong><span class="txt_author">EB</span>
											</div></a>
									</div>
									<a class="link_double double_img"
									href="/t/illusion-rabbit-ver-21"><div
											class="area_doubleemoticon">
											<img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt="망붕이는 다이어트 중!이미지"><img
												src="https://item.kakaocdn.net/do/7d6536158ccaf28d8bc8d080d04b5136617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="망붕이는 다이어트 중!세부이미지">
										</div></a></li>
								<li><span class="txt_num">4</span>
								<div class="double_tit">
										<a class="link_double"
											href="/t/friendly-dog-couple-retriever-ver"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">사이좋은
														댕댕이커플(리트리버.ver)</span></strong><span class="txt_author">문랩</span>
											</div></a>
									</div>
									<a class="link_double double_img"
									href="/t/friendly-dog-couple-retriever-ver"><div
											class="area_doubleemoticon">
											<img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt="사이좋은 댕댕이커플(리트리버.ver)이미지"><img
												src="https://item.kakaocdn.net/do/261a695bfa6627c2a79a0741a4715eca617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="사이좋은 댕댕이커플(리트리버.ver)세부이미지">
										</div></a></li>
								<li><span class="txt_num">5</span>
								<div class="double_tit">
										<a class="link_double"
											href="/t/return-of-the-blossoming-blade"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">이십사수매화티콘
														#화산귀환</span></strong><span class="txt_author">LICO, 비가</span>
											</div></a>
									</div>
									<a class="link_double double_img"
									href="/t/return-of-the-blossoming-blade"><div
											class="area_doubleemoticon">
											<img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt="이십사수매화티콘 #화산귀환이미지"><img
												src="https://item.kakaocdn.net/do/3fc42277681e4603dc7a503c8dd59790617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="이십사수매화티콘 #화산귀환세부이미지">
										</div></a></li>
							</ol>
							<ol class="list_double">
								<li><span class="txt_num">6</span>
								<div class="double_tit">
										<a class="link_double" href="/t/baby-tiger-myoya"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">아기
														호랑이 묘야</span></strong><span class="txt_author">샵팬픽</span>
											</div></a>
									</div>
									<a class="link_double double_img" href="/t/baby-tiger-myoya"><div
											class="area_doubleemoticon">
											<img
												src="https://item.kakaocdn.net/do/960c407db298e0271e0d6434d1025e3a617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_default" alt="아기 호랑이 묘야이미지"><img
												src="https://item.kakaocdn.net/do/960c407db298e0271e0d6434d1025e3a617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="아기 호랑이 묘야세부이미지">
										</div></a></li>
								<li><span class="txt_num">7</span>
								<div class="double_tit">
										<a class="link_double" href="/t/zanmang-loopy-ver-4"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">잔망
														루피 4</span></strong><span class="txt_author">뽀로로</span>
											</div></a>
									</div>
									<a class="link_double double_img" href="/t/zanmang-loopy-ver-4"><div
											class="area_doubleemoticon">
											<img
												src="https://item.kakaocdn.net/do/d6ac539d04d3aaf4a22186c23dd33ca6617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_default" alt="잔망 루피 4이미지"><img
												src="https://item.kakaocdn.net/do/d6ac539d04d3aaf4a22186c23dd33ca6617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="잔망 루피 4세부이미지">
										</div></a></li>
								<li><span class="txt_num">8</span>
								<div class="double_tit">
										<a class="link_double" href="/t/are-you-upset-again"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">또
														삐짐???????????????</span></strong><span class="txt_author">빌런</span>
											</div></a>
									</div>
									<a class="link_double double_img" href="/t/are-you-upset-again"><div
											class="area_doubleemoticon">
											<img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt="또 삐짐???????????????이미지"><img
												src="https://item.kakaocdn.net/do/a574c1479bc07a02b93aec471bb44268617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="또 삐짐???????????????세부이미지">
										</div></a></li>
								<li><span class="txt_num">9</span>
								<div class="double_tit">
										<a class="link_double"
											href="/t/to-the-world-nct-in-sanrio-town"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">투 더
														월드! 여긴 NCT&amp;산리오타운</span></strong><span class="txt_author">산리오</span>
											</div></a>
									</div>
									<a class="link_double double_img"
									href="/t/to-the-world-nct-in-sanrio-town"><div
											class="area_doubleemoticon">
											<img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default"
												alt="투 더 월드! 여긴 NCT&amp;산리오타운이미지"><img
												src="https://item.kakaocdn.net/do/a2df6a1500bf668455e398e33ee34c0e617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover"
												alt="투 더 월드! 여긴 NCT&amp;산리오타운세부이미지">
										</div></a></li>
								<li><span class="txt_num">10</span>
								<div class="double_tit">
										<a class="link_double" href="/t/todays-meme-zzalfriends-2"><div
												class="area_tit">
												<strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">오늘의
														짤 #짤친 2</span></strong><span class="txt_author">MOH Inc.</span>
											</div></a>
									</div>
									<a class="link_double double_img"
									href="/t/todays-meme-zzalfriends-2"><div
											class="area_doubleemoticon">
											<img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt="오늘의 짤 #짤친 2이미지"><img
												src="https://item.kakaocdn.net/do/215f3d177e63c322cae867a0f5620c56617ea012db208c18f6e83b1a90a7baa7"
												class="img_emot img_hover" alt="오늘의 짤 #짤친 2세부이미지">
										</div></a></li>
							</ol>
						</div>
					</div>
					<div class="wrap_style">
						<div class="inner_style">
							<h3 class="tit_section">
								<a class="link_menu" href="/item/style">스타일<span
									class="ico_comm ico_logarr"></span></a>
							</h3>
							<div class="area_homestyle">
								<div class="area_linkstyle">
									<a class="link_style" href="/style/groups/2429"><span
										class="inner_link"><strong class="tit_style"
											style="color: rgb(110, 178, 228);">#스타/인플루언서/캐릭터</strong><span
											class="txt_hash"
											style="background-color: rgb(155, 205, 242);">#스타</span></span></a>
								</div>
								<div class="area_listproduct">
									<div class="list_product">
										<div class="list_unit">
											<a class="link_emot" aria-label="투 더 월드! 여긴 NCT&amp;산리오타운 상세"
												href="/t/to-the-world-nct-in-sanrio-town"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="공부왕찐천재 공부티콘 상세"
												href="/t/genius-study-king"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="유교가이 김폭스 상세"
												href="/t/polite-kim-fox"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="큰자기와 아기자기의 사람 여행 상세"
												href="/t/you-quiz-on-the-block"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="짐종국 헬스티콘 상세"
												href="/t/gym-jong-kooks-bulk-up-workout"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="나는 자연인이다 상세"
												href="/t/im-nature-man"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="매드몬스터의 이엠오티아이씨오엔 상세"
												href="/t/mad-monsters-emoticon"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="tvN 슬기로운 의사생활 상세"
												href="/t/tvn-hospital-playlist"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="살랑살랑 쁘걸바람! 쁘걸티콘 상세"
												href="/t/lovely-bvgirl-wind-bvgirl-emoticon"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="강철부대 상세"
												href="/t/the-iron-squad"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
									</div>
								</div>
							</div>
							<div class="area_homestyle">
								<div class="area_linkstyle">
									<a class="link_style" href="/style/groups/470"><span
										class="inner_link"><strong class="tit_style"
											style="color: rgb(144, 199, 100);">#일러스트</strong><span
											class="txt_hash"
											style="background-color: rgb(177, 224, 139);">#흑과백</span></span></a>
								</div>
								<div class="area_listproduct">
									<div class="list_product">
										<div class="list_unit">
											<a class="link_emot" aria-label="우리는 단짝부부 뚜두두 상세"
												href="/t/we-are-ttududu"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="키크니와 친구들 상세"
												href="/t/keykney-friends"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="쏘쏘의 일상 3 상세"
												href="/t/sosos-life-3"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="탱글볼쌀 김밍구 상세"
												href="/t/full-cheeked-bolssal-kim"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="잔잔한 아네모네 상세"
												href="/t/calm-anemone"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="삽살이 보와 풀이는 친한 친구 상세"
												href="/t/best-friends-bo-and-pul"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="쏘쏘의 일상 2 상세"
												href="/t/sosos-life-2"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="할말이 있는 샴마티콘 상세"
												href="/t/talkative-shamma"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="한컷톡 상세"
												href="/t/message-in-one-frame"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="히말떼기가 없는 히말떼기의 일상 상세"
												href="/t/feeble-himalttegis-daily-life"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""></a>
										</div>
									</div>
								</div>
							</div>
							<div class="area_homestyle">
								<div class="area_linkstyle">
									<a class="link_style" href="/style/groups/2114"><span
										class="inner_link"><strong class="tit_style"
											style="color: rgb(204, 163, 145);">#큰이모티콘</strong><span
											class="txt_hash"
											style="background-color: rgb(217, 179, 163);">#큰이모티콘</span></span></a>
								</div>
								<div class="area_listproduct">
									<div class="list_product">
										<div class="list_unit">
											<a class="link_emot" aria-label="왕왕 커서 왕귀여워~왕기염! 상세"
												href="/t/wang-ki-yeom-powerfully-cute"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="감사한 마음 담은 말 한 마디 상세"
												href="/t/saying-thank-you"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="꽃길만 걷는 원고지편지 2 상세"
												href="/t/handwritten-letters-and-flowers-2"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="예쁜말팡팡 팝업카드 상세"
												href="/t/happy-pop-up-cards"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="시원한 여름의 푸른 감성톡 상세"
												href="/t/cool-blue-summer"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="안녕, 새앙쥐야 상세"
												href="/t/hello-little-mouse"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="크게 쏘리질러 4 상세"
												href="/t/shout-out-loud-4"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="채팅방 스텝입니다~ 상세"
												href="/t/chat-room-staff"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="하고싶은 말 찾으면 빙고 빙고!! 상세"
												href="/t/find-messages-in-bingo"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
										<div class="list_unit">
											<a class="link_emot" aria-label="너의 모든 순간을 축하해!! 상세"
												href="/t/bless-every-moment-of-your-life"><img
												src="https://t1.kakaocdn.net/estoreweb/images/thumb_empty.png"
												class="img_emot img_default" alt=""><span
												class="ico_comm ico_expand2">큰 이모티콘</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
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
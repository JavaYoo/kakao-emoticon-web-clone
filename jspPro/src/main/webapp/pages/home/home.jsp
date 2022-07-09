<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 7. 8. - 오전 11:32:16</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="shortcut icon" href="../images/e_16x16.ico" />
<link rel="stylesheet" href="home.css" />

</head>
<body>

<div id="root" style="height: 100%;">
	<div id="kakaoWrap" class="">
		<div id="kakaoHead" class="emoticon_head">
			<div class="k_head"><button class="link_menu" id="side_open"><span class="ico_comm ico_menu">사이드메뉴
						열기</span></button><a class="link_home" href="/"><span class="ico_comm ico_home">홈으로
						이동</span></a>
				<h1 class="tit_logo"><a class="link_thome" href="/"><span class="ico_comm ico_logo">kakao emoticon
							shop</span></a><span class="ico_comm ico_logo">kakao emoticon shop</span></h1><strong
					class="tit_cont"></strong><button class="link_search"><span
						class="ico_comm ico_search">검색하기</span></button><button class="link_my"><span
						class="wrap_thumb"><span class="inner_thumb"><img class="thumb_user"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
								width="28px" height="28px" alt="사용자"></span></span></button>
			</div>
			<nav id="kakaoGnb">
				<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
				<ul class="list_gnb">
					<li class="on"><a class="link_gnb" href="/jspPro/pages/home.do">홈</a></li>
					<li class=""><a class="link_gnb" href="/item/new">신규</a></li>
					<li class=""><a class="link_gnb" href="/item/hot">인기</a></li>
					<li class=""><a class="link_gnb" href="/jspPro/pages/style.do">스타일</a></li>
				</ul>
			</nav>
		</div>
		<div id="kakaoContent" class="cont_home">
			<div class="area_hometab">
				<div class="wrap_banner">
					<div class="box_banner"><strong class="screen_out">프로모션 및 이벤트 배너</strong>
						<div class="slick-slider list_banner slick-initialized">
							<div class="slick-list">
								<div class="slick-track"
									style="opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div data-index="0" class="slick-slide slick-active slick-current" tabindex="-1"
										aria-hidden="false" style="outline: none; width:100%;">
										<div><a href="https://my.kakao.com/product/EMOTICON001?t_src=emoticon&amp;t__ch=webstore&amp;t_obj=web_main_banner"
												class="link_banner" target="_blank" rel="noreferrer"
												aria-label="링크배너" style="background-color: rgb(165, 216, 243);"><img
													src="https://item.kakaocdn.net/dn/dNwVgj/btrGkeye3h5/NWhuD3KlDkrIFuc8X1XfqK/img.gif"
													class="img_banner" alt=""></a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="wrap_newemoticon">
					<h3 class="tit_section"><a class="link_menu" href="/item/new">신규 이모티콘<span
								class="ico_comm ico_logarr"></span></a></h3>
					<div class="area_listproduct">
						<div class="list_product" style="transform: translate(0px, 0px);">
							<div class="list_unit"><a class="link_emot" href="/t/anonymous-daily-life-ver-13"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/2281371e48a4566222b94421551042e9617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/2281371e48a4566222b94421551042e9f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">안녕! 나는 익명이고 쪼금 엉뚱해
											2</span></strong></a></div>
							<div class="list_unit"><a class="link_emot" href="/t/hurry-right-now"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/7dd87956edbe15eb8679514f67467295617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/7dd87956edbe15eb8679514f67467295f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">빨리티콘</span></strong></a></div>
							<div class="list_unit"><a class="link_emot" href="/t/simple-doodles"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/faeb9ae828f6615500dcbbe5a88fdef7617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/faeb9ae828f6615500dcbbe5a88fdef77154249a3890514a43687a85e6b6cc82"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">그냥 그린 그런 그림</span></strong></a>
							</div>
							<div class="list_unit"><a class="link_emot" href="/t/stormtrooper"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/9f0aa538d18e8207faa0ab1d57998f04617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/9f0aa538d18e8207faa0ab1d57998f047154249a3890514a43687a85e6b6cc82"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">스톰트루퍼 등장!</span></strong></a>
							</div>
							<div class="list_unit"><a class="link_emot" href="/t/gorani-meme"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/4a1859657e14e3fa044ee922d1232ad8617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/4a1859657e14e3fa044ee922d1232ad87154249a3890514a43687a85e6b6cc82"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">고라니 밈</span></strong></a></div>
							<div class="list_unit"><a class="link_emot" href="/t/noorungs-day-at-work"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/2b28e41fb75e298cfe1e598c41136472617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/2b28e41fb75e298cfe1e598c41136472f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">누렁이의 직장생활</span></strong></a>
							</div>
							<div class="list_unit"><a class="link_emot" href="/t/people-in-coffee-heaven"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/095d2fe3a62587207c8c7d1766458030617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/095d2fe3a62587207c8c7d17664580307154249a3890514a43687a85e6b6cc82"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">커피의 민족</span></strong></a></div>
							<div class="list_unit"><a class="link_emot" href="/t/compliment-stickers-2"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/99e6e072e52c9727f7fa0cfe4f3d3f47617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/99e6e072e52c9727f7fa0cfe4f3d3f47f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">칭찬스티커 2</span></strong></a></div>
							<div class="list_unit"><a class="link_emot"
									href="/t/sunny-up-the-fried-egg-duck-2"><span class="inner_emot"><img
											src="https://item.kakaocdn.net/do/a95202819e744bf82967e0d014e13760617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/a95202819e744bf82967e0d014e13760f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">후라이덕 2</span></strong></a></div>
							<div class="list_unit"><a class="link_emot" href="/t/dear-mom"><span
										class="inner_emot"><img
											src="https://item.kakaocdn.net/do/2b07fb4d0ac1aebedf671d4e756bec12617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt=""><img
											src="https://item.kakaocdn.net/do/2b07fb4d0ac1aebedf671d4e756bec12f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt=""></span><strong
										class="tit_product"><span class="tit_item">Dear 엄마</span></strong></a></div>
						</div>
					</div>
				</div>
				<div class="wrap_hottab">
					<h3 class="tit_section"><a class="link_menu" href="/item/hot">인기 이모티콘<span
								class="ico_comm ico_logarr"></span></a></h3>
					<div class="area_hot">
						<ol class="list_double">
							<li><span class="txt_num num_highlight">1</span>
								<div class="double_tit"><a class="link_double"
										href="/t/anonymous-daily-life-ver-13">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">안녕! 나는 익명이고 쪼금
													엉뚱해 2</span></strong><span class="txt_author">라부</span></div>
									</a></div><a class="link_double double_img"
									href="/t/anonymous-daily-life-ver-13">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/2281371e48a4566222b94421551042e9617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="안녕! 나는 익명이고 쪼금 엉뚱해 2이미지"><img
											src="https://item.kakaocdn.net/do/2281371e48a4566222b94421551042e9f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="안녕! 나는 익명이고 쪼금 엉뚱해 2세부이미지"></div>
								</a>
							</li>
							<li><span class="txt_num num_highlight">2</span>
								<div class="double_tit"><a class="link_double" href="/t/i-feel-great-today-ver-21">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">업티콘 업된
													사랑!</span></strong><span class="txt_author">terry</span></div>
									</a></div><a class="link_double double_img" href="/t/i-feel-great-today-ver-21">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/4fb299707c4de09b82c9ec0f28ff0ead617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="업티콘 업된 사랑!이미지"><img
											src="https://item.kakaocdn.net/do/4fb299707c4de09b82c9ec0f28ff0eadf43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="업티콘 업된 사랑!세부이미지"></div>
								</a>
							</li>
							<li><span class="txt_num num_highlight">3</span>
								<div class="double_tit"><a class="link_double" href="/t/noorungs-day-at-work">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">누렁이의
													직장생활</span></strong><span class="txt_author">남씨</span></div>
									</a></div><a class="link_double double_img" href="/t/noorungs-day-at-work">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/2b28e41fb75e298cfe1e598c41136472617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="누렁이의 직장생활이미지"><img
											src="https://item.kakaocdn.net/do/2b28e41fb75e298cfe1e598c41136472f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="누렁이의 직장생활세부이미지"></div>
								</a>
							</li>
							<li><span class="txt_num">4</span>
								<div class="double_tit"><a class="link_double"
										href="/t/friendly-dog-couple-maltese-ver">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">사이좋은
													댕댕이커플(몰티즈.ver)</span></strong><span class="txt_author">문랩</span>
										</div>
									</a></div><a class="link_double double_img"
									href="/t/friendly-dog-couple-maltese-ver">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/b1075862a4a5489c103d0357d1938df3617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="사이좋은 댕댕이커플(몰티즈.ver)이미지"><img
											src="https://item.kakaocdn.net/do/b1075862a4a5489c103d0357d1938df3f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="사이좋은 댕댕이커플(몰티즈.ver)세부이미지"></div>
								</a>
							</li>
							<li><span class="txt_num">5</span>
								<div class="double_tit"><a class="link_double" href="/t/say-it-with-bearkku-5">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">베어꾸로 말하라꾸
													5</span></strong><span class="txt_author">귤제리</span></div>
									</a></div><a class="link_double double_img" href="/t/say-it-with-bearkku-5">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/f5e91ecf914b77dc5fd4b66ba6560e3d617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="베어꾸로 말하라꾸 5이미지"><img
											src="https://item.kakaocdn.net/do/f5e91ecf914b77dc5fd4b66ba6560e3df43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="베어꾸로 말하라꾸 5세부이미지"></div>
								</a>
							</li>
						</ol>
						<ol class="list_double">
							<li><span class="txt_num">6</span>
								<div class="double_tit"><a class="link_double" href="/t/horong-survives-at-work">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">오늘도 출근! 직장인
													호롱이</span></strong><span class="txt_author">펜낙</span></div>
									</a></div><a class="link_double double_img" href="/t/horong-survives-at-work">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/86e17cb70f8b3ac4a3e43fc7a8587d09617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="오늘도 출근! 직장인 호롱이이미지"><img
											src="https://item.kakaocdn.net/do/86e17cb70f8b3ac4a3e43fc7a8587d09f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="오늘도 출근! 직장인 호롱이세부이미지"></div>
								</a>
							</li>
							<li><span class="txt_num">7</span>
								<div class="double_tit"><a class="link_double"
										href="/t/gomsik-rough-around-the-edges-2">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">대충생긴 곰식이
													2</span></strong><span class="txt_author">쩡고</span></div>
									</a></div><a class="link_double double_img"
									href="/t/gomsik-rough-around-the-edges-2">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/e96587536bcacce33bb707de6468f3f8617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="대충생긴 곰식이 2이미지"><img
											src="https://item.kakaocdn.net/do/e96587536bcacce33bb707de6468f3f8f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="대충생긴 곰식이 2세부이미지"></div>
								</a>
							</li>
							<li><span class="txt_num">8</span>
								<div class="double_tit"><a class="link_double"
										href="/t/friendly-dog-couple-retriever-ver">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">사이좋은
													댕댕이커플(리트리버.ver)</span></strong><span
												class="txt_author">문랩</span></div>
									</a></div><a class="link_double double_img"
									href="/t/friendly-dog-couple-retriever-ver">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/261a695bfa6627c2a79a0741a4715eca617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="사이좋은 댕댕이커플(리트리버.ver)이미지"><img
											src="https://item.kakaocdn.net/do/261a695bfa6627c2a79a0741a4715ecaf43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="사이좋은 댕댕이커플(리트리버.ver)세부이미지"></div>
								</a>
							</li>
							<li><span class="txt_num">9</span>
								<div class="double_tit"><a class="link_double" href="/t/little-minigiri">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"></span><span class="txt_tit">쬐끄만한
													미니기리</span></strong><span class="txt_author">오니기리</span></div>
									</a></div><a class="link_double double_img" href="/t/little-minigiri">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/94e3bc15680039dc2a3e9a114d3a1e52617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="쬐끄만한 미니기리이미지"><img
											src="https://item.kakaocdn.net/do/94e3bc15680039dc2a3e9a114d3a1e52f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="쬐끄만한 미니기리세부이미지"></div>
								</a>
							</li>
							<li><span class="txt_num">10</span>
								<div class="double_tit"><a class="link_double"
										href="/t/baby-girl-will-become-prettier">
										<div class="area_tit"><strong class="tit_product"><span
													class="area_icons"><span
														class="ico_comm ico_sound">소리켜짐</span></span><span
													class="txt_tit">쥐방울은 더 이쁠예정</span></strong><span
												class="txt_author">ⓒhansigan</span></div>
									</a></div><a class="link_double double_img"
									href="/t/baby-girl-will-become-prettier">
									<div class="area_doubleemoticon"><img
											src="https://item.kakaocdn.net/do/c94b16cbcec01e632c9f3410a3422f07617ea012db208c18f6e83b1a90a7baa7"
											class="img_emot img_default" alt="쥐방울은 더 이쁠예정이미지"><img
											src="https://item.kakaocdn.net/do/c94b16cbcec01e632c9f3410a3422f07f43ad912ad8dd55b04db6a64cddaf76d"
											class="img_emot img_hover" alt="쥐방울은 더 이쁠예정세부이미지"></div>
								</a>
							</li>
						</ol>
					</div>
				</div>
				<div class="wrap_style">
					<div class="inner_style">
						<h3 class="tit_section">
							<a class="link_menu" href="/jspPro/pages/style.do">스타일<span class="ico_comm ico_logarr"></span></a>
						</h3>
									
						<c:if test="${ not empty ecatgCatgList }">
							<c:set var="cnt" value="0"></c:set>
							<c:forEach items="${ ecatgCatgList }" var="EcatgCatgDTO">
								<c:if test="${ cnt <= 2 }">
									<c:set var="cnt" value="${ cnt + 1 }"></c:set>								
									<div class="area_homestyle">
									
										<div class="area_linkstyle">
											<a class="link_style" href="/jspPro/pages/category.do?ct_main=${ EcatgCatgDTO.ct_main }&ec_sub=${ EcatgCatgDTO.ec_sub }">
												<span class="inner_link">
													<strong class="tit_style">#${ EcatgCatgDTO.ct_main }</strong>
													<span class="txt_hash">#${ EcatgCatgDTO.ec_sub }</span>
												</span>
											</a>
										</div>
										
										<div class="area_listproduct">
											<div class="list_product" style="transform: translate(0px, 0px);">
											
											
												<c:if test="${ not empty elistEcatgList }">
													<c:set var="cnt2" value="0"></c:set>
													<c:forEach items="${ elistEcatgList }" var="ElistEcatgDTO">
														<c:if test="${ (EcatgCatgDTO.ec_sub eq ElistEcatgDTO.ec_sub) and (EcatgCatgDTO.ct_main eq ElistEcatgDTO.ct_main) and cnt2 <= 9 }">
															<c:set var="cnt2" value="${ cnt2 + 1 }"></c:set>
															<div class="list_unit">
																<a class="link_emot" href="/t/sawol-is-your-best-friend">
																	<img src="${ ElistEcatgDTO.el_stopimg }" class="img_emot img_default" alt="">
																</a>
															</div>
														</c:if>
													</c:forEach>
												</c:if>
												
												
											</div>
										</div>
										
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						
					
					</div>
				</div>
			</div>
		</div>
		<div id="kakaoFoot" class="foot_group ">
			<div class="area_footer">
				<h2 class="screen_out">서비스 이용정보</h2>
				<div class="service_info"><a class="link_service" href="/policy" target="_blank"
						rel="noreferrer">이용약관</a><a class="link_service"
						href="https://billing-web.kakao.com/kbill/terms/service" target="_blank"
						rel="noreferrer">유료이용안내</a><a class="link_service"
						href="https://www.kakao.com/policy/privacy" target="_blank" rel="noreferrer"><strong
							class="dlnk_txt">개인정보처리방침</strong></a><a class="link_service"
						href="https://bizemoticon.kakao.com" target="_blank" rel="noreferrer">기업고객</a><a
						class="link_service"
						href="https://cs.kakao.com/requests?category=278&amp;locale=ko&amp;node=30555&amp;service=94"
						target="_blank" rel="noreferrer">문의하기</a><a class="link_service"
						href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1208147521" target="_blank"
						rel="noreferrer">공정위사업자정보</a><a class="link_service" href="https://www.kakaocorp.com/page/"
						target="_blank" rel="noopener noreferrer"><strong class="dlnk_txt">(주) 카카오</strong></a>
					<p class="desc_service">카카오 이모티콘샵에서 판매되는 콘텐츠의 저작권은 콘텐츠 제공자에게 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 처벌될 수
						있습니다.</p>
				</div>
				<div class="wrap_info"><strong class="tit_info"><a class="link_info"
							href="https://www.kakaocorp.com/page/" target="_blank" rel="noopener noreferrer">(주)
							카카오</a></strong>
					<dl class="list_info">
						<div class="unit_info">
							<dt>대표</dt>
							<dd>남궁훈</dd>
							<dt>사업자등록번호</dt>
							<dd><span class="txt_en">120-81-47521</span></dd>
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
							<dd><span class="txt_en">1577-3754</span></dd>
						</div>
						<div class="unit_info">
							<dt>메일</dt>
							<dd><span class="txt_en">help.notice@kakaocorp.com</span></dd>
						</div>
					</dl>
				</div>
				<div class="area_movetop"><button type="button" class="btn_movetop"><span
							class="ico_comm ico_movetop">위로 이동</span></button></div>
			</div>
		</div>
	</div>
</div>

<script>
	$(function(){
		$(".ico_movetop").click(function(){
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		});
	});
</script>


</body>
</html>
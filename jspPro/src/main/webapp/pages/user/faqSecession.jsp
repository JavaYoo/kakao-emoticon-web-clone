<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../include.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 이모티콘샵</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico" />
<link rel="stylesheet" href="../../css/faq/faq.css">
<link rel="stylesheet" href="../../css/header/header.css">
</head>
<body>
	<div id="kakaoIndex"
		style="overflow: hidden; position: absolute; left: -9999px; width: 0; height: 1px; margin: 0; padding: 0;">
		<a href="#dkBody">본문 바로가기</a> <a href="#dkGnb">메뉴 바로가기</a>
	</div>

	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="default head_bnr menu_in">

			<!-- 로그인 하면 나오는 띠배너 -->
			<c:if test="${ not empty sessionScope.email }">
			<%-- <c:if test="${ not empty param.id }"> --%>
				<div class="kakaoTopbnr">
					<div class="wrap_topbnr"
						style="background-color: rgb(152, 232, 231);">
						<div class="inner_topbnr">
							<a
								href="https://my.kakao.com/product/EMOTICON001?t_src=emoticon&amp;t_ch=webstore&amp;t_obj=web_gnb_banner"
								class="link_bnr"> <span class="txt_info"
								style="color: rgb(0, 0, 0);">이모티콘 무제한! 웹에선 평생 할인</span> <span
								class="unit_coupon"> 
								<img src="https://item.kakaocdn.net/dn/e1iAq/btrFiaXi8G1/wYPKhfbRvUgCYIgsxc9V5k/img.png"
									class="img_coupon" alt="띠배너이미지">
							</span>
							</a>
						</div>
						<button class="btn_close_tb" aria-label="띠배너닫기">
							<span class="ico_comm ico_closew"></span>
						</button>
					</div>
				</div>
			</c:if>

			<div id="kakaoHead" class="emoticon_head"
			<c:if test="${ empty sessionScope.email }">style="top:0"</c:if> >
			
			<c:if test="${ empty sessionScope.email }">
					<div class="wrap_menu">
						<div class="inner_menu">
							<a href="#" class="wrap_profile"><span class="wrap_thumb"><span
									class="inner_thumb"><img class="thumb_user"
										src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
										alt="사용자"></span></span><span class="wrap_name"><span
									class="txt_name">로그인<span
										class="ico_comm ico_logarr_type1"></span></span></span></a><strong
								class="screen_out">나의 이용정보</strong>
							<ul class="list_mymenu">
								<li id="menu1"><a class="link_mymenu">
								<span class="ico_comm ico_buy"></span><span class="txt_mymenu">구매내역</span></a></li>
								<li id="menu1"><a class="link_mymenu" 
								><span
										class="ico_comm ico_gift"></span><span class="txt_mymenu">선물함</span></a></li>
								<li id="menu1"><a class="link_mymenu" 
								><span
										class="ico_comm ico_coupon"></span><span class="txt_mymenu">쿠폰함
										<c:if test="${not empty couponsList}">
												<!--   쿠폰리스트 핸들러에서 받아와야할듯? 개수 표시 -->
												<em class="txt_count">${fn:length(couponsList)}<span
													class="screen_out">개</span></em>
											</c:if>
											<c:if test="${empty couponsList}">
										
												<em class="txt_count">
													<span class="screen_out"></span>
												</em>
											</c:if>
											
										</span></a></li>
								<li id="menu1"><a class="link_mymenu" 
								><span
										class="ico_comm ico_good"></span><span class="txt_mymenu">좋아요
											<c:if test="${not empty likesList}">
													<!--   쿠폰리스트 핸들러에서 받아와야할듯? 개수 표시 -->
													<em class="txt_count">${fn:length(likesList)}<span
														class="screen_out">개</span></em>
												</c:if>
												<c:if test="${empty likesList}">
													
													<em class="txt_count">
														<span class="screen_out"></span>
													</em>
												</c:if>
										</span></a></li>
							</ul>
							<strong class="screen_out">kakao emoticon shop 메뉴</strong>
							<ul class="list_nav">
								<li><a class="link_nav" href="<%= contextPath %>/pages/home/home.do">홈</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/new/new_kakao.do">신규</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/hot/hot.do">인기</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/style/style.do">스타일</a></li>
							</ul>
							<ul class="list_aside">
								<li><a class="link_aside" href="<%= contextPath %>/pages/user/board.do">게시판</a></li>
								<li><a class="link_aside" href="<%= contextPath %>/pages/user/faq.do">자주묻는 질문</a></li>
								<li><a  class="link_aside" target="_blank"
									onclick="numbermodal();"style="cursor:pointer">이모티콘 일련번호 입력하기</a></li>
							</ul>
						</div>
						<div class="wrap_copyright">
							<a class="link_shop" href="<%= contextPath %>/pages/home/home.do"><span
								class="ico_comm ico_menulogo">카카오이모티콘 샵</span></a><a
								href="https://www.kakaocorp.com" class="link_corp">@ kakao
								Corp</a>
						</div>
					</div>
					<div class="dimmed_menu" style="display: none"></div>

					<div class="alert_layer" id="alert_logon">
						<div class="inner_layer">
							<div class="layer_body">
								<strong class="txt_info">로그인 후 이용해주세요.</strong>
							</div>
							<div class="layer_foot">
								<button class="btn_s btn_m" id="alert_close">취소</button>
								<button class="btn_g btn_m" onclick="location.href='../login/login_kakao.do">로그인</button>
							</div>
						</div>
						<button type="button" class="btn_close">
							<span class="ico_comm ico_orderclose" id="btn_layer_close">닫기</span>
						</button>
					</div>
					<div class="dimmed_layer dim_over"></div>
				</c:if>


				<c:if test="${ not empty sessionScope.email }">
				<%-- <c:if test="${ not empty param.id }"> --%>
					<div class="wrap_menu" id=logonmenu style="display: none">
						<div class="inner_menu">
							<c:forEach var="memberList" items="${ memberList }">
								<c:if test="${ memberList.m_id eq sessionScope.email }">
								<%-- <c:if test="${ memberList.m_id eq param.id }"> --%> 
									<span class="wrap_profile">
										<span class="wrap_thumb">
											<span class="inner_thumb">
												<img class="thumb_user"
												src="${ memberList.m_pimg }"
												alt="사용자">
											</span>
										</span>
									<span class="wrap_name">
										<span class="txt_name">${ memberList.m_nn }</span>
										<span class="txt_email">${ memberList.m_id }</span>
									</span>
								</span>
								</c:if>
							</c:forEach>
							
							
						<strong
								class="screen_out">나의 이용정보</strong>
							<ul class="list_mymenu">
								<li id="menu1"><a class="link_mymenu"
								 href="<%=contextPath %>/pages/mypage/purchases.do?id=email"><span
										class="ico_comm ico_buy"></span><span class="txt_mymenu">구매내역</span></a></li>
								<li id="menu1"><a class="link_mymenu" 
								href="<%=contextPath %>/pages/mypage/recevied.do?id=email"><span
										class="ico_comm ico_gift"></span><span class="txt_mymenu">선물함</span></a></li>
								<li><a class="link_mymenu"
									href="<%=contextPath %>/pages/mypage/coupons.do?id=email">
									<span class="ico_comm ico_menunew">신규</span>
									<span class="ico_comm ico_coupon"></span>
									<span class="txt_mymenu">쿠폰함
											<c:if test="${not empty couponsList}">
												<!--   쿠폰리스트 핸들러에서 받아와야할듯? 개수 표시 -->
												<em class="txt_count">${fn:length(couponsList)}<span
													class="screen_out">개</span></em>
											</c:if>
											<c:if test="${empty couponsList}">
										
												<em class="txt_count">
													<span class="screen_out"></span>
												</em>
											</c:if>
											
									</span></a></li>
								<li><a class="link_mymenu"
									href="<%=contextPath %>/pages/mypage/likes.do?id=email"><span
										class="ico_comm ico_good"></span><span class="txt_mymenu">좋아요
										<c:if test="${not empty likesList}">
												<!--   쿠폰리스트 핸들러에서 받아와야할듯? 개수 표시 -->
												<em class="txt_count">${fn:length(likesList)}<span
													class="screen_out">개</span></em>
											</c:if>
											<c:if test="${empty likesList}">
												
												<em class="txt_count">
													<span class="screen_out"></span>
												</em>
											</c:if>
										</span></a></li>
							</ul>
							<strong class="screen_out">kakao emoticon shop 메뉴</strong>
							<ul class="list_nav">
								<li><a class="link_nav" href="<%= contextPath %>/pages/home/home.do">홈</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/new/new_kakao.do">신규</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/hot/hot.do">인기</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/style/style.do">스타일</a></li>
							</ul>
							<ul class="list_aside">
								<li><a class="link_aside" href="<%= contextPath %>/pages/user/board.do">게시판</a></li>
								<li><a class="link_aside" href="<%= contextPath %>/pages/user/faq.do">자주묻는 질문</a></li>
								<li><a  class="link_aside" target="_blank"
									onclick="numbermodal();">이모티콘 일련번호 입력하기</a></li>
								<li><a href="<%=contextPath %>/pages/loginlogout_kakao.do" class="link_aside" id="logout" >로그아웃</a></li>
							</ul>
						</div>
						<div class="wrap_copyright">
							<a class="link_shop" href="<%= contextPath %>/pages/home/home.do"><span
								class="ico_comm ico_menulogo">카카오이모티콘 샵</span></a><a
								href="https://www.kakaocorp.com" class="link_corp">@ kakaoCorp</a>

						</div>
					</div>
					<div class="dimmed_menu" style="display: none"></div>
				</c:if>


				<c:if test="${ not empty sessionScope.email }">
				<%-- <c:if test="${ not empty param.id }"> --%>
					<div class="wrap_menu" id=logonmenu style="display: none">
						<div class="inner_menu">
							<c:forEach var="memberList" items="${ memberList }">
							<c:if test="${ memberList.m_id eq sessionScope.email }">
								<%-- <c:if test="${ memberList.m_id eq param.id }">  --%>
									<span class="wrap_profile">
										<span class="wrap_thumb">
											<span class="inner_thumb">
												<img class="thumb_user"
												src="${ memberList.m_pimg }"
												alt="사용자">
											</span>
										</span>
									<span class="wrap_name">
										<span class="txt_name">${ memberList.m_nn }</span>
										<span class="txt_email">${ memberList.m_id }</span>
									</span>
								</span>
								</c:if>
							</c:forEach>
							
							
						<strong
								class="screen_out">나의 이용정보</strong>
							<ul class="list_mymenu">
								<li><a class="link_mymenu"
									href="<%=contextPath %>/pages/mypage/purchases.do?id=email"><span
										class="ico_comm ico_buy"></span><span class="txt_mymenu">구매내역</span></a></li>
								<li><a class="link_mymenu"
									href="<%=contextPath %>/pages/mypage/received.do?id=email"><span
										class="ico_comm ico_gift"></span><span class="txt_mymenu">선물함</span></a></li>
								<li><a class="link_mymenu"
									href="<%=contextPath %>/pages/mypage/coupons.do?id=email">
									<span class="ico_comm ico_menunew">신규</span>
									<span class="ico_comm ico_coupon"></span>
									<span class="txt_mymenu">쿠폰함
											<c:if test="${not empty couponsList}">
												<!--   쿠폰리스트 핸들러에서 받아와야할듯? 개수 표시 -->
												<em class="txt_count">${fn:length(couponsList)}<span
													class="screen_out">개</span></em>
											</c:if>
											<c:if test="${empty couponsList}">
										
												<em class="txt_count">
													<span class="screen_out"></span>
												</em>
											</c:if>
									</span></a></li>
								<li><a class="link_mymenu"
									href="<%=contextPath %>/pages/mypage/likes.do?id=email"><span
										class="ico_comm ico_good"></span><span class="txt_mymenu">좋아요
										<c:if test="${not empty likesList}">
												<!--   쿠폰리스트 핸들러에서 받아와야할듯? 개수 표시 -->
												<em class="txt_count">${fn:length(likesList)}<span
													class="screen_out">개</span></em>
											</c:if>
											<c:if test="${empty likesList}">
												
												<em class="txt_count">
													<span class="screen_out"></span>
												</em>
											</c:if></span></a></li>
							</ul>
							<strong class="screen_out">kakao emoticon shop 메뉴</strong>
							<ul class="list_nav">
								<li><a class="link_nav" href="<%= contextPath %>/pages/home/home.do">홈</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/new/new_kakao.do">신규</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/hot/hot.do">인기</a></li>
								<li><a class="link_nav" href="<%= contextPath %>/pages/style/style.do">스타일</a></li>
							</ul>
							<ul class="list_aside">
								<li><a class="link_aside" href="<%= contextPath %>/pages/user/board.do">게시판</a></li>
								<li><a class="link_aside" href="<%= contextPath%>/pages/user/faq.do">자주묻는 질문</a></li>
								<li><a  class="link_aside" target="_blank"
									onclick="numbermodal()" style="cursor:pointer">이모티콘 일련번호 입력하기</a></li>
								<li><a href="<%= contextPath %>/pages/login/logout.do" class="link_aside" id="logout">로그아웃</a></li>
							</ul>
						</div>
						<div class="wrap_copyright">
							<a class="link_shop" href="<%= contextPath %>/pages/home/home.do"><span
								class="ico_comm ico_menulogo">카카오이모티콘 샵</span></a><a
								href="https://www.kakaocorp.com" class="link_corp">@ kakaoCorp</a>
						</div>
					</div>
					<div class="dimmed_menu" style="display: none"></div>
				</c:if>
				<div class="k_head">
					<button class="link_menu" id="side_open">
						<span class="ico_comm ico_menu">사이드메뉴 열기</span>
						<c:if test="${ not empty sessionScope.email }">
						<%-- <c:if test="${ not empty param.id }"> --%>
							<span class="ico_comm ico_new">new</span> 
						</c:if>
					</button>
					<a class="link_home" href="<%= contextPath %>/pages/home/home.do"><span class="ico_comm ico_home">홈으로
							이동</span></a>
					<h1 class="tit_logo">
						<a class="link_thome" href="<%= contextPath %>/pages/home/home.do">
							<span class="ico_comm ico_logo">kakao emoticon shop</span>
						</a> 
						<span class="ico_comm ico_logo">kakao emoticon shop</span>
					</h1>
					<strong class="tit_cont"></strong>
					<button class="link_search">
						<span class="ico_comm ico_search">검색하기</span>
					</button>
					 
					
					<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin'}">
								<%-- <c:if test="${ not empty param.id && param.id ne 'admin'}"> --%>
						<button class="link_my">
							<span class="wrap_thumb">
								<span class="inner_thumb">
									<c:forEach var="memberList" items="${ memberList }">
										<c:if test="${ memberList.m_id eq sessionScope.email }">
										<%-- <c:if test="${ memberList.m_id eq param.id }"> --%>
											<img class="thumb_user"
												src="${ memberList.m_pimg }"
												width="28px" height="28px" alt="사용자">
										</c:if>
									</c:forEach>
								</span>
							</span>
						</button>
					</c:if>
								
					<c:if test="${ empty sessionScope.email }">
								<%-- <c:if test="${ empty param.id || param.id eq 'admin' }"> --%>
						<button class="link_my" onclick="location.href='../login/login_kakao.do'">
							<span class="wrap_thumb">
								<span class="inner_thumb">
									<img class="thumb_user"
											src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
											width="28px" height="28px" alt="사용자">
								</span>
							</span>
						</button>
					</c:if>
					<c:if test="${ sessionScope.email eq 'admin' }">
						<button class="link_my" >
							<span class="wrap_thumb">
								<span class="inner_thumb">
										<img class="thumb_user"
												src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
												width="28px" height="28px" alt="사용자">
								</span>
							</span>
						</button>
					</c:if>

					<!-- 회원 로그인 후 프로필 클릭하면 보이는 프로필창 -->
					<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin' }">
					<%-- <c:if test="${ not empty param.id && param.id ne 'admin' }"> --%>
						<c:forEach var="memberList" items="${ memberList }">
							<c:if test="${ memberList.m_id eq sessionScope.email }">
							<%-- <c:if test="${ memberList.m_id eq param.id }"> --%>
								<div class="profile_layer">
		`							<span class="wrap_thumb"> 
										<span class="inner_thumb">
											<img class="thumb_user" src="${ memberList.m_pimg }" width="40px" height="40px" alt="사용자">
										</span>
									</span> 
									<span class="tit_thumb">${ memberList.m_nn }</span> 
									<span class="desc_email">${ memberList.m_id }</span>
									<button class="btn_logout">로그아웃</button>
								</div>
							</c:if>
						</c:forEach>
					</c:if>

					<!-- 관리자로 로그인할 경우, 프로필 창에 이모티콘 추가 삭제 버튼 -->
					<c:if test="${ sessionScope.email eq 'admin' }">
					<%-- <c:if test="${ param.id eq 'admin' }"> --%>
						<div class="profile_layer">
			               	<span class="tit_thumb">admin</span>
			               	<button class="btn_em_add" onclick="location.href='../add_delete/em_add.do'">이모티콘 추가</button>
			               	<button class="btn_em_delete" onclick="location.href='../add_delete/em_delete.do'">이모티콘 삭제</button>
			               	<button class="btn_em_logout">로그아웃</button>
		               </div>
		            </c:if>

					<!-- 로그인 한 경우, 쿠폰 발급 알림 -->
					<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin' }">
					<%-- <c:if test="${ not empty param.id && param.id ne 'admin' }"> --%>
		              	<div class="tooltip_layer">
		               		<div class="area_tooltip">
		               			<p class="layer_tooltip">
		               				<a class="link_tooltip" href="<%=contextPath %>/pages/mypage/coupons.do"><strong>항상 전상품 20% 할인</strong> 쿠폰이 발급되었습니다.</a>
		               			</p>
		               			<button class="btn_close_tt" aria-label="툴팁닫기">
		               				<span class="ico_comm ico_close"></span>
		               			</button>
		               		</div>
		               </div> 
	               </c:if>

				</div>

				<div class="search_wrap on" style="display:none">
					<div class="dim_layer"></div>
					<form class="search-box__form" action="<%= contextPath %>/pages/header/search.do">
						<div class="inner_search">
							<h3 class="screen_out">이모티콘 검색어 입력</h3>
							<div class="emoticon_sch">
								<div class="box_search">
									<input type="text" id="tfSearch" name="q"
										placeholder="이모티콘을 검색해보세요!" class="tf_search"
										autocomplete="off" value="">
									<button type="button" id="search_delete" class="btn_delete">
										<span class="ico_comm ico_schdelete">검색어 지우기</span>
									</button>
									<button type="submit" class="btn_search">
										<span class="ico_comm ico_sch">검색</span>
									</button>
								</div>
							</div>
							<button type="button" class="btn_schcancel">취소</button>
						</div>
					</form>
				</div>

				<nav id="kakaoGnb">
					<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
					<ul class="list_gnb">
						<!-- 해당 페이지에 클래스 on 넣기  -->
						<li class=""><a class="link_gnb" href="<%= contextPath %>/pages/home/home.do">홈</a></li>
						<li class=""><a class="link_gnb" href="<%= contextPath %>/pages/new/new_kakao.do">신규</a></li>
						<li class=""><a class="link_gnb" href="<%= contextPath %>/pages/hot/hot.do">인기</a></li>
						<li class=""><a class="link_gnb" href="<%= contextPath %>/pages/style/style.do">스타일</a></li>
					</ul>
				</nav>
			</div>
			
			
			
			
			<div id="kakaoContent" class="cont_notice"
		<c:if test="${ empty sessionScope.email}">
			style="padding-top:110px" </c:if>  >
				<div class="area_faq">
					<div class="section_top">
						<h2 class="tit_area">자주묻는 질문</h2>
						<div class="area_tabfaq">
							<strong class="screen_out">자주묻는질문 메인 메뉴</strong>
							<ul class="tab_faq">
								<li class=""><a class="link_tab" href="../user/faq.do">서비스안내</a>
								</li>
								<li class="on"><a class="link_tab" href="../user/faqSecession.do">가입탈퇴</a>
								</li>
								<li class=""><a class="link_tab" href="../user/faqServiceUse.do">서비스이용<span
										class="screen_out">선택됨</span></a></li>
								<li class=""><a class="link_tab" href="../user/faqCancel.do">결제취소/환불</a>
								</li>
								<li class=""><a class="link_tab" href="../user/faqEtc.do">기타</a></li>
							</ul>
						</div>
						<img class="img_faq"
							src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/img_faq.png"
							alt="자주묻는질문 이미지">
					</div>
					<div class="section_main">
						<strong class="screen_out">자주묻는질문 메뉴별 본문</strong>
						<ul class="list_faq">
							<li class="" id="qa1"><a href="#" class="link_board"> <span
									class="tit_board">카카오계정 비밀번호가 생각나지 않으면 어떻게 하나요?<span
										class="ico_comm ico_faqopen">답변 펼치기</span></span>
							</a>
								<div class="desc_board">
									<p>
										<span style="font-family: Arial;">카카오계정 비밀번호가 생각나지 않나요?
											아래 경로에서 확인 하실 수 있습니다.</span>
									</p>
									<p>
										<span style="font-family: Arial;"><br></span>
									</p>
									<p>
										<b><span
											style="font-family: Arial; font-size: 13px; white-space: pre-wrap;">∙
										</span><span style="font-family: Arial;">카카오톡을 사용중이신가요?</span></b><br>
									</p>
									<p>
										<span style="font-family: Arial;">카카오톡 앱 실행 &gt; [더보기]
											&gt; [내 프로필] &gt; [카카오계정] &gt; [계정 비밀번호 변경] &gt; '비밀번호가 기억나지
											않으세요?' 클릭</span>
									</p>
									<p>
										<span style="font-family: Arial;"><br></span>
									</p>
									<p>
										<b> <span
											style="font-family: Arial; font-size: 13px; white-space: pre-wrap;">∙
										</span> <span style="font-family: Arial;">카카오 웹사이트에서도 비밀번호를
												재설정 할 수 있습니다.</span>
										</b> <br>
									</p>
									<p>
										<span style="font-family: Arial;">카카오웹사이트(<a
											href="http://www.kakao.com/main" target="_blank" style="">
												<u>www.kakao.com/main</u>
										</a>)&nbsp;&gt; 카카오계정 관리 &gt; 로그인 화면에서 '비밀번호 찾기' 클릭
										</span>
									</p>
								</div></li>
							<li class="" id="qa2"><a href="#" class="link_board"> <span
									class="tit_board">'카카오 이모티콘샵'을 탈퇴할 수 있나요? <span
										class="ico_comm ico_faqopen">답변 펼치기</span></span>
							</a>
								<div class="desc_board">
									<p>
										<span style="font-family: Arial;">‘카카오 이모티콘샵’은 카카오계정과
											연동해서 이용하시는 서비스로서 별도의 가입이나 탈퇴가 없습니다. </span> <br>
									</p>
									<p>
										<span style="font-family: Arial;">카카오계정을 삭제하면 ‘카카오
											이모티콘샵’에서도 자동 탈퇴 처리됩니다.</span>
									</p>
									<p>
										<span style="font-family: Arial;">카카오계정을 삭제하시게 되면 ‘카카오
											이모티콘샵’의 모든 이용 내역과 데이터 (구매하기 및 선물하기 내역 등)도 삭제됩니다. </span>
									</p>
									<p>
										<span style="font-family: Arial;">삭제된 데이터는 복구가 불가능 하오니,
											카카오계정을 삭제하실 때에는 유의하여 주시기를 바랍니다.</span>
									</p>
								</div></li>
							<li class="" id="qa3"><a href="#" class="link_board"> <span
									class="tit_board">'카카오 이모티콘샵'은 어떻게 가입하나요? <span
										class="ico_comm ico_faqopen">답변 펼치기</span></span>
							</a>
								<div class="desc_board">
									<p>
										<span style="font-family: Arial;">카카오 이모티콘샵에 로그인 하시려면
											카카오계정이 필요합니다. </span><br>
									</p>
									<p>
										<span style="font-family: Arial;">카카오계정은 아래와 같은 방법으로
											확인하실 수 있습니다. </span>
									</p>
									<p>
										<span style="font-family: Arial;"><b>∙ 확인 방법 </b></span>
									</p>
									<p>
										<span style="font-family: Arial;">1) 카카오톡 &gt; [더보기]
											&gt; [프로필 관리] 진입<br>
										</span>
									</p>
									<p>
										<span style="font-family: Arial;">2) [카카오계정] 메뉴 선택<br></span>
									</p>
									<p>
										<span style="font-family: Arial;">또는 <br></span>
									</p>
									<p>
										<span style="font-family: Arial;">1) 카카오톡 &gt; [더보기]
											&gt; [설정]<br>
										</span>
									</p>
									<p>
										<span style="font-family: Arial;">2) [개인/보안] 메뉴<br>3)
											카카오계정 확인
										</span> <br>
									</p>
								</div></li>
						</ul>
					</div>
					<div id="kakaoFoot" class="foot_group ">
						<div class="area_footer">
							<h2 class="screen_out">서비스 이용정보</h2>
							<div class="service_info">
								<a class="link_service" href="/policy" target="_blank"
									rel="noreferrer">이용약관</a> <a class="link_service"
									href="https://billing-web.kakao.com/kbill/terms/service"
									target="_blank" rel="noreferrer">유료이용안내</a> <a
									class="link_service"
									href="https://www.kakao.com/policy/privacy" target="_blank"
									rel="noreferrer"> <strong class="dlnk_txt">개인정보처리방침</strong>
								</a> <a class="link_service" href="https://bizemoticon.kakao.com"
									target="_blank" rel="noreferrer">기업고객</a> <a
									class="link_service"
									href="https://cs.kakao.com/requests?category=278&amp;locale=ko&amp;node=30555&amp;service=94"
									target="_blank" rel="noreferrer">문의하기</a> <a
									class="link_service"
									href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1208147521"
									target="_blank" rel="noreferrer">공정위사업자정보</a> <a
									class="link_service" href="https://www.kakaocorp.com/page/"
									target="_blank" rel="noopener noreferrer"> <strong
									class="dlnk_txt">(주) 카카오</strong>
								</a>
								<p class="desc_service">카카오 이모티콘샵에서 판매되는 콘텐츠의 저작권은 콘텐츠 제공자에게
									있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 처벌될 수 있습니다.</p>
							</div>
							<div class="wrap_info">
								<strong class="tit_info"> <a class="link_info"
									href="https://www.kakaocorp.com/page/" target="_blank"
									rel="noopener noreferrer">(주) 카카오</a>
								</strong>
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

					<script>
						var count = $("ul > li").length;

						for (i = 1; i <= count; i++) {
							$("#qa" + i).click(function() {
								$(this).find(".desc_board").toggle();
							});
						}
					</script>
					
					<script type="text/javascript">
		/* 검색 관련 */

		// 검색 버튼 클릭 
		$(".link_search").on("click", function() {
			$(".search_wrap").css("display", "block");
			$(".k_head").css("z-index", "2");
			$("#kakaoGnb").css("position", "relative");
			$("#kakaoGnb").css("z-index", "1");
			$(".link_search").css({
				"cursor" : "default",
				"display" : "none"
			});
			$(".btn_delete").css({
				"cursor" : "default",
				"display" : "none"
			});
			$(".profile_layer").css("display", "none");
			$(".link_thome").css("margin-right", "44px");
		});

		//검색창 밖 클릭시 검색창 제거 + 입력했던 값 제거
		$(".dim_layer").on("click", function() {
			$(".search_wrap").css("display", "none");
			$(".link_search").css({
				"cursor" : "pointer",
				"display" : "block"
			});
			$(".tf_search").val("");
			$(".link_thome").css("margin-right", "0px");
		});

		//검색 삭제 버튼
		$(".tf_search").on("keyup", function() {
			$(".btn_delete").css("display", "");
		});

		// 검색어 삭제 
		$(".btn_delete").on("click", function() {
			$(".tf_search").val("");
			$(".btn_delete").css("display", "none");
		});

		
		/* 쿠폰알림창 */
		$(".btn_close_tt").on("click", function() {
			$(".tooltip_layer").css("display", "none");
		});

		/* 띠 배너 */
		//띠배너 닫기
		$(".btn_close_tb").on("click", function() {
			$(".kakaoTopbnr").css("display", "none");
			$(".emoticon_head").css("top", "0px");
			$(".search_wrap").css("top", "110px")
			$(".wrap_menu").css("top","0px");
	        $(".wrap_menu").css("height", "calc(100%)");
	        $("#kakaoContent").css("padding-top", "110px");
		});

		if (${ not empty sessionScope.email }) {
		//if (${ not empty param.id }) {
			$(".head_bnr .emoticon_head").css("top", "50px");
			$(".head_bnr .search_wrap").css("top", "160px");
		}

		/* 프로필 */
		$(".link_my").on("click", function() {
			$(".profile_layer").toggle();
		});
		
	</script>
<!--  -->
	<script>

	// 누르면 로그인 창 뜨도록 배경은 어둡게 
	$(".list_mymenu").click(function() {
	   $(".dimmed_layer").css("display", "block");
	    $("#alert_logon").css("display", "block");
	    $(".dimmed_menu").css("display", "block");
	});
	
	//어두운 부분 누르면 다시 돌아감
	$(".dimmed_layer").on("click", function() {
	   $(".alert_layer").css("display", "none");
	   $(".dimmed_layer").css("display","none");
	});
	// 로그아웃
	$(".btn_em_logout").on("click", function() {
		//sessionStorage.clear();  //세션 데이터 삭제
		
		location.href = "../login/logout.do";

		//location.reload(); //새로고침
	});
	
	$(".btn_logout").on("click", function() {
		//sessionStorage.clear();  //세션 데이터 삭제
		location.href = "../login/logout.do";

		//location.reload(); //새로고침
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
	

	//메뉴 열림
	 $("#side_open").on("click",function(){
		$(".wrap_menu").css("display","block");
		$(".dimmed_menu").css("display","block");
		
		
		$(".wrap_menu").css("top","50px");
		$(".wrap_menu").css("height", "calc(94%)");
		
		if($(".kakaoTopbnr").is(":visible") == false){
			$(".wrap_menu").css("top","0px");
       		$(".wrap_menu").css("height", "calc(100%)");
		}
		 
	}); 
	
	$(".dimmed_menu").on("click", function() {
		$(".wrap_menu").css("display", "none");
		$(".dimmed_menu").css("display","none");
		
	}); 
	$(".btn_close_tb").on("click",function(){
		$(".wrap_menu").css("top","0px");
		$(".wrap_menu").css("height", "calc(100%)");
	})
	
	</script>

	<script>
	$(".btn_g").click(function() {
	   location.href="../login/login_kakao.do";  
	});
	if(${ empty sessionScope.email }){
		$(".wrap_profile").click(function() {
		   location.href="../login/login_kakao.do";  
		});
	};
	
	</script>

	<script>
	//이메일을 보내줌? 안보내줌
	function numbermodal(){
	   window.open("../sidemenu/numbermodal.jsp" ,"numbermodal", "width=380,height=650");
	}
	</script>
</body>
</html>
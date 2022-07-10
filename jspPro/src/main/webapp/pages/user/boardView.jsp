<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오 이모티콘샵</title>
<link rel="shortcut icon" href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico" />
<link rel="stylesheet" href="../../css/faq/faq.css">
<link rel="stylesheet" href="../../css/header/header.css">
<link rel="stylesheet"   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style>
a {
   text-decoration: none;
   color: black;
}

table {
   border-spacing: 1px;
   border-collapse: separate;
}

table, tr, td {
   border-radius: 3px;
   padding: 3px;
}
</style>


<script>
$(document).ready(function (){
     $("#btnModalDelete").click(function (){ 
        $("#myModal").modal("show");
     });
     
    
     $("#btnDelete").click(function (){ 
        if( confirm("정말 삭제합니까? ")){ 
           $("#form1").submit();
        }
     });
});
</script>

</head>
<body>
<div id="kakaoIndex"
		style="overflow: hidden; position: absolute; left: -9999px; width: 0; height: 1px; margin: 0; padding: 0;">
		<a href="#dkBody">본문 바로가기</a> <a href="#dkGnb">메뉴 바로가기</a>
	</div>
	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="default head_etc">
			<div id="kakaoHead" class="emoticon_head">
				<div class="k_head">
					<button class="link_menu" id="side_open">
						<span class="ico_comm ico_menu">사이드메뉴 열기</span>
					</button>
					<a class="link_home" href="/"> <span class="ico_comm ico_home">홈으로
							이동</span>
					</a>
					<h1 class="tit_logo">
						<a class="link_thome" href="/"> <span
							class="ico_comm ico_logo">kakao emoticon shop</span>
						</a> <span class="ico_comm ico_logo">kakao emoticon shop</span>
					</h1>
					<strong class="tit_cont"></strong>
					<button class="link_search">
						<span class="ico_comm ico_search">검색하기</span>
					</button>
					<button class="link_my">
						<span class="wrap_thumb"> <span class="inner_thumb"><img
								class="thumb_user"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
								width="28px" height="28px" alt="사용자"></span>
						</span>
					</button>
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<table width="600" style="margin: 50px auto" border="1">
      <tr>
         <td colspan="2" align="right">글보기</td>
      </tr>
      <tr>
         <td width="70" align="center">글번호</td>
         <td width="330">${ param.qa_seq }</td>
      </tr>
      <tr>
         <td width="70" align="center">조회수</td>
         <td width="330">${ dto.qa_readed }</td>
      </tr>
      <tr>
         <td width="70" align="center">작성자</td>
         <td width="330">${ dto.qa_id }</td>
      </tr>
      <tr>
         <td width="70" align="center">글제목</td>
         <td width="330">${ dto.qa_title }</td>
      </tr>
      <tr>
         <td width="70" align="center">글내용</td>
         <td width="330">
            <div style="width: 100%; height: 200px; overflo: scroll;">${ dto.qa_content }
            </div>
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
           <input type="button" value="글수정"
            onclick="location.href='../user/boardEdit.do?qa_seq=${ param.qa_seq }&page=${ param.page}&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }'">
           <%--  <input type="button" value="글삭제"
            onclick="location.href='delete.do?qa_seq=${dto.qa_seq }'"> --%>
            <a href="../user/boardDelete.do?qa_seq=${ param.qa_seq }">글삭제</a>
            <input type="button" value="답글"
            onclick="location.href='../user/boardWrite.do?qa_seq=${ param.qa_seq }&qa_ref=${param.qa_ref }&qa_step=${ param.qa_step }&qa_depth=${ param.qa_depth }'">  
         <input type="button" value="글목록"
            onclick="location.href='../user/board.do?page=${ param.page}&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }'">
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
          <input type="button" id="btnModalDelete"      value="모달창으로 글 삭제">
         </td>
      </tr>
   </table>

   <!-- 삭제  - 모달창  -->
   <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog" style="width: 350px">

         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <h4 class="modal-title">게시물 삭제</h4>
            </div>
            <div class="modal-body">
               <!-- Delete.jsp 복사 붙이기.  -->
               <div style="text-align: center">
                  <form id="form1" action="../user/boardDelete.do" method="post">
                     <table width="300px" border="1" align="center">
                        <tr>
                           <input   type="hidden" name="qa_seq" value="${ param.qa_seq }"></td>
                        </tr>
                        <tr>
                           <td><input type="button" id="btnDelete" value="글삭제">
                              <a href="../user/board.do?page=${param.page }">글목록</a></td>
                        </tr>
                     </table>
                  </form>
               </div>

            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
         </div>

      </div>
   </div>
   <br> <br> <br> 
  <div id="kakaoFoot" class="foot_group ">
				<div class="area_footer">
					<h2 class="screen_out">서비스 이용정보</h2>
					<div class="service_info">
						<a class="link_service" href="/policy" target="_blank"
							rel="noreferrer">이용약관</a> <a class="link_service"
							href="https://billing-web.kakao.com/kbill/terms/service"
							target="_blank" rel="noreferrer">유료이용안내</a> <a
							class="link_service" href="https://www.kakao.com/policy/privacy"
							target="_blank" rel="noreferrer"> <strong class="dlnk_txt">개인정보처리방침</strong>
						</a> <a class="link_service" href="https://bizemoticon.kakao.com"
							target="_blank" rel="noreferrer">기업고객</a> <a class="link_service"
							href="https://cs.kakao.com/requests?category=278&amp;locale=ko&amp;node=30555&amp;service=94"
							target="_blank" rel="noreferrer">문의하기</a> <a class="link_service"
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

</body>
</html>
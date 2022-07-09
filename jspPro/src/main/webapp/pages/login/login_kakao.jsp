<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 7. 6. - 오전 12:13:39</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="login01.css">
<link rel="stylesheet" href="login02.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script> 
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>

	#btnModal{
		cursor: pointer;
	}
	.container {
		width: 500px;
		margin: 40px auto;
		line-height: 16px;
	}
	
	h4, h5 {
		text-align: center;
	}
	
	h4 span, h5 span {
		color: black;
	}
	
	.n {
		font-size: 13px;
	}
	
	#signup {
		background-color: lightgray;
		color: black;
		border: 0;
		border-radius: 5px;
		padding: 10px 224px;
		width: 500px;
	}
	
	.bottom input {
		background-color: white;
		border: 0;
		color: teal;
		font-size: 16px;
	}
	
	i {
		color: lightgray;
	}
	
	#imail {
		position: absolute;
		top: 118px;
		margin: 0 470px;
	}
	
	#ipw {
		position: absolute;
		top: 167px;
		margin: 0 470px;
	}
	
	#iperson2 {
		position: absolute;
		top: 213px;
		margin: 0 470px;
	}
	
	input {
		border: 1px solid lightgray;
		border-radius: 3px;
	}
	
	.ui-widget-header{
		background-color: #fee500;
		height: 30px;
	}
	
	#ui-id-1{
		height: 30px;
		line-height: 30px
	}
</style>
<style>
.ico_account {
    display: inline-block;
    overflow: hidden;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
    vertical-align: top;
    background: url(http://localhost/jspPro/pages/login/login_ico.png);
}
.lab_check .ico_check {
    float: left;
    width: 20px;
    height: 20px;
    margin: 1px 8px 0 0;
    background-position: -30px -30px;
}
.set_login .lab_check .ico_check {
    margin: 0 8px 0 0;
}
</style>
</head>
<body class="account_comm login_type3">
<div id="kakaoWrap">
    <div id="kakaoHead" role="banner" style="display: none;">
  <h1 id="kakaoServiceLogo">
    <span class="ir_wa">kakao</span>
    <img id="brand" height="30" class="img_logo" alt="kakao" style="display: none;">
  </h1>
</div>	<!-- // kakaoHead -->
  <hr class="hide">

  
<div id="pageLogin" data-role="page" data-account-type="login_type3" class="login_content_wrap km-page-active" data-url="pageLogin">
  <div id="kakaoContent" class="cont_login" role="main">
    <div id="cMain">
      <div id="mArticle">
        <div class="login_banner">
  <div class="wrap_banner">
      <div class="left-banner">
<img src="https://mud-kage.kakao.com/dn/cZsZb6/btqe7S8McNW/lQxwaIu72DudwkbCHk1Ofk/image.png">
</div>

  </div>

  <div class="wrap_form">
    <h1 id="kakaoServiceLogo">
      <span class="ir_wa">kakao</span>
    </h1>
    <div class="login_kakaomail">
  <form id="login-form" action="login_kakao.do" method="post">
    <fieldset class="fld_login">
      <legend class="screen_out">카카오 계정 로그인 폼</legend>
      <input type="hidden" name="type" value="w">
        <input type="hidden" name="p" value="uD9nJ9nklwBbjc5jVoznvVd-DDyR5y0DYzu_lmuraUo">
        <input type="hidden" name="continue" value="https://e.kakao.com/item/new">
        <input type="hidden" name="service" value="">

      <div id="loginPhoneField" class="wrap_inp type_phone" style="display: none;">
        
<div class="item_inp item_select " style="width:85px"><!-- 선택시 select_open 클래스 추가 -->
  <input type="hidden" data-type="select" name="iso_code" class="lab_select" numberic_code="" data-label="+82" value="82" disabled="">
  <span class="screen_out">국가번호 선택상자</span>
  <span class="screen_out">옵션 </span>
  <a href="#none" class="link_selected">+82
    <span class="ico_account ico_arr">선택</span>
  </a><!-- 선택된 내용이 입력됩니다 -->
  <ul class="list_select">
     
  </ul>
</div>
        
<div class="item_tf item_inp phone_tf" style="">
    <label for="id_phone_number_1" class="lab_g lab_placeholder lab_txt" id="id_phone_number_1_label">
      <span aria-hidden="true">전화번호</span>
      <span class="screen_out">전화번호</span>
    </label>
  <input data-type="tel" class="tf_g " name="phone_number" type="tel" validator="phonenumber" id="id_phone_number_1" data-error-invalid="잘못된 형식의 전화번호입니다. 정확한 전화번호를 입력해 주세요." disabled="">



  <!-- 입력완료시 btn_del, info_count 삭제하고 btn_done 추가 -->
  <div class="util_tf">
      <button type="button" class="btn_del" style="display:none;">
        <span class="ico_account ico_del">삭제</span>
      </button>
    <span class="ico_account ico_done" style="display:none;">완료 버튼</span>



      <button type="button" class="btn_help">
        <span class="ico_account ico_help">툴팁 보기</span>
      </button>
      <div class="tooltip_comm">
        
          <p class="txt_tooltip">
            카카오톡에서 사용 중인 전화번호와 비밀번호를 입력하여 카카오계정으로 로그인할 수 있어요.<br><br>
            <a href="#" class="link_more">[카카오톡 &gt; 내 프로필 &gt; 프로필 관리]</a>
            에서 카카오톡 전화번호를 확인해 보세요.
          </p>
          <span class="ico_account ico_arr"></span>

      </div>

  </div>

    <p class="info_error"></p>
</div>      </div>

      <div id="loginEmailField">
        <!-- weblogin.email_or_phone_label -->
    
<div class="item_tf item_inp" style="">
    <label for="id_email_2" class="lab_g lab_placeholder lab_txt" id="id_email_2_label">
     
    </label>
  <input data-type="text" class="tf_g tf_email" placeholder="카카오메일 아이디, 이메일, 전화번호" name="email" validator="email_or_phone_or_kakaoid" type="text" id="id_email_2" data-error-empty="카카오계정을 입력해 주세요." data-error-invalid="카카오계정을 정확하게 입력해 주세요.">
 
<script>
	
</script>

  <!-- 입력완료시 btn_del, info_count 삭제하고 btn_done 추가 -->
  <div class="util_tf">
      <button type="button" class="btn_del" style="display: none;">
        <span class="ico_account ico_del">삭제</span>
      </button>
    <span class="ico_account ico_done" style="display:none;">완료 버튼</span>


        <span class="info_mail" style="display: none;">@kakao.com</span>


  </div>

</div>
        <p class="info_tip" style="display:none">
          <span class="txt_tip">TIP</span>
          카카오메일이 있다면 메일 아이디만 입력해 보세요.
        </p>
      </div>

      
<div class="item_tf item_inp" style="">
    <label for="id_password_3" class="lab_g lab_placeholder lab_txt" id="id_password_3_label">

    </label>
  <input data-type="password" class="tf_g " placeholder="비밀번호" name="password" type="password" validator="password" id="id_password_3" data-error-empty="카카오계정 비밀번호를 입력해 주세요.(영문자/숫자/특수문자)" data-error-invalid="비밀번호가 올바르지 않습니다." autocomplete="off">

<script>
	
</script>

  <!-- 입력완료시 btn_del, info_count 삭제하고 btn_done 추가 -->
  <div class="util_tf">
      <button type="button" class="btn_del" style="display: none;">
        <span class="ico_account ico_del">삭제</span>
      </button>
    <span class="ico_account ico_done" style="display:none;">완료 버튼</span>




  </div>

    <p class="info_error"></p>
</div>

      <div class="set_login">
        <div class="item_inp item_check ">
          <input type="checkbox" id="staySignedIn" name="stay_signed_in" value="true" class="inp_g inp_check">

          <label class="lab_g lab_check" for="staySignedIn">
            <span class="ico_account ico_check"></span>
            <span tabindex="-1" style="outline: none" class="txt_check tooltip_link" data-target=".set_login .item_check">로그인 상태 유지</span>
          </label>
          <div class="tooltip_comm tooltip_login">
            <p class="txt_tooltip">개인정보 보호를 위해 개인 기기에서만 사용해 주세요.</p>
            <a href="https://cs.kakao.com/helps?category=166&amp;locale=ko&amp;service=52&amp;articleId=1073192624&amp;device=423" class="link_more" target="_blank">도움말 보기</a>
            <span class="ico_account ico_arr"></span>
          </div>
        </div>
        <!--div class="item_inp item_security">
          <a href="#" class="link_security">IP보안</a>
          <input type="radio" id="inpSecurity" name="gender" class="inp_g inp_security">
          <label class="lab_g lab_security" for="inpSecurity">
            <span class="screen_out">IP보안 설정</span>
            <span class="txt_security">OFF</span>
          </label>
        </div -->
      </div>

      <div class="wrap_captcha" style="display:none;">
        <div id="recaptcha"></div>
      </div>

      <div id="countryCodeRequired" class="box_desc box_desc3" style="display: none;">
        <p class="desc_error">카카오계정 혹은 비밀번호가 일치하지 않습니다.&nbsp;입력한 내용을 다시 확인해 주세요.</p>
        <p class="desc_info">혹시 국가번호를 모르신다면?</p>
        <a href="#" class="link_more">국가번호 찾기</a>
      </div>

    <div id="errorAlert" class="box_desc" style="display: none;" role="alert">
      <p class="desc_error"></p>
    </div>
    <div class="wrap_btn">
      <input class="btn_g btn_confirm submit" id="login_check"  type="submit" value="로그인">
    </div>
  </fieldset>
</form>

  <div class="info_user">
      
    <ul class="list_user">
    <a id="btnModal" class="link_join">회원가입</a>
    <!-- 
      <li>
        <a href="/weblogin/find_password?continue=https%3A%2F%2Fe.kakao.com%2Fitem%2Fnew" class="link_user">비밀번호 찾기</a>
      </li>
       -->
    </ul>
  </div>
</div>


  </div>
</div>

      </div>
    </div><!--// mArticle -->
  </div><!-- // cMain -->
  <ul class="wrap_message" data-role="message" style="display:none">
    <li class="ip_security_login_error">
      IP주소가 변경되어 로그아웃되었습니다.<br>
      IP주소가 자주 변경되는 환경이라면 [로그인 상태 유지] 옵션을 활성화한 후 로그인해 주세요.

    </li>
  </ul>
</div>



<div id="layerAgreeToExitDormancy" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">카카오 서비스를 1년 이상 이용하지 않아 개인정보 보호를 위해 카카오계정이 휴면상태로 전환되었습니다. </strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">다음 버튼을 누르면 카카오계정 휴면이 해제되고 서비스를 정상적으로 이용할 수 있습니다. </div>

  <div class="wrap_btn">
    <button type="button" class="btn_confirm btn_g">확인</button>
    <button type="button" class="btn_type1 btn_cancel cancel btn_g">취소</button>
</div>
</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="layerAgreeToUseTalkPhoneNumber" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">변경된 개인정보 수집 및 이용에 동의 후 이용할 수 있는 기능입니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">동의하지 않아도 이메일 주소로 로그인할 수 있습니다.</div>
  <span class="txt_more"><a href="#" target="_blank" class="link_more">자세히 보기</a></span>

  <div class="wrap_btn">
    <button type="button" class="btn_confirm btn_g">동의합니다.</button>
</div>
</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="layerInvalidToUseTalkPhoneNumber" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">변경된 개인정보 수집 및 이용에 동의 후 이용할 수 있는 기능입니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">[카카오톡 &gt; 더보기 &gt; 설정 &gt; 개인/보안 &gt; 카카오계정] 메뉴를 확인해 주세요. </div>

  <div class="wrap_btn">
    <button type="button" class="btn_confirm btn_g">확인</button>
</div>
</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>



<div id="alreadyExistEmailLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">이미 등록된 이메일 주소입니다.</strong>
</div>
<div class="layer_body ">
  

  <div class="txt_layer">연락처는 카카오계정 이메일과 다른 이메일로 등록해야 합니다.</div>
  <div class="wrap_btn">
    <button type="button" class="close btn_g">확인</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>
<!--인증 메일 재발송: 닫기 버튼-->

<div id="resendEmailPasscodeLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">인증메일을 받지 못하셨나요?</strong>
</div>
<div class="layer_body ">
  

  <div class="txt_layer">1. 이메일을 올바르게 입력하셨는지 다시한번 확인해보세요. <br> 2. 스팸편지함 혹은 휴지통 등의 편지함을 확인해보세요.<br> 3. 메일서비스에 따라 메일이 도착하기 까지 다소 시간이 걸릴 수 있습니다. <br><br> 하루가 지나도 이메일이 오지 않으면, 카카오 고객센터에 문의해 주세요.</div>
  <div class="wrap_btn">
    <button type="button" class="submit btn_confirm btn_g">인증메일 재발송</button>
    <button type="button" class="btn_type1 close btn_g">닫기</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>
<!--인증 메일 재발송 (캠페인용) - 닫기 버튼 대신 다른 이메일로 인증-->

<div id="resendEmailPasscodeOrOtherLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">인증메일을 받지 못하셨나요?</strong>
</div>
<div class="layer_body ">
  

  <div class="txt_layer">1. 이메일을 올바르게 입력하셨는지 다시한번 확인해보세요. <br> 2. 스팸편지함 혹은 휴지통 등의 편지함을 확인해보세요.<br> 3. 메일서비스에 따라 메일이 도착하기 까지 다소 시간이 걸릴 수 있습니다. <br><br> 하루가 지나도 이메일이 오지 않으면, 카카오 고객센터에 문의해 주세요.</div>
  <div class="wrap_btn">
    <button type="button" class="submit btn_confirm btn_g">인증메일 재발송</button>
    <button type="button" class="btn_type1 close btn_g">다른 이메일로 인증</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<!--인증 번호 재발송 - 닫기 버튼-->

<div id="resendPhoneNumberPasscodeLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">인증번호를 받지 못하셨나요?</strong>
</div>
<div class="layer_body ">
  

  <div class="txt_layer">전화번호가 정확한지 확인해 주세요.</div>
  <div class="wrap_btn">
    <button type="button" class="submit btn_confirm btn_g">인증번호 재발송</button>
    <button type="button" class="btn_type1 close btn_g">닫기</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>
<!--인증 번호 재발송 (캠페인용) - 닫기 버튼 대신 다른 이메일로 인증-->

<div id="resendPhoneNumberPasscodeOrOtherLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">인증번호를 받지 못하셨나요?</strong>
</div>
<div class="layer_body ">
  

  <div class="txt_layer">전화번호가 정확한지 확인해 주세요.</div>
  <div class="wrap_btn">
    <button type="button" class="submit btn_confirm btn_g">인증번호 재발송</button>
    <button type="button" class="btn_type1 close btn_g">다른 전화번호로 인증</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="notAgreeUserAlertLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      
<div class="layer_body ">
  

  <div class="txt_layer">카카오계정을 통합한 후 연락처를 등록할 수 있습니다.
모바일의 계정관리 &gt; Daum 또는 Melon 메뉴에서 카카오계정을 통합해주세요. </div>
  <div class="wrap_btn">
    <button type="button" class="btn_type1 close_btn btn_g">닫기</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="blockedDomainEmailLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      
<div class="layer_body ">
  

  <div class="txt_layer">서비스 정책에 따라 연락처로 사용할 수 없는 이메일 도메인입니다. 다른 이메일을 사용해 주세요.</div>
  <div class="wrap_btn">
    <button type="button" class="close btn_g">확인</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="duplicateContactEmailLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">연락처 정보를 확인해 주세요.</strong>
</div>
<div class="layer_body ">
  

  <div class="txt_layer">이미 연락처로 등록된 이메일입니다.</div>
  <div class="wrap_btn">
    <button type="button" class="close btn_g">확인</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>


<div id="duplicateContactPhoneNumberLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">연락처 정보를 확인해 주세요.</strong>
</div>
<div class="layer_body ">
  

  <div class="txt_layer">이미 연락처로 등록된 전화번호입니다.</div>
  <div class="wrap_btn">
    <button type="button" class="close btn_g">확인</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="alreadyExistUserRegContactLayer" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">연락처 정보를 확인해 주세요.</strong>
</div>
<div class="layer_body ">
  

  <div class="txt_layer">이미 등록된 연락처가 있습니다.</div>
  <div class="wrap_btn">
    <button type="button" class="close btn_g">확인</button>
</div>

</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>
<div data-role="page" id="pageTwoStepVerificationTms">
  <div id="kakaoHead" role="banner">
    <h1 id="kakaoServiceLogo">
      <span class="ir_wa">kakao</span>
    </h1>
  </div>

  <div id="kakaoContent" class="cont_login" role="main">
    <div id="cMain">
      <div id="mArticle">
        <h2 id="kakaoBody" class="tit_certify">2단계 인증을 진행해 주세요.</h2>
        <div class="login_certify">
          <p class="txt_certify">
            카카오톡으로 로그인 확인 메시지가 전송되었습니다.
            <br>전송된 카카오톡 메시지에서 확인 버튼을 눌러 주세요.
          </p>

          <div class="box_certify">
            <span class="screen_out"></span>
            <strong class="info_address formatted_contact"></strong>
            <span>남은시간 </span>
            <span class="left_time"></span>
<!--            <button class="btn_g didnt_receive" type="button"></button>-->
          </div>

          <form>
            <div class="item_inp item_check"> <!-- 선택되면 item_on 클래스 추가 -->
              <input type="checkbox" name="remember_browser" id="rememberBrowserTms" class="inp_g inp_check">
              <label for="rememberBrowserTms" class="lab_g lab_check">
                <span class="ico_account ico_check"></span>
                <span class="txt_check">이 브라우저에서 2단계 인증 사용 안 함</span>
              </label>
            </div>

            <div class="wrap_btn">
              <button class="btn_g btn_confirm submit"type="button">확인</button>
            </div>
          </form>

          <a href="#" class="link_certify verify_with_email">이메일로 인증하기</a>
        </div>
      </div><!--// mArticle -->
    </div><!-- // cMain -->
  </div>
</div>


<div data-role="page" id="pageTwoStepVerificationSms">
  <div id="kakaoHead" role="banner">
    <h1 id="kakaoServiceLogo">
      <span class="ir_wa">kakao</span>
    </h1>
  </div>

  <div id="kakaoContent" class="cont_login" role="main">
    <div id="cMain">
      <div id="mArticle">
        <h2 id="kakaoBody" class="tit_certify">2단계 인증을 진행해 주세요.</h2>
        <div class="login_certify">
          <p class="txt_certify">
            설정한 전화번호로 인증번호가 발송되었습니다.
            <br>인증번호를 입력해 주세요.
          </p>

          <div class="box_certify">
            <span class="screen_out"></span>
            <strong class="info_address formatted_contact"></strong>
            <span>남은시간 </span>
            <span class="left_time"></span>
          </div>

          <form>
            
<div class="item_tf item_inp" style="">
    <label for="id_passcode_4" class="lab_g lab_placeholder lab_txt" id="id_passcode_4_label">
      <span aria-hidden="true">인증번호 입력</span>
      <span class="screen_out">인증번호 입력</span>
    </label>
  <input data-type="text" class="tf_g tf_g" type="text" name="passcode" validator="sms_passcode" maxlength="6" data-input="number" data-error-target="#pageTwoStepVerificationSms ._sms_error" id="id_passcode_4" data-error-empty="휴대전화로 발송된 6자리의 인증번호를 입력해 주세요." data-error-invalid="입력하신 인증번호가 올바르지 않습니다. 다시 확인해 주세요.">


    <button class="btn_g btn_g1 didnt_receive" type="button">재요청</button>

  <!-- 입력완료시 btn_del, info_count 삭제하고 btn_done 추가 -->
  <div class="util_tf">
    <span class="ico_account ico_done" style="display:none;">완료 버튼</span>




  </div>

    <p class="info_error"></p>
</div>
            <p class="info_error _sms_error"></p>

            <div class="item_inp item_check"> <!-- 선택되면 item_on 클래스 추가 -->
              <input type="checkbox" name="remember_browser" id="rememberBrowserSms" class="inp_g inp_check">
              <label for="rememberBrowserSms" class="lab_g lab_check">
                <span class="ico_account ico_check"></span>
                <span class="txt_check">이 브라우저에서 2단계 인증 사용 안 함</span>
              </label>
            </div>

            <div class="wrap_btn">
              <button class="btn_g btn_confirm submit">확인</button>
            </div>
          </form>

          <a href="#" class="link_certify verify_with_email">이메일로 인증하기</a>
        </div>
      </div><!--// mArticle -->
    </div><!-- // cMain -->
  </div>
</div>


<div data-role="page" id="pageTwoStepVerificationEmail">
  <div id="kakaoHead" role="banner">
    <h1 id="kakaoServiceLogo">
      <span class="ir_wa">kakao</span>
    </h1>
  </div>

  <div id="kakaoContent" class="cont_login" role="main">
    <div id="cMain">
      <div id="mArticle">
        <h2 id="kakaoBody" class="tit_certify">2단계 인증을 진행해 주세요.</h2>
        <div class="login_certify">
          <p class="txt_certify">
            설정한 이메일로 인증번호가 발송되었습니다.
            <br>인증번호를 입력해 주세요.
          </p>

          <div class="box_certify">
            <span class="screen_out"></span>
            <strong class="info_address formatted_contact"></strong>
            <span>남은시간 </span>
            <span class="left_time"></span>
          </div>

          <form>
            
<div class="item_tf item_inp" style="">
    <label for="id_passcode_5" class="lab_g lab_placeholder lab_txt" id="id_passcode_5_label">
      <span aria-hidden="true">인증번호 입력</span>
      <span class="screen_out">인증번호 입력</span>
    </label>
  <input data-type="text" class="tf_g tf_g" type="text" name="passcode" validator="passcode" maxlength="8" data-input="number" data-error-target="#pageTwoStepVerificationEmail ._email_error" id="id_passcode_5" data-error-empty="이메일로 발송된 8자리 인증번호를 입력해 주세요." data-error-invalid="입력하신 인증번호가 올바르지 않습니다. 다시 확인해 주세요.">


    <button class="btn_g btn_g1 didnt_receive" type="button">재요청</button>

  <!-- 입력완료시 btn_del, info_count 삭제하고 btn_done 추가 -->
  <div class="util_tf">
    <span class="ico_account ico_done" style="display:none;">완료 버튼</span>




  </div>

    <p class="info_error"></p>
</div>
            <p class="info_error _email_error"></p>

            <div class="item_inp item_check"> <!-- 선택되면 item_on 클래스 추가 -->
              <input type="checkbox" name="remember_browser" id="rememberBrowserEmail" class="inp_g inp_check">
              <label for="rememberBrowserEmail" class="lab_g lab_check">
                <span class="ico_account ico_check"></span>
                <span class="txt_check">이 브라우저에서 2단계 인증 사용 안 함</span>
              </label>
            </div>

            <div class="wrap_btn">
              <button class="btn_g btn_confirm submit">확인</button>
            </div>
          </form>

          <a href="#" class="link_certify back_to_start">처음으로 돌아가기</a>
        </div>
      </div><!--// mArticle -->
    </div><!-- // cMain -->
  </div>
</div>




<div id="layerLoginTwoStepVerificationBlocked" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">2단계 인증 로그인이 거절되었습니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">로그인되어 있는 카카오톡 정보 확인 후 다시 시도해 주세요.</div>

  <div class="wrap_btn">
    <button type="button" class="btn_confirm btn_g">확인</button>
</div>
</div>
    </div>
  </div>
</div>

<div id="layerLoginTwoStepVerificationExpired" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">로그인 유효시간이 만료되었습니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">처음부터 다시 시도해 주세요.</div>

  <div class="wrap_btn">
    <button type="button" class="btn_confirm btn_g">확인</button>
</div>
</div>
    </div>
  </div>
</div>

<div id="layerResendPhoneNumberPasscode" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">인증번호를 받지 못하셨나요?</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">
    통신사에 따라 인증번호 발송이 늦어질 수 있습니다.
    <br>설정된 전화번호를 이용할 수 없다면 이메일로 인증을 진행해 주세요.
</div>
  <div class="wrap_btn">
    <button type="button" class="submit btn_confirm btn_g">확인</button>
    <button type="button" class="close btn_g">닫기</button>
</div>
</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="layerResendEmailPasscode" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">인증메일을 받지 못하셨나요?</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">1. 설정된 이메일 정보를 다시한번 확인해보세요. <br> 2. 스팸편지함 혹은 휴지통 등의 편지함을 확인해보세요.<br> 3. 메일서비스에 따라 메일이 도착하기 까지 다소 시간이 걸릴 수 있습니다. <br><br> 하루가 지나도 이메일이 오지 않으면, 카카오 고객센터에 문의해 주세요.</div>

  <div class="wrap_btn">
    <button type="button" class="submit btn_confirm btn_g">인증메일 재발송</button>
    <button type="button" class="close btn_g">닫기</button>
</div>
</div>
    </div>
  </div>
</div>

<div id="layerExceedLoginRequestLimit" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">2단계 인증 확인 횟수를 초과했습니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">1시간 후에 다시 시도해 주세요.</div>

  <div class="wrap_btn">
    <button type="button" class="btn_confirm btn_g">확인</button>
</div>
</div>
    </div>
  </div>
</div>

<div id="layerAdditionalAuthRequired" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">아직 로그인 확인이 되지 않았습니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">전송된 카카오톡 메시지에서 로그인 확인을 먼저 진행해 주세요.</div>

  <div class="wrap_btn">
    <button type="button" class="btn_confirm btn_g">확인</button>
</div>
</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>
<div data-role="page" id="pageAllowedCountryTmsLogin">
  <div id="kakaoHead" role="banner">
    <h1 id="kakaoServiceLogo">
      <span class="ir_wa">kakao</span>
    </h1>
  </div>

  <div id="kakaoContent" class="cont_login" role="main">
    <div id="cMain">
      <div id="mArticle">
        <div class="login_nation">
          <h2 id="kakaoBody" class="tit_certify">허용하지 않은 국가에서 로그인이 시도되었습니다.</h2>
          <div class="login_certify">
            <p class="txt_certify">
              로그인을 완료하시려면 카카오톡으로 전송된 로그인 확인 메시지에서 확인 버튼을 눌러 주세요.
            </p>

            <div class="box_certify">
              <span class="screen_out">전화번호</span>
              <strong class="info_address formatted_contact"></strong>
              <span>남은시간 </span>
              <span class="left_time"></span>
            </div>

            <div class="allowed_country_exceed">
              <strong class="tit_excess">
                <span class="ico_account ico_warning"></span>
                로그인 허용 국가 개수 초과 (최대 3개)
              </strong>
              <p class="desc_excess">
                현재 접속한 국가를 로그인 허용 국가로 등록하시려면 국가별 로그인 제한 메뉴에서 등록된 기존 국가를 삭제한 후 등록할 수 있습니다.
              </p>
            </div>

            <form>
              <div id="currentCountryBoxOfTms" class="item_inp item_check"> <!-- 선택되면 item_on 클래스 추가 -->
                <input type="checkbox" id="isAllowedCountryTms" class="inp_g inp_check">
                <label for="isAllowedCountryTms" class="lab_g lab_check">
                  <span class="ico_account ico_check"></span>
                  <span class="txt_check">
                    현재 접속한 국가를 로그인 허용 국가에 추가
                    <br>
                    <span class="txt_sub">(접속 국가: %{country})</span>
                  </span>
                </label>
              </div>
            </form>

            <a href="#" class="link_certify verify_with_email">이메일로 인증하기</a>
          </div>
        </div>
      </div><!--// mArticle -->
    </div><!-- // cMain -->
  </div>
</div>


<div data-role="page" id="pageAllowedCountryAvailableEmails">
  <div id="kakaoHead" role="banner">
    <h1 id="kakaoServiceLogo">
      <span class="ir_wa">kakao</span>
    </h1>
  </div>

  <div id="kakaoContent" class="cont_login" role="main">
    <div id="cMain">
      <div id="mArticle">
        <form>
          <div class="login_nation">
            <h2 id="kakaoBody" class="tit_certify">허용하지 않은 국가에서 로그인이 시도되었습니다.</h2>
            <div class="login_certify">
              <p class="txt_certify">
                인증 가능한 이메일을 선택해 주세요.
              </p>

              <div class="box_certify">
                <span class="screen_out">인증 가능 이메일</span>
                <div class="wrap_inp email_list">
                  <!--Email List-->
                </div>
              </div>
            </div>

            <p class="desc_info">선택한 이메일로 발송된 인증번호를 입력한 후 로그인 하실 수 있습니다.</p>
            <div class="wrap_btn">
              <button class="btn_g submit">다음</button>
            </div>
          </div>
        </form>
      </div>
    </div><!--// mArticle -->
  </div><!-- // cMain -->
</div>


<div data-role="page" id="pageAllowedCountryEmailLogin">
  <div id="kakaoHead" role="banner">
    <h1 id="kakaoServiceLogo">
      <span class="ir_wa">kakao</span>
    </h1>
  </div>

  <div id="kakaoContent" class="cont_login" role="main">
    <div id="cMain">
      <div id="mArticle">
        <div class="login_nation">
          <h2 id="kakaoBody" class="tit_certify">허용하지 않은 국가에서 로그인이 시도되었습니다.</h2>
          <div class="login_certify">
            <p class="txt_certify">
              로그인을 완료하시려면 아래 이메일로 발송된 인증번호를 입력해 주세요.
            </p>

            <div class="box_certify">
              <span class="screen_out">전화번호</span>
              <strong class="info_address formatted_contact"></strong>
              <span>남은시간 </span>
              <span class="left_time"></span>
            </div>

            <form>
              
<div class="item_tf item_inp" style="">
    <label for="id_passcode_6" class="lab_g lab_placeholder lab_txt" id="id_passcode_6_label">
      <span aria-hidden="true">인증번호 입력</span>
      <span class="screen_out">인증번호 입력</span>
    </label>
  <input data-type="text" class="tf_g tf_g" type="text" name="passcode" validator="passcode" maxlength="8" data-input="number" number-only="" data-error-empty="이메일로 발송된 8자리 인증번호를 입력해 주세요." data-error-invalid="입력하신 인증번호가 올바르지 않습니다. 다시 확인해 주세요." data-error-target="#pageAllowedCountryEmailLogin .info_error" id="id_passcode_6">


    <button class="btn_g btn_g1 didnt_receive" type="button">재요청</button>

  <!-- 입력완료시 btn_del, info_count 삭제하고 btn_done 추가 -->
  <div class="util_tf">
    <span class="ico_account ico_done" style="display:none;">완료 버튼</span>




  </div>

    <p class="info_error"></p>
</div>

              <div id="currentCountryBoxOfEmail" class="item_inp item_check"> <!-- 선택되면 item_on 클래스 추가 -->
                <input type="checkbox" name="is_allowed_country_email" id="isAllowedCountryEmail" class="inp_g inp_check">
                <label for="isAllowedCountryEmail" class="lab_g lab_check">
                  <span class="ico_account ico_check"></span>
                  <span class="txt_check">
                    현재 접속한 국가를 로그인 허용 국가에 추가
                    <br>
                    <span class="txt_sub">(접속 국가: %{country})</span>
                  </span>
                </label>
              </div>

              <div class="allowed_country_exceed">
                <strong class="tit_excess">
                  <span class="ico_account ico_warning"></span>
                  로그인 허용 국가 개수 초과 (최대 3개)
                </strong>
                <p class="desc_excess">
                  현재 접속한 국가를 로그인 허용 국가로 등록하시려면 국가별 로그인 제한 메뉴에서 등록된 기존 국가를 삭제한 후 등록할 수 있습니다.
                </p>
              </div>

              <div class="wrap_btn">
                <button class="btn_g btn_confirm submit">확인</button>
              </div>
            </form>

            <a href="#" class="link_certify back_to_start">처음으로 돌아가기</a>
          </div>
        </div>
      </div><!--// mArticle -->
    </div><!-- // cMain -->
  </div>
</div>


<!--Template-->
<script id="allowedCountryEmailTemplate" type="text/template">
  <div>
    <div class="item_inp item_radio">
      <input type="radio" name="email" class="inp_g inp_radio">
      <label class="lab_g lab_radio">
        <span class="ico_account ico_radio"></span>
        <span class="txt_radio"></span>
      </label>
    </div>
  </div>
</script>


<!--Dialog-->

<div id="layerLoginAllowedCountryBlocked" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">로그인이 차단되었습니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">카카오톡에서 직접 로그인하고 있지 않음을 선택하였으므로 지금 로그인할 수 없습니다.</div>

  <div class="wrap_btn">
    <button type="button" class="submit btn_g">확인</button>
</div>
</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="layerLoginAllowedCountryExpired" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">로그인 유효시간이 만료되었습니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">처음부터 다시 시도해 주세요.</div>

  <div class="wrap_btn">
    <button type="button" class="submit btn_g">확인</button>
</div>
</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>

<div id="layerLoginAllowedCountryExceed" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="tit_layer">해외 로그인 요청 확인 횟수를 초과했습니다.</strong>
</div>
<div class="layer_body ">
  
  <div class="txt_layer">일정 시간이 지난 후 처음부터 다시 시도해 주세요.</div>

  <div class="wrap_btn">
    <button type="button" class="submit btn_g">확인</button>
</div>
</div>
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>
    </div>
  </div>
</div>
<!-- 
<script type="text/javascript">
    $(document).ready(function () {
        var options = jQuery.extend({}, JSON.parse(kakao.weblogin.base64.decode("eyJpc1NkayI6ZmFsc2UsIm5lZWRDYXB0Y2hhIjpmYWxzZSwiY29udGludWVXZWJsb2dpbiI6dHJ1ZSwiY29udGludWVfdXJsIjoiaHR0cHM6Ly9lLmtha2FvLmNvbS9pdGVtL25ldyIsImZpbmRfcGFzc3dvcmRfdXJsIjoiL3dlYmxvZ2luL2ZpbmRfcGFzc3dvcmQ/Y29udGludWU9aHR0cHMlM0ElMkYlMkZlLmtha2FvLmNvbSUyRml0ZW0lMkZuZXdcdTAwMjZsYW5nPWtvIiwiZmluZF9hY2NvdW50X3VybCI6Ii93ZWJsb2dpbi9maW5kX2FjY291bnRfZ3VpZGU/Y29udGludWU9aHR0cHMlM0ElMkYlMkZlLmtha2FvLmNvbSUyRml0ZW0lMkZuZXdcdTAwMjZsYW5nPWtvIiwicmVzdHJpY3RlZF9yZWFzb25fdXJsIjoiL2tha2FvX2FjY291bnRzL3Jlc3RyaWN0ZWRfcmVhc29uP2NvbnRpbnVlPWh0dHBzJTNBJTJGJTJGZS5rYWthby5jb20lMkZpdGVtJTJGbmV3XHUwMDI2bGFuZz1rbyIsImxvZ2luX3VybCI6Ii9sb2dpbj9jb250aW51ZT1odHRwcyUzQSUyRiUyRmUua2FrYW8uY29tJTJGaXRlbSUyRm5ldyIsInFyX2xvZ2luX3VybCI6Ii9xcl9sb2dpbj9jb250aW51ZT1odHRwcyUzQSUyRiUyRmUua2FrYW8uY29tJTJGaXRlbSUyRm5ldyIsImNyZWF0ZV9hY2NvdW50X3VybCI6Ii93ZWJsb2dpbi9jcmVhdGVfYWNjb3VudD9jb250aW51ZT1odHRwcyUzQSUyRiUyRmUua2FrYW8uY29tJTJGaXRlbSUyRm5ldyIsImNvbm5lY3RlZF9hcHBfdXJsIjoiL3dlYmxvZ2luL2FjY291bnQvcGFydG5lciIsIm1hbmFnZV90ZXJtc191cmwiOiIvd2VibG9naW4vYWNjb3VudC9zZXR0aW5nIiwidmVyaWZ5X2Zvcl9maW5kX3Bhc3N3b3JkX3VybCI6Ii92ZXJpZnkvbWFpbj9jb250aW51ZT1odHRwcyUzQSUyRiUyRmUua2FrYW8uY29tJTJGaXRlbSUyRm5ld1x1MDAyNmxhbmc9a28iLCJ2ZXJpZnlfZm9yX3Jlc2V0X3Bhc3N3b3JkX3VybCI6Ii92ZXJpZnkvbWFpbj9jb250aW51ZT1odHRwcyUzQSUyRiUyRmUua2FrYW8uY29tJTJGaXRlbSUyRm5ld1x1MDAyNmxhbmc9a28iLCJ2ZXJpZnlfZm9yX2ZpbmRfYWNjb3VudF91cmwiOiIvdmVyaWZ5L21haW4/Y29udGludWU9aHR0cHMlM0ElMkYlMkZlLmtha2FvLmNvbSUyRml0ZW0lMkZuZXdcdTAwMjZsYW5nPWtvIiwiZ3VhcmRpYW5fYWdyZWVfdXJsIjoiL2FnZWF1dGhzL2d1YXJkaWFuP2xhbmc9a28iLCJ0YWxrU2NoZW1lRm9yTG9naW4iOiJrYWthb3RhbGs6Ly9pbmFwcGJyb3dzZXIiLCJsb2dpbkNvbmZpcm1Gcm9tVGFsa1VybCI6Imh0dHBzOi8vYXV0aC5rYWthby5jb20vbG9naW5fcG9sbGluZy9jb25maXJtLmh0bWwiLCJpcFNlY3VyaXR5TG9naW5FcnJvciI6ZmFsc2V9")));

        $('#kakaoHead').hide();

        new PageBuilder().build(options).weblogin(options, function (data) {
            if (data.continue_url || options.continue_url)
                location.href = data.continue_url || options.continue_url;
        });
    });
</script>
 -->
  <hr class="hide">
  
<div id="kakaoFoot" class="footer_comm" role="contentinfo">
  <h2 class="screen_out">서비스 이용정보</h2>
  <div class="service_info">
    <a href="https://www.kakao.com/policy/terms?lang=ko" class="link_info">이용약관</a><span class="txt_bar"></span>
    <a href="https://www.kakao.com/policy/privacy?lang=ko" class="link_info link_policy">개인정보 처리방침</a><span class="txt_bar"></span>
    <a href="https://www.kakao.com/policy/oppolicy?lang=ko" class="link_info">운영정책</a><span class="txt_bar"></span>
    <a href="https://cs.kakao.com/" class="link_info">고객센터</a>
    <a href="https://www.kakao.com/notices?lang=ko" class="link_info">공지사항</a><span class="txt_bar"></span>
    <div class="item_inp item_select">
      <span class="screen_out">언어 선택상자</span>
      <span class="screen_out">선택내용</span>
      <a href="#none" class="link_selected">한국어
        <span class="ico_account ico_arr">선택옵션</span>
      </a>
      <ul class="list_select">
        <li><a href="?continue=https%3A%2F%2Fe.kakao.com%2Fitem%2Fnew&amp;lang=ko" class="link_select">한국어</a>
        </li>
        <li><a href="?continue=https%3A%2F%2Fe.kakao.com%2Fitem%2Fnew&amp;lang=en" class="link_select">English</a>
        </li>
        <li><a href="?continue=https%3A%2F%2Fe.kakao.com%2Fitem%2Fnew&amp;lang=ja" class="link_select">日本語</a>
        </li>
      </ul>
    </div>
  </div>
  <small class="txt_copyright">Copyright © <a href="https://www.kakaocorp.com/?lang=ko" class="link_kakao">Kakao Corp.</a>
    All rights reserved.
  </small>
</div>

</div>



<div id="layerAlert" data-role="layer" role="dialog">
  <div class="dimmed_layer"></div>
  <div class="kakao_layer ">
    <div class="inner_kakao_layer ">
      
  <span class="screen_out" tabindex="-1">팝업</span>
<div class="layer_head ">
  <strong class="_title tit_layer"></strong>
</div>
  
<div class="layer_body ">
  
    <div class="_message txt_layer"></div>
    <div class="wrap_btn">
      <button type="button" class="btn_confirm btn_g">확인</button>
</div>
</div>  
<div class="layer_foot ">
  <button class="btn_close" type="button"><span class="ico_account ico_close">닫기</span></button>
</div>

    </div>
  </div>
</div>

<div id="dialog-form" align="center" title="kakaoemoticon 회원 가입">

  <div class="container">
		<div id="imail">
			<i class="material-icons">person_outline</i>
		</div>
		<div id="iperson2">
			<i class="material-icons">person_outline</i>
		</div>
		<div id="ipw">
			<i class="material-icons">lock_outline</i>
		</div>
		<h4>
			<span>가입을 시작합니다!</span>
		</h4>
		<h5>
			<span>카카오계정 하나로 다양한 서비스를 편리하게 이용해 보세요!</span>
		</h5>
		<hr>
		<br>
		<form action="/jspPro/pages/login/signup.do" method="post" id="form_signUp">
			<input type="email" placeholder=" 이메일" name="email" id="m_id" required style="height: 30px; width: 495px" />
			<br>
			<br>
			<input type="password" placeholder=" 비밀번호" id="m_pwd" name="password" required style="height: 30px; width: 495px" />
			<br>
			<br>
			<input type="text" placeholder=" 이름" id="m_name" name="name" required style="height: 30px; width: 495px" />
			<br>
			<br>
			<p>
				<input type="button" value="가입하기" id="signup" onclick="emailCheck();" />
				<br>
				<br>
			</p>
		</form>
		<hr>
	</div>
  
</div>
	
	
<script>
  dialog = $("#dialog-form").dialog({
     autoOpen: false,
      height: 495,
      width: 600,
      modal: true,
      buttons:{},
      close: function (){
         form[0].reset();
      }
  });
  
  form = dialog.find("form");
  
  $("#btnModal").on("click", function(event) {
     dialog.dialog("open" ); 
  })
  
  $("#cancel").on("click", function(event) {
     dialog.dialog("close" ); 
  })
</script>


<script>
	function emailCheck() {
         var params = {
            m_id : $("#m_id").val()
         };

         if( $("#m_id").val() != "" && $("#m_pwd").val() != "" && $("#m_name").val() != "" ){
        	      	 
	         $.ajax({
	            url : "/jspPro/pages/login/emailcheck.do",
	            dataType : "json",
	            type : "GET",
	            data : params,
	            cache : false,
	            success : function(data, textStatus, jqXHR) {
	               if (data.count == 0) {
	                  //이메일 사용가능
	                  alert("회원가입 성공 (>_0)7 !!")
	                  $("#form_signUp").submit();
	               }
	
	               else {
	                  //이메일 중복
	                  alert("가입된 이메일이 있습니다.")
	                  $("#form_signUp")[0].reset();
	                  $("#signup").css("background-color","lightgray");
	               }
	
	            },
	            error : function() {
	               alert("ajax 에러");
	            }
	         });
         
         } else{
        	 alert("모든 정보를 입력해주세요.");
        	 $("#form_signUp")[0].reset();
         } // if
         
      } // emailCheck()
</script>


<script>
  $("#m_id, #m_pwd, #m_name").on("keyup",function(){
	  if ( $("#m_id").val() != "" && $("#m_pwd").val() != "" && $("#m_name").val() != "" ){
		  $("#signup").css("background-color","#fee500");
	  } else {
		  $("#signup").css("background-color","lightgray");
	  }
  });
</script>


</body>
</html>
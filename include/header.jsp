<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

<!--hedaer 상단바 스크립트  -->
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">

<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/jsFile/jquery-3.2.1.min.js"></script>

<script src="resources/jsFile/user/loginJS.js"></script>
<script src="resources/jsFile/user/joinJS.js"></script>
<link href="https://fonts.googleapis.com/css?family=Monsieur+La+Doulaise|Shrikhand&display=swap" rel="stylesheet">
<!-- 로그인 팝업창 띄우는 스타일정의  -->
<style>
.shrik{
font-family: Shrikhand;
}
.Monsieur{
font-family: Monsieur La Doulaise;
font-weight: 500;
font-weight: bold;
}
   body {
      font-family: Arial, Helvetica, sans-serif;
   }
   
   /* Full-width input fields */
   input[type=text], input[type=password] {
      width: 100% ; 
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
   }
   
   /* Set a style for all buttons */
   button {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 50%;
   }
   
   button:hover {
      opacity: 0.8;
   }
   
   /* Extra styles for the cancel button */
   .cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #f44336;
   }
   
   /* Center the image and position the close button */
   .container {
      padding: 10px !important;
   }
   
   span.password {
      float: right;
      padding-top: 16px;
   }
   
   /* The Modal (background) */
   .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 10; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.7); /* 로그인 폼, 회원가입 폼 띄울때 배경어두워지게 하는 기능 */
      padding-top: 60px;
   }
   
   /* Modal Content/Box */
   .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
      border: 1px solid #888;
      width: 80%; /* Could be more or less, depending on screen size */
   }
   
   /* The Close Button (x) */
   .close {
      position: absolute;
      right: 25px;
      top: 0;
      color: black;
      font-size: 35px;
      font-weight: bold;
   }
   
   .close:hover, .close:focus {
      color: red;
      cursor: pointer;
   }
   
   /* Add Zoom Animation */
   .animate {
      -webkit-animation: animatezoom 0.8s;
      animation: animatezoom 0.8s;
   }
   
   @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)}
      to {-webkit-transform: scale(1)}
   }
   
   @keyframes animatezoom {
      from {transform: scale(0)}
      to {transform: scale(1)}
   }
   
   /* Change styles for span and cancel button on extra small screens */
   @media screen and (max-width: 300px) {
      span.password {
         display: block;
         float: none;
      }
      .cancelbtn {
         width: 100%;
      }
   }
</style>
<!--위부터 여기까지 로그인 팝업창 정의  -->

<!-- 회원가입 팝업창 띄우는 스타일정의  -->
<style>
   body {
      font-family: Arial, Helvetica, sans-serif;
   }
   
   * {
      box-sizing: border-box;
   }
   
   .container {
      width: 80% !important;
   }
   
   /* Full-width input fields */
   input[type=text], input[type=password] {
      width: 100%;
      padding: 15px;
      margin: 5px 0 0px 0;
      display: inline-block;
      border: none;
      background: #f1f1f1;
   }
   
   /* Add a background color when the inputs get focus */
   input[type=text]:focus, input[type=password]:focus {
      background-color: #ddd;
      outline: none;
   }
   
   /* Set a style for all buttons */
   button {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 50%;
      opacity: 0.8;
   }
   
   button:hover {
      opacity: 1;
   }
   
   /* Extra styles for the cancel button */
   .cancelbtn {
      padding: 14px 20px;
      background-color: #f44336;
   }
   
   /* Float cancel and signup buttons and add an equal width */
   .cancelbtn, .signupbtn {
      float: left;
      width: 50%;
   }
   
   /* Add padding to container elements */
   
   /* The Modal (background) */
   .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 10; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      padding-top: 50px;
   }
   
   /* Modal Content/Box */
   .modal-content {
      background-color: #fefefe;
      border: 1px solid #888;
      width: 30%; /* Could be more or less, depending on screen size */
   }
   
   /* Style the horizontal ruler */
   hr {
      border: 1px solid #f1f1f1;
      margin-bottom: 25px;
   }
   
   /* The Close Button (x) */
   .close {
      position: absolute;
      right: 35px;
      top: 15px;
      font-size: 40px;
      font-weight: bold;
      color: black;
   }
   
   .close:hover, .close:focus {
      color: #f44336;
      cursor: pointer;
   }
   
   /* Clear floats */
   .clearfix::after {
      content: "";
      clear: both;
      display: table;
   }
   
   /* Change styles for cancel button and signup button on extra small screens */
   @media screen and (max-width: 300px) {
      .cancelbtn, .signupbtn {
         width: 100%;
      }
   }
</style>
<!--위부터 여기까지 회원가입 팝업창 정의  -->

<style type="text/css">
   .button_join {
      color: white;
   }
   
   .button_login {
      color: white;
   }
   
   .jumbotron {
      background-image: url("resources/image/headerImage/mainHeader.jpg");
      background-size: cover;
      margin-bottom : 0px !important;
      padding: 20px !important;
   }
   
   .navbar {
      padding-top: 0px !important;
      padding-bottom: 0px !important;
      margin-bottom: 0px !important;
      border-radius: 0px !important;
   }
   
   .header_bar {
      top: 0px !important;
      width: 100% !important;
      z-index: 2000 !important;
      position: fixed !important;
      display: block !important;
   }
   .jumbotron > h2 {
      color: black;
      text-align: center;
   }
   
   .header_logo {
      text-align: center !important;
      line-height: 1;
   }
   
   .container-fluid {
      margin-top: 0px !important;
      margin-bottom: 0px !important; 
   }
   
   .agree_txt {
   padding:10px;
   border: 1px solid #dfdfdf;
   overflow:auto; background:#fff;
   width:100%; text-align:left;
   height:90px;font-size:11px;
   line-height:150%;
   }
</style>

</head>

<body>
   <div class="header_bar">
      <div class="jumbotron">
         <font size="6">
         <div class="header_logo Monsieur">T h e</div>
         </font>
         
         <font size="7" >
         <div class="header_logo shrik">SKYG Pension</div>
         </font>
      </div>
      
      <div>
         <!--상단 검은바 글 정의  -->
         <nav class="navbar navbar-inverse">
         
            <div class="container-fluid">
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                  </button>
                  
                  <a class="navbar-brand" href="/SkyGround">홈 으로가기</a>
               </div>
               
               <div class="collapse navbar-collapse" id="myNavbar">
                  <ul class="nav navbar-nav">
                     <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                           정보<span class="caret"></span>
                        </a>
                        
                        <ul class="dropdown-menu">
                           <li><a href="pensionInfoF">팬션 안내</a></li>
                           <li><a href="wayF">오시는 길</a></li>
                           <li><a href="tourListF">주변 관광지</a></li>
                        </ul>
                     </li>
                     
                     <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="
">
                           팬션 방<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                           <li><a href="listRF">객실 정보</a></li>
                        </ul>
                     </li>
                     
                     <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                           예약<span class="caret"></span>
                        </a>
                        
                        <ul class="dropdown-menu">
                           <li><a href="calendar">실시간 예약</a></li>
                           <li><a href="getRsvCheck">예약 조회</a></li>
                           <li><a href="dangersF">예약 주의사항</a></li>
                        </ul>
                     </li>
                  </ul>
                  
                  <!-- 비로그인시 우측상단 버튼 정의 -->
                  <c:if test="${loginUser == null}">
                     <!--Join 버튼 정의 -->
                     <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="#" onclick="document.getElementById('id02').style.display='block'" style="width: auto;">
                              <span class="glyphicon glyphicon-user"></span> 회원 가입
                           </a>
                        </li>
                     </ul>
                  </c:if>
                  
                  <!--Join 팝업창 정의 -->
                  <div id="id02" class="modal">
                     <form class="modal-content animate" id="joinform" method="post">
                        <div class="container">
                           <!--팝업 우상단 x버튼 정의 -->
                           <h1>회원 가입</h1>
                           <p>계정을 만들기위해 양식을 입력해주세요.</p>
                           
                           <!--이메일 입력 -->
                           <label for="email"><b>이메일</b></label>
                           <input type="text" placeholder="이메일을 입력해주세요." id="email" name="email" required>
                           <div id="id_checktext"></div> <br>
                           
                           <!--패스워드 입력 -->
                           <label for="password"><b>비밀번호</b></label>
                           <input type="password" placeholder="영문, 숫자, 특수문자(!@#$%^*+=-) 조합 6~16자를 사용해 주세요." name="password" id="password" maxlength="16" required>
                           <div id="pw_checktext"></div> <br>
                           
                           <!--패스워드 다시 입력 -->
                           <label for="password-repeat"><b>비밀번호 재확인</b></label>
                           <input type="password" placeholder="비밀번호를 다시 입력해주세요." name="pwCheck" id="pwCheck" maxlength="16" required>
                           <div id="pw_rechecktext" ></div> <br>
                           
                           <label for="name"><b>이름</b></label>
                           <input type="text" placeholder="이름을 입력해주세요." id="name" name="name" maxlength="16" required>
                           <div id="name_checktext"></div> <br>
                           
                           <!--생년 입력 -->
                           <label for="birth"><b>생년월일</b></label>
                           <input type="text" placeholder="생년월일 8글자를 입력해주세요 ex) 19980201" id="birth" name="birth" 
                              oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="8" required>
                           <div id="birth_checktext"></div> <br>
                           
                           <!--성별 체크 -->
                           <input type="radio" name="gender" value="M" /> 남성 &nbsp;&nbsp;
                           <input type="radio" name="gender" value="F" /> 여성 <br><br>
                           
                           <div class="agree_txt">
                              제1조(목적)<br>
                              이 약관은 SKYG펜션(전자상거래 사업자, 이하 회사)가 운영하는 SKYG펜션(이하 “사이트”라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이트와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.<br>
   
                              ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」<br>
   
                              제2조(정의)<br>
                              ①“사이트” 란 회사가 재화 또는 용역(이하 “재화등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이트를 운영하는 사업자의 의미로도 사용합니다. <br>
                              ②“이용자”란 “사이트”에 접속하여 이 약관에 따라 “사이트”가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.   <br>
                              ③ ‘회원’이라 함은 “사이트”에 개인정보를 제공하여 회원등록을 한 자로서, “사이트”의 정보를 지속적으로 제공받으며, “사이트”이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
                              ④ ‘비회원’이라 함은 회원에 가입하지 않고 “사이트”이 제공하는 서비스를 이용하는 자를 말합니다. <br>
                              <br>
                              제3조 (약관등의 명시와 설명 및 개정) <br>
                              ① “사이트”는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 사이트의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다. <br>
                              ② “사이트는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br>
                              ③ “사이트”는 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>
                              ④ “사이트”는 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 사이트의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.<br>
                              다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 “사이트”는 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. <br>
                              ⑤ “사이트”가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 “사이트”에 송신하여 “사이트”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br>
                              ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.<br>
                              제4조(서비스의 제공 및 변경) <br>
                              ① “사이트”는 다음과 같은 업무를 수행합니다.<br>
                              1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br>
                              2. 구매계약이 체결된 재화 또는 용역의 배송<br>
                              3. 기타 “사이트”가 정하는 업무<br>
                              
                              ②“사이트”는 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br>
                              ③“사이트”가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.<br>
                              ④전항의 경우 “사이트”는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “사이트”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br>
                              제5조(서비스의 중단) <br>
                              ① “사이트”는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br>
                              ②“사이트”는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “사이트”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br>
                              ③사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “사이트”는 제8조에 정한 방법으로 이용자에게 통지하고 당초 “사이트”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “사이트”가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “사이트”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.<br>
                              <br>
                              제6조(회원가입) <br>
                              ① 이용자는 “사이트”가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br>
                              ② “사이트”는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.<br>
                              1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실후 3년이 경과한 자로서 “사이트”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br>
                              2. 등록 내용에 허위, 기재누락, 오기가 있는 경우<br>
                              3. 기타 회원으로 등록하는 것이 “사이트”의 기술상 현저히 지장이 있다고 판단되는 경우<br>
                              
                              ③ 회원가입계약의 성립시기는 “사이트”의 승낙이 회원에게 도달한 시점으로 합니다.<br>
                              ④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 “사이트”에 대하여 그 변경사항을 알려야 합니다.<br>
                              
                              제7조(회원 탈퇴 및 자격 상실 등) <br>
                              ① 회원은 “사이트”에 언제든지 탈퇴를 요청할 수 있으며 “사이트”는 즉시 회원탈퇴를 처리합니다.<br>
                              ② 회원이 다음 각호의 사유에 해당하는 경우, “사이트”는 회원자격을 제한 및 정지시킬 수 있습니다.<br>
                              
                              1. 가입 신청시에 허위 내용을 등록한 경우<br>
                              2. “사이트”를 이용하여 구입한 재화등의 대금, 기타 “사이트”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우<br>
                              3. 다른 사람의 “사이트” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br>
                              4. “사이트”를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br>
                              ③ “사이트”가 회원 자격을 제한,정지 시킨후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 “사이트”는 회원자격을 상실시킬 수 있습니다.<br>
                              ④ “사이트”가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.<br>
                              
                              제8조(회원에 대한 통지)<br>
                              ① “사이트”가 회원에 대한 통지를 하는 경우, 회원이 “사이트”와 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.<br>
                              ② “사이트”는 불특정다수 회원에 대한 통지의 경우 1주일이상 “사이트” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br>
                              
                              제9조(구매신청)<br>
                              “사이트”이용자는 “사이트”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “사이트”는 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.<br>
                              1. 재화등의 검색 및 선택<br>
                              2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br>
                              3. 약관내용, 청약철회권이 제한되는 서비스, 배송료, 설치비 등의 비용부담과 관련한 내용에 대한 확인<br>
                              4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br>
                              5. 재화등의 구매신청 및 이에 관한 확인 또는 “사이트”의 확인에 대한 동의<br>
                              6. 결제방법의 선택<br>
                              
                              제10조 (계약의 성립)<br>
                              ① “사이트”는 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br>
                              1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br>
                              2. 미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br>
                              3. 기타 구매신청에 승낙하는 것이 “사이트” 기술상 현저히 지장이 있다고 판단하는 경우<br>
                              
                              ② “사이트”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br>
                              ③ “사이트”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소등에 관한 정보등을 포함하여야 합니다.<br>
                              
                              제11조(지급방법)<br>
                              “사이트”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법중 가용한 방법으로 할 수 있습니다. 단, “사이트”는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br>
                              1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 <br>
                              2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br>
                              3. 온라인무통장입금<br>
                              4. 전자화폐에 의한 결제<br>
                              5. 수령시 대금지급<br>
                              6. 마일리지 등 “사이트”가 지급한 포인트에 의한 결제<br>
                              7. “사이트”와 계약을 맺었거나 “사이트”가 인정한 상품권에 의한 결제 <br>
                              8. 기타 전자적 지급 방법에 의한 대금 지급 등<br>
                              
                              제12조(수신확인통지,구매신청 변경 및 취소)<br>
                              ① “사이트”는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br>
                              ② 수신확인통지를 받은 이용자는 의사표시의 불일치등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 “사이트”는 배송전에 이용자의 요청이 있는 경우에는 지체없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.<br>
                              
                              제13조(재화등의 공급)<br>
                              ① “사이트”는 이용자와 재화등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “사이트”가 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 2영업일 이내에 조치를 취합니다. 이때 “사이트”는 이용자가 재화등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<br>
                              ②“사이트”는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “사이트”가 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “사이트”가 고의, 과실이 없음을 입증한 경우에는 그러하지 아니합니다.<br>
                              
                              제14조(환급)<br>
                              “사이트”는 이용자가 구매신청한 재화등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.<br>
                              
                              제15조(청약철회 등)<br>
                              ①“사이트”와 재화등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할 수 있습니다.<br>
                              ② 이용자는 재화등을 배송받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br>
                              1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br>
                              2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br>
                              3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br>
                              4. 같은 성능을 지닌 재화등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br>
                              
                              ③ 제2항제2호 내지 제4호의 경우에 “사이트”가 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회등이 제한되지 않습니다.<br>
                              ④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화등을 공급받은 날부터 3월이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.<br>
                              
                              제16조(청약철회 등의 효과)<br>
                              ① “사이트”는 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화등의 대금을 환급합니다. 이 경우 “사이트”가 이용자에게 재화등의 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br>
                              ② “사이트”는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br>
                              ③ 청약철회등의 경우 공급받은 재화등의 반환에 필요한 비용은 이용자가 부담합니다. “사이트”는 이용자에게 청약철회등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회등을 하는 경우 재화등의 반환에 필요한 비용은 “사이트”가 부담합니다.<br>
                              ④ 이용자가 재화등을 제공받을때 발송비를 부담한 경우에 “사이트”는 청약철회시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.<br>
                              
                              제17조(개인정보보호)<br>
                              ①“사이트”는 이용자의 정보수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다. <br>
                              1. 성명<br>
                              2. 주소<br>
                              3. 전화번호<br>
                              4. 희망ID(회원의 경우)<br>
                              5. 비밀번호(회원의 경우)<br>
                              6. 전자우편주소(또는 이동전화번호)<br>
                              
                              ② “사이트”가 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.<br>
                              ③제공된 개인정보는 당해 이용자의 동의없이 목적외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 “사이트”가 집니다. 다만, 다음의 경우에는 예외로 합니다.<br>
                              
                              1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우<br>
                              2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우<br>
                              3. 재화등의 거래에 따른 대금정산을 위하여 필요한 경우<br>
                              4. 도용방지를 위하여 본인확인에 필요한 경우<br>
                              5. 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우<br>
                              
                              ④“사이트”가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 정보통신망이용촉진등에관한법률 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br>
                              ⑤이용자는 언제든지 “사이트”가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “사이트”는 이에 대해 지체없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “사이트”는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br>
                              ⑥ “사이트”는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br>
                              ⑦ “사이트” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체없이 파기합니다.<br>
                              
                              제18조(“사이트“의 의무)<br>
                              ① “사이트”는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화,용역을 제공하는데 최선을 다하여야 합니다.<br>
                              ② “사이트”는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.<br>
                              ③ “사이트”가 상품이나 용역에 대하여 「표시,광고의공정화에관한법률」 제3조 소정의 부당한 표시,광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br>
                              ④ “사이트”는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.<br>
                              
                              제19조(회원의 ID 및 비밀번호에 대한 의무)<br>
                              ① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br>
                              ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br>
                              ③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “사이트”에 통보하고 “사이트”의 안내가 있는 경우에는 그에 따라야 합니다.<br>
                              
                              제20조(이용자의 의무)<br>
                              이용자는 다음 행위를 하여서는 안됩니다.<br>
                              1. 신청 또는 변경시 허위 내용의 등록<br>
                              2. 타인의 정보 도용<br>
                              3. “사이트”에 게시된 정보의 변경<br>
                              4. “사이트”가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br>
                              5. “사이트” 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>
                              6. “사이트” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>
                              7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 “사이트”에 공개 또는 게시하는 행위<br>
                              
                              제21조(연결“사이트”와 피연결“사이트” 간의 관계)<br>
                              ① 상위 “사이트”와 하위 “사이트”가 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “사이트”(웹 사이트)라고 하고 후자를 피연결“사이트”(웹사이트)이라고 합니다.<br>
                              ②연결“사이트”는 피연결“사이트”가 독자적으로 제공하는 재화등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지 않는다는 뜻을 연결“사이트”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지 않습니다.<br>
                              
                              제22조(저작권의 귀속 및 이용제한)<br>
                              ① “사이트”가 작성한 저작물에 대한 저작권 기타 지적재산권은 “사이트”에 귀속합니다.<br>
                              ② 이용자는 “사이트”를 이용함으로써 얻은 정보 중 “사이트”에게 지적재산권이 귀속된 정보를 “사이트”의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br>
                              ③ “사이트”는 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.<br>
                              
                              제23조(분쟁해결)<br>
                              ① “사이트”는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치,운영합니다.<br>
                              ② “사이트”는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br>
                              ③“사이트”와 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.<br>
                              
                              제24조(재판권 및 준거법)<br>
                              ①“사이트”와 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br>
                              ②“사이트”와 이용자간에 제기된 전자상거래 소송에는 한국법을 적용합니다.<br>
                              
                              부 칙(시행일) 이 약관은 년 월 일부터 시행합니다
                              
                           </div>
                           <br>
                           <div class="agree_txt">
                              1. 수집하는 개인정보의 항목및 수집방법<br>
                              
                              (1)수집하는 개인정보의 항목<br>
                              회원가입, 원할한 고객상담, 각정서비스의 제공을 위해 아래와 같은 개인정보를 수집합니다.<br>
                              -성명, ID, 생년월일, 비밀번호, 이메일, 주소, 전화번호, 휴대폰번호<br>
                              (2)개인정보 수집방법<br>
                              이용자가 자발적으로, 구체적으로 기입할 때 개인정보를 수집하고 있습니다.<br>
                              2. 개인정보의 수집 및 이용목적<br>
                              수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
                              (1)회원관리<br>
                              - 성명, 이메일은 이용자의 식별을 위해 수집됩니다.<br>
                              - 주소는 주문 상품의 배송을 위해 수집됩니다.<br>
                              - 전화번호, 전자우편주소는 계약의 이행을 위한 연락 및 안내, 영수증 및 청구서 송부, 배송 진행상황의 통보 등을 위해 수집됩니다.<br>
                              3. 개인정보의 보유 및 이용기간<br>
                              개인정보의 보유 및 이용기간은 회원가입시부터 탈퇴 완료 후 90일까지로 합니다.
                           </div> <br>
                           
                           <div class="checkboxCSS">
                              <input type="checkbox" name="agree">이용약관 및 개인정보 처리방침 동의
                           </div>
                           <div id="terms_checktext"></div> <br>
                           
                           <div class="clearfix">
                              <button type="button" class="signupbtn" id="joinBtn" name="joinBtn">회원 가입</button>
                              <button type="reset" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn" id="reset">취소</button>
                           </div>
                        
                        </div>
                     </form>
                  </div>
                  
                  <!-- Login 버튼 정의 -->
                  <c:if test="${loginUser == null}">
                     <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="#" onclick="document.getElementById('id01').style.display='block'" style="width: auto;">
                              <span class="glyphicon glyphicon-log-in"></span> 로그인
                           </a>
                        </li>
                     </ul>
                  </c:if>
                  
                  <!-- Login 팝업창 정의 -->
                  <div id="id01" class="modal">
                     <form class="modal-content animate" id="logData" action="<c:url value='login' />" method="post">
                        <div class="imgcontainer"></div>

                        <div class="container">
                           <h1>로그인</h1>
                           <label for="uname"><b>사용자 이메일</b></label> <br>
                           <input type="text" placeholder="사용자 이메일을 입력해주세요" name="email" id="logEmail" required> <br>
                            
                            <label for="password">
                            <b>비밀번호</b></label> <br>
                            <input type="password" placeholder="비밀번호를 입력해주세요" name="password" id="logPassword" required> 
                            <br><br>
                           <div id="result_checktext"></div>
                           
                           <button type="button" id="loginBtn" name="loginBtn" style="float: left;">로그인</button>
                           <button type="reset" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">취소</button> <br>
                        </div>
                     </form>
                  </div>
                  <!-- 여기까지 로그인버튼에 의한 팝업창 정의 -->
                  
                  <!--로그인 되어있을때 우측상단 버튼 정의, 관리자일경우 관리자 메뉴 정의  !!! choose문 안에 주석넣으면 오류남 --> 
                  <c:choose>
                     <c:when test="${loginUser.email == 'admin@admin.com'}">
                        <ul class="nav navbar-nav navbar-right"></ul>
                        
                        <ul class="nav navbar-nav navbar-right">
                           <li class="dropdown">
                              <a class="dropdown-toggle"data-toggle="dropdown" href="#">
                                 관리자 메뉴 <span class="caret"></span>
                              </a>
                              <ul class="dropdown-menu">
                                 <li><a href="#">회원 관리</a></li>
                                 <li><a href="#">객실 관리</a></li>
                                 <li><a href="qnaListF">Q & A 관리</a></li>
                              </ul>
                           </li>
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right">
                           <li>
                              <a href="logout" id="logoutBtn">
                                 <span class="glyphicon glyphicon-log-out"></span> 로그아웃
                              </a>
                           </li>
                        </ul>
                     </c:when>
                     
                     <c:when test="${loginUser != null}">
                        <ul class="nav navbar-nav navbar-right"></ul>
                        
                        <ul class="nav navbar-nav navbar-right">
                           <li class="dropdown">
                              <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                 사용자 메뉴 <span class="caret"></span>
                              </a>
                              <ul class="dropdown-menu">
                                 <li><a href="qnaListF">Q & A</a></li>
                              </ul>
                           </li>
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right">
                           <li>
                              <a href="logout" id="logoutBtn">
                                 <span class="glyphicon glyphicon-log-out"></span>로그아웃
                              </a>
                           </li>
                        </ul>
                     </c:when>
                  </c:choose>
                  
               </div>
            </div>
            
         </nav>
         <!--상단 검은바 글 정의  -->
      </div>
   </div> <!-- class="header_bar" -->

</body>
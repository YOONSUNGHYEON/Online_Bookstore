<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>로그인</title>
<link href="${path}/resources/mypage/page_base.css" rel="stylesheet"
	type="text/css">
<link href='<c:url value="/resources/member/css/reset.css"/>'
	rel="stylesheet">
<link href='<c:url value="/resources/member/css/account.css"/>'
	rel="stylesheet">
<script src='<c:url value="/resources/member/js/jquery.min.js"/>'></script>
<script
	src='<c:url value="/resources/member/js/jquery.bxslider.min.js"/>'></script>
<script src='<c:url value="/resources/member/js/Member.js"/>'></script>
</head>
<c:choose>
  	<c:when test="${empty sessionScope.member}">

<body id="body-id">
<header class="page-header">
		<h1 class="page-title">
			<a href="/" class="page-title-link"><img width="140px" src="/resources/main/logo.png"></a>
		</h1>
	</header>
	<section class="page-body">
		<section id="login" class="account-container account-login">
			<form action='<c:url value="login"/>' method="post"
				class="account-form">
				<input type="hidden" name="referer" value="${referer}">
				<div id="wrapper" class="account-login">
					<div class=wrapper_in>
						<div class="login_box">
							<label class="account-label"> <input type="text"
								class="id_box" placeholder="아이디" name="member_Id">
							</label> <label class="account-label"> <input type="password"
								class="password_box" placeholder="비밀번호" name="member_Pass">
							</label>
							<div class="id_remember">
								<input type="checkbox" id="id_remember_check"> <label
									for="id_remember_check">아이디 기억하기</label>
								<div class="external-links">
									<a href="#" class="link">아이디 찾기</a>
									<p class="link">|</p>
									<a href="#" class="link">비밀번호 재설정</a>
								</div>
							</div>


							<div class="login_btn">
								<a class="login-button full-button main rui_button_blue_50"
									href="#"> 로그인 </a>
							</div>
							<div>
								<a
									class="full-button login-button signup-button sub rui_button_white_50"
									href='<c:url value="/Member/join"/>'> 회원가입 </a>
							</div>
						</div>
					</div>
				</div>
			</form>
		</section>
	</section>
</body>
 </c:when>
    <c:otherwise>
    <script type="text/javascript">
    history.go(-3);
    location.reload();
    </script>
    </c:otherwise>
    </c:choose>
</html>
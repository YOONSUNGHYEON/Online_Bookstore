<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>회원가입</title>
<link href="${path}/resources/mypage/page_base.css" rel="stylesheet"
	type="text/css">
<link href='<c:url value="/resources/member/css/reset.css"/>'
	rel="stylesheet">
<link href='<c:url value="/resources/member/css/account.css"/>'
	rel="stylesheet">
<link href='<c:url value="/resources/member/css/join.css"/>'
	rel="stylesheet">
<link href='<c:url value="/resources/main/ridiBase.css"/>'
	rel="stylesheet">
<script src='<c:url value="/resources/member/js/jquery.min.js"/>'></script>
<script
	src='<c:url value="/resources/member/js/jquery.bxslider.min.js"/>'></script>
<script src='<c:url value="/resources/member/js/Member.js?ver=1"/>'></script>
</head>

<body id="body-id">
	<header class="page-header">
		<h1 class="page-title">
			<a href="/" class="page-title-link"><a href="/" class="page-title-link"><img width="140px" src="/resources/main/logo.png"></a>
				</h1>
	</header>
	<div>
		<form action='<c:url value="/join"/>' method="post"
			name="join">
			<div id="wrapper">
				<div class="wrapper_in">

					<div class="id">
						<h3>아이디</h3>
						<div class="id_box">
							<input type="text" name="member_Id" id="member_Id"
								onkeyup="checkID(this)" required="required"
								placeholder="4~12자리 영문,숫자 조합">
						</div>
						<div class="id_check_btn ">
							<a class="rui_button_white_50" href="#">중복확인</a>
						</div>
						<br> <br> <br>
						<h3 id="checkIDResult">
							<!-- Ajax에 의해 메세지 출력할 공간 -->
						</h3>
					</div>
					<div class="password">
						<h3>비밀번호</h3>
						<div class="password_box">
							<input type="password" name="member_Pass" id="member_Pass"
								required="required" onkeyup="password(this)"
								placeholder="8~16자리 영문,숫자,특수문자 조합">
						</div>
						<h3 id="PasswdResult">
							<!-- 자바스크립스에 의해 메세지 출력할 공간 -->
						</h3>
					</div>
					<div class="password_re">
						<h3>비밀번호 재확인</h3>
						<div class="password_re_box">
							<input type="password" onkeyup="checkPasswd(this)"
								id="member_Pass1">
						</div>
						<h3 id="checkPasswdResult">
							<!-- 자바스크립스에 의해 메세지 출력할 공간 -->
						</h3>
					</div>
					<div class="name">
						<h3>이름</h3>
						<div class="name_box">
							<input type="text" name="member_Name" id="member_Name">
						</div>
					</div>
					<div class="birth">
						<h3>생년월일</h3>
						<div class="year_box">
							<input type="text" placeholder="년(4자)" name="member_Bir_Y"
								id="member_Bir_Y">
						</div>
						<div class="month_box">
							<select name="member_Bir_M" id="member_Bir_M">
								<option value="">월</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
						</div>
						<div class="date_box">
							<input type="text" placeholder="일" name="member_Bir_D"
								id="member_Bir_D">
						</div>
					</div>
					<div class="gender">
						<h3>성별</h3>
						<div class="gender_box">
							<select name="member_Gender" id="member_Gender">
								<option value="">성별</option>
								<option value="남">남</option>
								<option value="여">여</option>
							</select>
						</div>
					</div>
					<div class="join_btn">
						<a class="rui_button_blue_50" href="#">회원 가입 완료</a>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<link href="${path}/resources/mypage/page_modify.css" rel="stylesheet"
	type="text/css">

<link href="${path}/resources/mypage/page_base.css" rel="stylesheet"
	type="text/css">

</head>
<body id="ridi_books">
	<jsp:include page="../../mainBase.jsp" />
	<div id="books_contents">
		<div id="contents_wrap">
			<jsp:include page="myPageNav.jsp" />

			<div id="contents_page">
				<section id="page_modify">
					<h2 class="module_pagetitle">
						<span class="pagetitle_text">정보 변경</span>
					</h2>
					<article class="password_check">
						<h3 class="indent_hidden">비밀번호 입력</h3>
						<form id="form_confirm_password" method="Post" autocomplete="off" action="${path}/accountmodify">
							<input type="hidden" name="cmd" value="check_password"> <input
								type="hidden" name="_token" value="">
							<p class="check_description">보안을 위해 비밀번호를 한번 더 입력해 주세요.</p>
							<div class="input_wrap">
								<input type="password" id="modify_pw"
									class="rui_text_input password_input" name="member_Pass" value=""
									title="비밀번호 입력" autofocus=""> <label for="modify_pw"
									class="indent_hidden">비밀번호 입력</label>
								<button type="submit" form="form_confirm_password"
									class="rui_button_blue_30 password_submit">확인</button>
							</div>
						</form>
					</article>
				</section>
			</div>
		</div>
	</div>
</body>
</html>
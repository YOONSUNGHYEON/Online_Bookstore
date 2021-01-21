<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>category list</title>
<link href="${path}/resources/Member/css/cart.css" rel="stylesheet" type="text/css">
	<script src="${path}/resources/cart/js/cart.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<jsp:include page="../mainBase.jsp" />
<body>
<div class="container" style="max-width:1000px;margin-top: 10px;margin-bottom: 100px;">
	<h2 class="cart-title">카트</h2>
	<div class="row cartrow">
		<div class="col-xs-8 cartlist">
			<div class="row carttop">
				<span class="checkall">
					<input type="checkbox" class="check-box"> 전체선택
				</span>
				<span class="checkallbtn">
					<input type="button" class="cartbtn1" value="선택 위시리스트로 이동">
					<input type="button" class="cartbtn1" value="선택 삭제" onclick="deleteSeveral()">
				</span>
			</div>
			<div id = "booklist-container" >
			<div class="cartbooklist">


			</div>
		</div>
		</div>
		<div class="col-xs-3">
			<div class="cartallpirce">
				<div>1권을 선택하셨습니다.</div>
				<div>
					<span>총 상품금액</span>
					<span class="price-right">7,000원</span>
				</div>
				<div>
					<span>할인금액</span>
					<span class="price-right">0원</span>
				</div>
				<div class="total-price">
					<span>합계</span>
					<span class="price-right total">7,000원</span>
				</div>
			</div>
			<input type="button" class="buybutton" value="선택 구매하기" onclick="deleteSeveral();">
		</div>
	</div>
</div>

<jsp:include page="../footer.jsp" />
</body>
</html>
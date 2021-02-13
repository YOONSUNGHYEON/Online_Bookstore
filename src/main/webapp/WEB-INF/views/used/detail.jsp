<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<link href="${path}/resources/used/insert.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%
	String userId = null;
	if(session.getAttribute("userId") != null){
		userId = (String) session.getAttribute("userId");
	}
%>
<jsp:include page="../mainBase.jsp" />
<body>
<div class="container">
	<div class="row" style="width:1000px; margin:30px auto;">
		<div class="col-sm-4">
			<div id="img-box">
				<img width="250px" src="${book.cover }">
				<c:set var="saleStatus" value="${book.saleStatus }" />
					<c:choose>
						<c:when test="${saleStatus eq '0'}"> <div class="sale_status sale">판매중</div> </c:when>
						<c:when test="${saleStatus eq '1'}"> <div class="sale_status reserve">예약중</div> </c:when>
						<c:when test="${saleStatus eq '2'}"> <div class="sale_status done">판매 완료</div> </c:when>
					</c:choose>
				<div style="width:250px;"class="text-center newpage"> <a href="${path }/detail/${book.book_Id}">책 상세페이지 바로가기</a></div>
				<c:set var="hearted" value="${hearted }" />
				<div class="text-center" style="width:250px;">
				<c:choose>
				  	<c:when test="${empty sessionScope.member}">
				  		<button id="btn-save4" onclick="alert('로그인이 필요한 서비스입니다!')"><i style="margin-right: 10px;" class="far fa-heart"></i>${heartCount }</button>
				    </c:when>
			    </c:choose>
				<c:choose>
					<c:when test="${hearted eq '0'}"> <a href="${book.id }/hearted"><button id="btn-save4"><i style="margin-right: 10px;" class="far fa-heart"></i>${heartCount }</button></a> </c:when>
					<c:when test="${hearted eq '1'}"> <a href="${book.id }/hearted/delete"><button id="btn-save4"><i style="margin-right: 10px;" class="fas fa-heart"></i>${heartCount }</button></a> </c:when>
				</c:choose>
				</div>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="book-info">
			<div class="book-info-bottom"><span class="book-label">책 제목</span><span id="title"><span class="oneline">${book.title }</span></span></div>
			<div class="book-info-bottom"><span class="book-label">저자</span><span id="author"><span>${book.author }</span></span></div>
			<div class="book-info-bottom"><span class="book-label">출판사</span><span id="publisher"><span>${book.publisher }</span></span></div>
			<div class="book-info-bottom"><span class="book-label">정가</span><span id="price1"><span><fmt:formatNumber value="${book.price }" pattern="#,###" /> 원</span></span></div>
			<fmt:formatNumber var="sale" value="${book.salePrice*100/book.price }" pattern="#"/>
			<div class="book-info-bottom"><span class="book-label">중고 판매가</span><span><fmt:formatNumber value="${book.salePrice }" pattern="#,###" /> 원</span> <span class="sale-blo"> ${sale}% 할인</span></div>
			<c:set var="inStatus" value="${book.inStatus }" />
			<div class="book-info-bottom"><span class="book-label">내부 상태</span>
			<c:choose>
				<c:when test="${inStatus eq '1'}"> 깨끗함 </c:when>
				<c:when test="${inStatus eq '2'}"> 연필 밑줄 및 필기 </c:when>
				<c:when test="${inStatus eq '3'}"> 펜/형광펜 밑줄 및 필기 </c:when>
				<c:when test="${inStatus eq '4'}"> 찢김 및 훼손 </c:when>
				<c:when test="${inStatus eq '5'}"> 위에 모두 해당 </c:when>
			</c:choose>
			</div>
			<c:set var="outStatus" value="${book.outStatus }" />
			<div class="book-info-bottom"><span class="book-label">외부 상태</span>
			<c:choose>
				<c:when test="${outStatus eq '1'}"> 상태 좋음 </c:when>
				<c:when test="${outStatus eq '2'}"> 성명 기입 </c:when>
				<c:when test="${outStatus eq '3'}"> 이름표 및 스티커 부착 </c:when>
				<c:when test="${outStatus eq '4'}"> 찢김 및 훼손 </c:when>
				<c:when test="${outStatus eq '5'}"> 위에 모두 해당 </c:when>
			</c:choose>
			</div>
			<div class="book-info-bottom"><span class="book-label">판매자의 말</span><span id="author"><span>${book.description }</span></span></div>
			<input id="toId" type="hidden" value="${book.member.member_Id}" >
			</div>
		</div>
	</div>
	<c:set var="seller" value="${book.member.member_Num }" />
	<c:set var="user" value="${sessionScope.member.member_Num }" />
	<c:choose>
	  	<c:when test="${empty sessionScope.member}">
	  		<div class="text-center"><button id="btn-save2" onclick="alert('로그인이 필요한 서비스입니다!')">구매하기</button><button id="btn-save3" onclick="alert('로그인이 필요한 서비스입니다!')">문의하기</button></div> 
	    </c:when>
	    <c:when test="${seller eq user}">
	    	<div class="text-center">
				<select id="saleStatus">
				  <option value="0">판매중</option>
				  <option value="1">예약중</option>
				  <option value="2">거래완료</option>
				</select>	
				<input type="hidden" value="${book.id }"id="id">
				<button id="btn-save2" onclick="statusChange()">상태변경</button><button id="btn-save3" onclick="alert('로그인이 필요한 서비스입니다!')">문의하기</button>
			</div>
	    </c:when>
	    <c:otherwise>
        	<div class="text-center"><button id="btn-save2" onclick="buy()">구매하기</button> <button id="btn-save3" onclick="question()">문의하기</button> </div>
		</c:otherwise>
    </c:choose>
</div>
<input type="hidden" value="${book.title }" id="booktitle">
<input type="hidden" value="${book.price }" id="price">
<input type="hidden" value="${book.saleStatus }" id="status">
<jsp:include page="../footer.jsp" />
</body>
<script type="text/javascript">
$(document).ready(function(){$("#saleStatus").val($("#status").val()).prop("selected", true);});
var fromId = '<%= userId %>';
var toId = $('#toId').val();
function buy(){
	var con_test = confirm("책 판매자에게 메세지를 보내시겠습니까?");
	if(con_test == true){
		var chatContent = "<<"+$('#booktitle').val() + ">> 책 " +$('#price').val()+"원에 구매할게요!";
		var data = {
				fromId: fromId,
				toId: toId,
				chatContent: chatContent
		};
		$.ajax({
			type: "POST",
			url: "/chatSubmit",
		    dataType: 'json',
		    contentType:'application/json; charset=utf-8',
		    data: JSON.stringify(data),
			success: function(result){
				if(result == 1){
					console.log("성공");
				} else if(result == 0){
					console.log("실패");
				} else {
					console.log("오류");
				}
			}
		});
		location.href="/chat?toId="+$('#toId').val();
	}
}
function question(){
	var con_test = confirm("책 판매자에게 메세지를 보내시겠습니까?");
	if(con_test == true){
		var chatContent = "<<"+$('#booktitle').val() + ">> 책에 대해 궁금한 게 있어요!";
		var data = {
				fromId: fromId,
				toId: toId,
				chatContent: chatContent
		};
		$.ajax({
			type: "POST",
			url: "/chatSubmit",
		    dataType: 'json',
		    contentType:'application/json; charset=utf-8',
		    data: JSON.stringify(data),
			success: function(result){
				if(result == 1){
					console.log("성공");
				} else if(result == 0){
					console.log("실패");
				} else {
					console.log("오류");
				}
			}
		});
		location.href="/chat?toId="+$('#toId').val();
	}
}
function statusChange(){
	var id = $('#id').val();
	var status = $('#saleStatus').val();
	var con_test = confirm("판매 상태를 변경하시겠습니까?");
	if(con_test == true){
		$.ajax({
			type: "GET",
			url: id+"/status/"+status
		});
		location.reload();
	}
}
</script>
</html>
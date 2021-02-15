<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고 서점</title>
	<link href="${path}/resources/main/main.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/main/used.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/main/slick.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/main/slick-theme.css" rel="stylesheet" type="text/css">
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/81816a43c2.js" crossorigin="anonymous"></script>

</head>
<jsp:include page="../mainBase.jsp" />
<body>

<div class="text-center write-btn">
<c:choose>
<c:when test="${empty sessionScope.member}">
	<a onclick="alert('로그인이 필요한 서비스입니다!')" style="cursor:pointer;"><i class="fas fa-pencil-alt"></i>중고책 판매하기</a>
</c:when>
<c:otherwise>
<a href="/used/insert"><i class="fas fa-pencil-alt"></i>중고책 판매하기</a>
</c:otherwise>
</c:choose>
</div>
<div class="newbook">
<div class="container-fluid" style="max-width: 1000px; margin: 0 auto;">
	<h2 class="newbook-title">가장 최근 올라온 책!</h2>
	 <form class="form-inline" action="/used/search">
        <input class="top-search form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="title">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
  <div class="responsive">
  	<c:forEach var="row" items="${books}">
  	<fmt:formatNumber var="sale" value="${row.salePrice*100/row.price }" pattern="#"/>
  	<fmt:formatNumber var="status" value="${(row.inStatus+row.outStatus)/2 }" pattern="#"/>
  	<a href="${path }/used/${row.id}">
	  	<div class="slide-box2">
	  	<div class="book-image"><img src="${row.cover}"><div class="sale-percentage">${sale } %</div></div>
	  	<div class="book-title">${row.title}</div>
	  	<div class="book-status">
	  		책 상태
		  	<c:set var="status" value="${status}" />
	      	<c:choose>
				<c:when test="${status eq '5'}">★☆☆☆☆</c:when>
				<c:when test="${status eq '4'}">★★☆☆☆</c:when>
				<c:when test="${status eq '3'}">★★★☆☆</c:when>
				<c:when test="${status eq '2'}">★★★★☆</c:when>
				<c:when test="${status eq '1'}">★★★★★</c:when>
			</c:choose>
	  	</div>
	  	</div>
	</a>
  	</c:forEach>
  </div>
  </div>
</div>
<div class="iconlist">
<ul class="icon-ul">
<li class="icon-li">
<img style="background-color:#E8CB99;" src="${path}/resources/main/new.png">
<div>신간</div>
</li>
<li class="icon-li">
<img style="background-color:#99D1CB;" src="${path}/resources/main/gift.png">
<div>이벤트</div>
</li>
<li class="icon-li">
<img style="background-color:#B9BEF1;" src="${path}/resources/main/best.png">
<div>베스트셀러</div>
</li>
<li class="icon-li">
<img style="background-color:#99D1CB;" src="${path}/resources/main/rent.png">
<div>빌려서가</div>
</li>
<li class="icon-li">
<img style="background-color:#F1C0A7;" src="${path}/resources/main/set.png">
<div>지금 인기세트</div>
</li>
<li class="icon-li">
<img style="background-color:#ABDCBA;" src="${path}/resources/main/calendar.png">
<div>신간 캘린더</div>
</li>
<li class="icon-li">
<img style="background-color:#D5ADEB;" src="${path}/resources/main/map.png">
<div>일반 혜택지도</div>
</li>
<li class="icon-li">
<img style="background-color:#F0B9B9;" src="${path}/resources/main/coupon.png">
<div>위클리 쿠폰</div>
</li>
<li class="icon-li">
<img style="background-color:#BADBA1;" src="${path}/resources/main/paperpro	.png">
<div>리디페이퍼</div>
</li>
</ul>
</div>
<div class="table-title">오늘, 리디의 발견</div>
<div class="container-fluid white-slide" style="max-width: 1000px; margin: 0 auto;">
  <div class="responsive white-responsive">
  	<c:forEach var="row" items="${choicebooks}">
  		<a href="${path }/detail/${row.book_Id}">
	  	<div class="slide-box2">
	  	<div class="book-image"><img src="${row.book_Cover }"></div>
	  	<div class="book-title">${row.book_Title }</div>
	  	<span class="book-author" style="color:#636C73;">${row.book_Author }</span>
	  	</div>
	  	</a>
  	</c:forEach>
  </div>
  </div>

<jsp:include page="../footer.jsp" />
<script type="text/javascript">
	$(document).ready(function(){
		$('.center').slick({
			slidesToShow: 3,
			slidesToScroll: 1,
			centerMode: true,
			variableWidth: true,
			arrows: true,
		});
		$('.responsive').slick({
			dots: false,
			infinite: false,
			speed: 300,
			slidesToShow: 6,
			slidesToScroll: 6,
			responsive: [
				{
					breakpoint: 1024,
					settings: {
						slidesToShow: 3,
						slidesToScroll: 3,
						infinite: true,
						dots: true
					}
				},
				{
					breakpoint: 600,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1
					}
				}
			]
		});
		
	});
</script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${path}/resources/main/slick.min.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main page</title>
	<link href="${path}/resources/main/main.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/main/slick.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/main/slick-theme.css" rel="stylesheet" type="text/css">
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/81816a43c2.js" crossorigin="anonymous"></script>

</head>
<jsp:include page="mainBase.jsp" />
<body>
<div class="top-category">
<div style="max-width: 1000px; margin: 0 auto;">
<ul class="catenav nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="/category/list"><i class="fas fa-bars"></i></a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="/">일반</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">로맨스</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">판타지</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">만화</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="#">BL</a>
  </li>
</ul>
</div>
</div>
<div class="container-fluid" style="max-width: 1280px; margin: 0 auto; margin-top: 20px;">
  <div class="center">
    <div class="slide-box"><img src="${path}/resources/main/slide1.jpg"></div>
    <div class="slide-box"><img src="${path}/resources/main/slide2.jpg"></div>
    <div class="slide-box"><img src="${path}/resources/main/slide3.jpg"></div>
    <div class="slide-box"><img src="${path}/resources/main/slide4.jpg"></div>
    <div class="slide-box"><img src="${path}/resources/main/slide5.jpg"></div>
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
<div class="newbook">
<div class="container-fluid" style="max-width: 1000px; margin: 0 auto;">
	<h2 class="newbook-title">집 앞 서점에 방금 나온 신간!</h2>
  <div class="responsive">
  	<c:forEach var="row" items="${newbooks}">
	  	<div class="slide-box2">
	  	<div class="book-image"><img src="${row.book_Cover}"></div>
	  	<div class="book-title">${row.book_Title}</div>
	  	<span class="book-author">${row.book_Author}</span>
	  	</div>
  	</c:forEach>
  </div>
  </div>
</div>
<div class="table" style="max-width: 1000px; margin: 0 auto;">
<div class="table-title">베스트셀러</div>
<div class="row" style="width: 1000px; margin: 0 auto;">
<c:forEach var="row" items="${bestbooks}" varStatus="status">
  <div class="big-book col-md-4">
  	<div class="row" style="height:120px;">
	      <div class="col-md-3">
	      	<img class="table-book-img-big" src="${row.book_Cover }">
	      </div>
	      <div class="col-md-1">
			<h3 class="table-book-rank">${status.count}</h3>
	      </div>
	      <div class="col-md-8">
		    <div class="table-book-info">
	  			<div class="table-book-title">${row.book_Title }</div>
	  			<div class="table-book-author">${row.book_Author }</div>
	  			<span class="table-book-star">★★★★★</span>
	  		</div>
	      </div>
	  </div>
  </div>
</c:forEach>
</div>
</div>
<div class="table-title">오늘, 리디의 발견</div>
<div class="container-fluid white-slide" style="max-width: 1000px; margin: 0 auto;">
  <div class="responsive white-responsive">
  	<c:forEach var="row" items="${choicebooks}">
	  	<div class="slide-box2">
	  	<div class="book-image"><img src="${row.book_Cover }"></div>
	  	<div class="book-title">${row.book_Title }</div>
	  	<span class="book-author" style="color:#636C73;">${row.book_Author }</span>
	  	</div>
  	</c:forEach>
  </div>
  </div>

<jsp:include page="footer.jsp" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${path}/resources/main/slick.min.js"></script>
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
</body>
</html>
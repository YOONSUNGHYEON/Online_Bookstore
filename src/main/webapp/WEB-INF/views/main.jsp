<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="https://code.jquery.c om/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/81816a43c2.js" crossorigin="anonymous"></script>

</head>
<jsp:include page="mainBase.jsp" />
<body>
<div class="top-category">
<div style="max-width: 1000px; margin: 0 auto;">
<ul class="catenav nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="/"><i class="fas fa-bars"></i></a>
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
<div class="iconlist"></div>
<div class="newbook">
<div class="container-fluid" style="max-width: 1000px; margin: 0 auto;">
	<h2 class="newbook-title">집 앞 서점에 방금 나온 신간!</h2>
  <div class="responsive">
  	<div class="slide-box2">
  	<img src="${path}/resources/main/book.jpg">
  	<div class="book-title">책이름</div>
  	<span class="book-author">저자명</span>
  	</div>
  	<div class="slide-box2">
  	<img src="${path}/resources/main/book.jpg">
  	<div class="book-title">책이름</div>
  	<span class="book-author">저자명</span>
  	</div>
  	<div class="slide-box2">
  	<img src="${path}/resources/main/book.jpg">
  	<div class="book-title">책이름</div>
  	<span class="book-author">저자명</span>
  	</div>
  	<div class="slide-box2">
  	<img src="${path}/resources/main/book.jpg">
  	<div class="book-title">책이름</div>
  	<span class="book-author">저자명</span>
  	</div>
  	<div class="slide-box2">
  	<img src="${path}/resources/main/book.jpg">
  	<div class="book-title">책이름</div>
  	<span class="book-author">저자명</span>
  	</div>
  	<div class="slide-box2">
  	<img src="${path}/resources/main/book.jpg">
  	<div class="book-title">책이름</div>
  	<span class="book-author">저자명</span>
  	</div>
  	<div class="slide-box2">
  	<img src="${path}/resources/main/book.jpg">
  	<div class="book-title">책이름</div>
  	<span class="book-author">저자명</span>
  	</div>
  </div>
  </div>
</div>
<div class="table" style="max-width: 1000px; margin: 0 auto;">
<div class="grid-container">
  <div class="book1">
  	
  </div>
  <div class="book2">
	  <div class="row">
	      <div class="col-md-2">
	      	<img class="table-book-img" src="${path}/resources/main/book.jpg">
	      </div>
	      <div class="col-md-2">
			<h3 class="table-book-rank">1</h3>
	      </div>
	      <div class="col-md-2">
		    <div style="width: 203px;" class="table-book-info">
	  			<div class="table-book-title">바이러스 X</div>
	  			<span class="table-book-author">김진명</span>
	  		</div>
	      </div>
	  </div>
  </div>
  <div class="book3">3</div>
  <div class="book4">4</div>
  <div class="book5">5</div>
  <div class="book6">6</div>
  <div class="book7">7</div>
  <div class="book8">8</div>
  <div class="book9">9</div>
</div>
</div>

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
    		  dots: true,
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
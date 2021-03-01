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
<div class="container" style="width:980px; margin:30px auto;">
<div class="row">
<c:forEach var="row" items="${books}">
  	<fmt:formatNumber var="sale" value="${row.salePrice*100/row.price }" pattern="#"/>
  	<fmt:formatNumber var="status" value="${(row.inStatus+row.outStatus)/2 }" pattern="#"/>
  	<a href="${path }/used/${row.id}">
	  	<div class="col-sm-3">
	  	<div class="book-image"><img src="${row.cover}"><div class="sale-percentage">${sale } %</div></div>
	  	<div class="book-title">${row.title}</div>
	  	<div class="book-price"><fmt:formatNumber value="${row.salePrice }" pattern="#,###" /> 원</div>
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
</div></div>


<jsp:include page="../footer.jsp" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${path}/resources/main/slick.min.js"></script>
</body>
</html>
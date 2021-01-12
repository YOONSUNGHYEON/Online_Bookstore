<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>category list</title>
</head>
<link href="${path}/resources/category/book.css" rel="stylesheet" type="text/css">
<jsp:include page="../mainBase.jsp" />
<body>
<div class="container" style="max-width:1000px; margin:40px auto;">
	<div class="row">
		<div class="col-xs-3">
			<div class="active">소설</div>
			<ul>
				<li>한국소설</li>
				<li>영미소설</li>
				<li>추리/미스터리/스릴러</li>
				<li>SF소설</li>
				<li>판타지 소설</li>
				<li>역사 소설</li>
				<li>고전문학</li>
			</ul>
			<div>에세이/시</div>
			<div>인문/사회/역사</div>
			<div>자기계발</div>
			<div>경영/경제</div>
			<div>가정/생활</div>
			<div>여행</div>
			<div>건강/다이어트</div>
			<div>어린이/청소년</div>
			<div>종교</div>
			<div>외국어</div>
			<div>과학</div>
			<div>컴퓨터/IT</div>
			<div>진로/교육/교재</div>
		</div>
		<div class="col-xs-9">
			<div class="cate-name"><i class="fas fa-book-open"></i>소설</div>
			<div class="cate-sort">
				<a>인기순</a>
				<a>최신순</a>
				<a>평점순</a>
				<a>리뷰 많은순</a>
			</div>
			<div class="row books">
				<c:forEach var="row" items="${books}">
				<div class="col-xs-2"><div class="card">
					<div class="card-image"><img style="width:110px; height:auto;"src="${row.book_Cover}"/></div>
					<div class="card-body">
					<div class="book-title">${row.book_Title}</div>
					<div class="book-author">${row.book_Author}</div>
					<div class="book-star"><span>★★★★★ </span><span class="price"> 100명</span></div>
					<div class="book-price"><span>구매 </span><span class="price"><fmt:formatNumber value="${row.book_Price}" pattern="#,###" />원</span></div>
					</div>
				</div></div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../footer.jsp" />
</body>
</htm
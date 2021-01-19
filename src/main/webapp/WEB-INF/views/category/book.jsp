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
			<c:forEach var="row" items="${categoryList}">
			<div>${row.name}</div>
			</c:forEach>
			<ul>
			<c:forEach var="row" items="${subCategory}">
			<li>${row.name}</li>
			</c:forEach>
			</ul>
		</div>
		<div class="col-xs-9">
			<div class="cate-name"><i class="fas fa-book-open"></i>${category }</div>
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
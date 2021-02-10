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
<script>
function two(){
	alert("he");
}
</script>
<div class="container" style="max-width:1000px; margin:40px auto;">
	<div class="row">
		<div class="col-xs-3">
		
			<c:forEach var="row" items="${categoryList}">
				<c:set var="pid1" value="${row.pid}" />
				<c:set var="pid2" value='${category.pid}' />
				<c:set var="pid3" value="${sub[0].pid}" />
				<c:choose>
			    <c:when test="${pid1 eq pid2}">
			        <a href="${path }/category/${row.id}&page=1"><div>${row.name}</div></a>
			    	<c:if test="${pid2 eq pid3}">
				    	<ul>
							<c:forEach var="sub" items="${sub}">
							<a href="${path }/category/${sub.id}&page=1"><li>${sub.name}</li></a>
							</c:forEach>
						</ul>
					</c:if>
			    </c:when>
			    <c:otherwise>
			    	<a href="${path }/category/${row.id}&page=1"><div>${row.name}</div></a>
			    </c:otherwise>
			</c:choose>
			</c:forEach>
		</div>
		<div class="col-xs-9">
			<div class="cate-name"><i class="fas fa-book-open"></i>${category.name }</div>
			<div class="cate-sort">
				<a>인기순</a>
				<a>최신순</a>
				<a>평점순</a>
				<a>리뷰 많은순</a>
			</div>
			<div class="row books">
				<c:forEach var="row" items="${books}">

				<a href="${path }/detail/${row.book_Id}"><div class="col-xs-2"><div class="card">
						<div class="card-image"><img style="width:110px; height:auto;"src="${row.book_Cover}"/></div>
					<div class="card-body">
					<div class="book-title">${row.book_Title}</div>
					<div class="book-author">${row.book_Author}</div>
					<div class="book-star"><span>★★★★★ </span><span class="price"> 100명</span></div>
					<div class="book-price"><span>구매 </span><span class="price"><fmt:formatNumber value="${row.book_Price}" pattern="#,###" />원</span></div>
					</div>
				</div></div>
				</a>
				</c:forEach>
			</div>
			<div class="text-center">
			<ul class="pagination justify-content-center">
			    <c:set var="page" value="${page}" />
			    <c:if test="${page ne 1}">
			    	<li><a href="${path }/category/${category.id }&page=${page-1}">이전</a></li>
			    </c:if>
			    <li><a href="${path }/category/${category.id }&page=${page+1}">다음</a></li>
			  </ul>
			  </div>
		</div>
	</div>
</div>

<jsp:include page="../footer.jsp" />
</body>
</html>
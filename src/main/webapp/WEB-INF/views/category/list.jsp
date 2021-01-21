<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>category list</title>
<link href="${path}/resources/category/list.css" rel="stylesheet" type="text/css">
</head>
<jsp:include page="../mainBase.jsp" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<body>
<div class="container" style="max-width:1200px;">
	<div class="iconlist">
		<ul class="icon-ul">
			<li class="icon-li">
				<a href="${path }/category/${novel[0].pid }&page=1"><div>소설/시/희곡</div></a>
				<ul class="cate-ul">
				<c:forEach var="row" items="${novel}">
				<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
				</c:forEach>
				<li></li>
				</ul>
			</li>
			<li class="icon-li">
				<a href="${path }/category/${economy[0].pid }&page=1"><div>경제경영</div></a>
				<ul class="cate-ul">
				<c:forEach var="row" items="${economy}">
				<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
				</c:forEach>
				<li></li>
				</ul>
				<a href="${path }/category/${law[0].pid }&page=1"><div>사회과학</div></a>
				<ul class="cate-ul">
				<c:forEach var="row" items="${law}">
				<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
				</c:forEach>
				<li></li>
				</ul>
			</li>
			<li class="icon-li">
				<a href="${path }/category/${science[0].pid }&page=1"><div>과학</div></a>
				<ul class="cate-ul">
				<c:forEach var="row" items="${science}">
				<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
				</c:forEach>
				<li></li>
				</ul>
				
				<a href="${path }/category/${computer[0].pid }&page=1"><div>컴퓨터/모바일</div></a>
				<ul class="cate-ul">
				<c:forEach var="row" items="${computer}">
				<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
				</c:forEach>
				<li></li>
				</ul>
			</li>
			<li class="icon-li">
				<a href="${path }/category/${domestic[0].pid }&page=1"><div>가정/요리/뷰티</div></a>
				<ul class="cate-ul">
				<c:forEach var="row" items="${domestic}">
				<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
				</c:forEach>
				<li></li>
				</ul>
			</li>
			<li class="icon-li">
				<a href="${path }/category/${health[0].pid }&page=1"><div>건강/취미/레저</div></a>
					<ul class="cate-ul">
					<c:forEach var="row" items="${health}">
					<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
					</c:forEach>
					<li></li>
				</ul>
			</li>
			<li class="icon-li">
				<a href="${path }/category/${cartoon[0].pid }&page=1"><div>만화</div></a>
				<ul class="cate-ul">
				<c:forEach var="row" items="${cartoon}">
				<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
				</c:forEach>
				<li></li>
				</ul>				
			</li>
			<li class="icon-li">
				<a href="${path }/category/${religion[0].pid }&page=1"><div>종교/역학</div></a>
				<ul class="cate-ul">
				<c:forEach var="row" items="${religion}">
				<li><a href="${path }/category/${row.id}&page=1">${row.name}</a></li>
				</c:forEach>
				<li></li>
				</ul>
			</li>
		</ul>
	</div>
</div>

<jsp:include page="../footer.jsp" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- include css/js -->
<link href="${path}/resources/main/ridiBase.css" rel="stylesheet" type="text/css">
<!-- include fontawesome -->

<script src="https://kit.fontawesome.com/81816a43c2.js" crossorigin="anonymous"></script>
  <script src="${path}/resources/main/ridiBase.css"></script>
  <script src="${path}/resources/cart/css/cart.css"></script>
  <script src="${path}/resources/cart/js/cart.js"></script>
  <script src="${path}/resources/search/js/search.js"></script>
  <script src="${path}/resources/search/css/search.css"></script>
<%
	String userId = null;
	if(session.getAttribute("userId") != null){
		userId = (String) session.getAttribute("userId");
	}
%>
<script type="text/javascript">
	function getUnread(){
		var userId = '<%= userId %>';
		$.ajax({
			type:"POST",
			url: "/chatUnread",
			data:{
				userId:userId
			},
			success: function(result){
				if(result>0)
					showUnread(result);
				else
					$('#unread').empty();
			}
		});
	}
	function getInfiniteUnread(){
		getUnread();
		setInterval(function(){
			getUnread();
		}, 4000);
	}
	function showUnread(result){
		$('#unread').html(result);
	}
 </script>
</head>
<body>
<div class="header">
<header style="max-width: 1000px; margin: 0 auto;">
<nav class="navbar navbar-light bg-light justify-content-between">

  <a class="navbar-brand" href="/">RIDIBOOKS</a>
    <form action = "./search" method="GET" class = "css-WrapperForm">
        <label class="css-SearchBoxShape">
            <input value class="css-SearchBox" name="searchTerm" id="searchQuery" type="text" placeholder="제목 저자 검색" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" id="searchButton" type="submit">Search</button>
        </label>

    </form>

  	<c:choose>
  	<c:when test="${empty sessionScope.member}">
    <a href="${path }/login"><button class="align-right login">로그인</button></a>
    <a href="${path }/join"><button class="align-right join">회원가입</button></a>
    </c:when>
    <c:otherwise>
    <a href="${path }/my"><button class="align-right login">마이페이지</button></a>
    <a href="${path }/logout"><button class="align-right join">로그아웃</button></a>
    </c:otherwise>
    </c:choose>

</nav>
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="/"><i class="fas fa-home"></i>홈</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/used"><i class="fas fa-book"></i></i>중고책</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/message"><i class="fas fa-bell"></i></i>메세지<span id="unread"></span></a>
  </li>
  <li class="nav-item-cart">
    <a class="nav-link" href="/cart"><i class="fas fa-shopping-cart"></i>카트</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="/myridi"><i class="fas fa-user"></i>마이리디</a>
  </li>
</ul>
</header>
</div>
<%
	if(userId!=null){
%>
<script type="text/javascript">
	$(document).ready(function(){
		getInfiniteUnread();
	});
</script>
<%
	}
%>
</body>
</html>


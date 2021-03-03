<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>detail page</title>
<link href="${path}/resources/main/main.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/detail/button.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/mypage/page_base.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/member/css/finishedBook.css" rel="stylesheet"
	type="text/css">

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/81816a43c2.js"
	crossorigin="anonymous"></script>
</head>
<jsp:include page="mainBase.jsp" />
<body id="ridi_books">

	<div id="books_contents">
		<div>
			<div id="contents_page">
				<section id="page_finished_book">
					<h2 class="indent_hidden">구매 완료</h2>
					<div class="finished_book_table">
						<article class="finished_book_cell book_list_wrapper">
							<div class="finished_icon">
								<span class="icon-check_2"></span>
							</div>
							<p class="finished_text">구매가 완료되었습니다.</p>
							<div class="finished_table_wrapper">
								
							</div>
							<div class="library_link_wrapper">
								<a href="//library.ridibooks.com" class="library_link">내 서재<span
									class="icon-arrow_5_right"></span></a>
							</div>
						</article>						
					</div>
				</section>
			</div>
		</div>
	</div>

</body>
<%-- 리뷰 평균점수 가져오기 --%>
<script type="text/javascript">
var id = ${id}
$.getJSON('/api/avgscore/'+id,function(rdata){          
$('.score').append(rdata);
});
</script>

</html>

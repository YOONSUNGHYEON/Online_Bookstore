<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="${path}/resources/member/js/jquery.twbsPagination.js"></script>

</head>
<body>
<form action="${path}/api/orders" method="post">
		member	<input type="text" name="member" id="member_Id"><br>
          book  <input type="text" name="book" id="member_Id"><br>
            <input type="submit" value="submit"><br>
			</form>




<div id="pagination-div" ></div>

<script type="text/javascript">
var count=0;
$.getJSON('/api/paymentcount/1',function(rdata){
			        if(rdata%5==0){
			        count=rdata/5;
			        }else{
			        count=rdata/5+1;
			        }
$('#pagination-div').twbsPagination({

		    totalPages: count,	// 총 페이지 번호 수
		    visiblePages: 5,	// 하단에서 한번에 보여지는 페이지 번호 수
		    startPage : 1, // 시작시 표시되는 현재 페이지
		    initiateStartPageClick: false,	// 플러그인이 시작시 페이지 버튼 클릭 여부 (default : true)
		    first : "첫 페이지",	// 페이지네이션 버튼중 처음으로 돌아가는 버튼에 쓰여 있는 텍스트
		    prev : "이전 페이지",	// 이전 페이지 버튼에 쓰여있는 텍스트
		    next : "다음 페이지",	// 다음 페이지 버튼에 쓰여있는 텍스트
		    last : "마지막 페이지",	// 페이지네이션 버튼중 마지막으로 가는 버튼에 쓰여있는 텍스트
		    nextClass : "page-item next",	// 이전 페이지 CSS class
		    prevClass : "page-item prev",	// 다음 페이지 CSS class
		    lastClass : "page-item last",	// 마지막 페이지 CSS calss
		    firstClass : "page-item first",	// 첫 페이지 CSS class
		    pageClass : "page-item",	// 페이지 버튼의 CSS class
		    activeClass : "active",	// 클릭된 페이지 버튼의 CSS class
		    disabledClass : "disabled",	// 클릭 안된 페이지 버튼의 CSS class
		    anchorClass : "page-link",	//버튼 안의 앵커에 대한 CSS class

		    onPageClick: function (event, page) {
		    	//클릭 이벤트
				console.log("클릭");
		    }
		});
		});
</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<link href="${path}/resources/used/insert.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="jquery-2.1.1.min.js"></script>
<jsp:include page="../mainBase.jsp" />
<body>
<div class="search-up container" style="display:none;">
	<div class="search-bar">
	<span class="search-title">도서 검색</span>
	<span><input type="text" id="search" placeholder="title"></span>
	<span><button type="button" id="btn-search"><i style="margin:0px" class="fas fa-search"></i></button></span>
	<span onclick="popDown()"style="float:right; cursor:pointer; font-size:25px;"><i class="far fa-window-close"></i></span>
	</div>
	<div id="result" class="row"></div>
	<div class="text-center">
		<ul class="pagination">
	    	<li><a id="previous">이전</a></li>			    
		    <li><a id="next">다음</a></li>
	  	</ul>
  	</div>
</div>
<div class="container">

	<div class="row" style="width:1000px; margin:30px auto;">
		<div class="col-sm-4">
			<div id="img-box">
				<div class="img-in-box">
					Book Cover Image
				</div>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="text-right" onclick="popUp()">
			<button class="searchbtn"><i class="fas fa-book"></i>도서 검색하기</button>
			
			</div>
			<div class="book-info">
			<div class="book-info-bottom"><span class="book-label">책 제목</span><span id="title">　</span></div>
			<div class="book-info-bottom"><span class="book-label">저자</span><span id="author">　</span></div>
			<div class="book-info-bottom"><span class="book-label">출판사</span><span id="publisher">　</span></div>
			<div class="book-info-bottom"><span class="book-label">정가</span><span id="price1">　</span></div>
			<div class="book-info-bottom"><span class="book-label">중고 판매가</span><input type="number" id="price">　원</div>
			<div class="book-info-bottom"><span class="book-label">내부 상태</span><select id="inStatus">
			  <option value="1">깨끗함</option>
			  <option value="2">연필 밑줄 및 필기</option>
			  <option value="3">펜/형광펜 밑줄 및 필기</option>
			  <option value="4">찢김 및 훼손</option>
			  <option value="5">위에 모두 해당</option>
			</select></div>
			<div class="book-info-bottom">
			<span class="book-label">외부 상태</span><select id="outStatus">
			  <option value="1">상태 좋음</option>
			  <option value="2">성명 기입</option>
			  <option value="3">이름표 및 스티커 부착</option>
			  <option value="4">찢김 및 훼손</option>
			  <option value="5">위에 모두 해당</option>
			</select> 
			</div>
			<div class="book-info-bottom"><span class="book-label" style="vertical-align: top;">내용</span><textarea id="description"></textarea></div>
			
			<form name="fileForm" action="requestupload2" method="post" enctype="multipart/form-data">
				<div class="book-info-bottom">
				<span class="book-label">사진 첨부</span>
				<input style="display: inline;" multiple="multiple" type="file" name="file" id="imageUrl" />
				
				</div>
				<div class="text-center">
	    			<input type="submit" id="btn-save" value="전송" />
	    		</div>
	    	</form>
			</div>
			<input type="hidden" id="book_Id" placeholder="book_Id">
		</div>
	</div>
</div>
<jsp:include page="../footer.jsp" />
<script>
function popUp(){
	$(".search-up").show();
}
function popDown(){
	$(".search-up").hide();
}
function select(n){
	$.ajax({
        type: 'GET',
        url: '/api/search/id',	            
        dataType: 'json',
        contentType:'application/json; charset=utf-8',
        data: param={"id":n},
    }).done(function(result) {
    	$("#title").empty();
		$("#title").append($("<span>"+result.book_Title+"</span>"));
		$("#author").empty();
		$("#author").append($("<span>"+result.book_Author+"</span>"));
		$("#publisher").empty();
		$("#publisher").append($("<span>"+result.book_Publisher+"</span>"));
		$("#price1").empty();
		$("#price1").append($("<span>"+result.book_Price+"　원</span>"));
		$("#img-box").empty();
		$("#img-box").append($("<img width='250px'src='"+result.book_Cover+"'>"));
		$(".search-up").hide();
		$("#book_Id").val(result.book_Id);
    }).fail(function (error) {
        alert(JSON.stringify(error));
    });
}
var main = {
	    init : function () {
	        var _this = this;
	        $('#btn-save').on('click', function () {
		        if(!$('#book_Id').val()||!$('#price').val()||!$('#book_Id').val())
			        alert("빈칸을 모두 기입해주세요!");
		        else if($('#price').val() <= 0)
		        	alert("중고 판매가가 옳바른 값이 아닙니다!");
		        else _this.save();
	        });
	        $('#btn-search').on('click', function () {
	        	page = 1;
	            _this.search();
	        });
	        $('#next').on('click', function () {
		        page++;
		        _this.search2();
	        });
	        $('#previous').on('click', function () {
		        page--;
		        _this.search2();
	        });
	    },
	    save : function () {
	    	var size = $('#imageUrl').get(0).files.length;
	    	var array = [];
	    	for(i=0; i<size; i++){
	    		array.push($('#imageUrl').get(0).files[i].name);
			}
	        var data = {
        		book_Id: $('#book_Id').val(),
        		price: $('#price').val(),
        		inStatus: $('#inStatus').val(),
        		outStatus: $('#outStatus').val(),
        		description: $('#description').val(),
        		imageUrl: array
	        };
	        $.ajax({
	            type: 'POST',
	            url: '/used',
	            dataType: 'json',
	            contentType:'application/json; charset=utf-8',
	            data: JSON.stringify(data)
	        }).done(function() {
	            alert('글이 등록되었습니다.');
	            window.location.href = '/used';
	        }).fail(function (error) {
	            alert(JSON.stringify(error));
	        });
	    },
	    search : function () {
	        title=$('#search').val();
	        $.ajax({
	            type: 'GET',
	            url: '/api/search',	            
	            dataType: 'json',
	            contentType:'application/json; charset=utf-8',
	            data: param={"title":title, "page":page},
	        }).done(function(result) {
	        	$("#result").empty();
				result.forEach(function (item) {
					$("#result").append($('<div class="card col-sm-2"><div class="card-image"><img style="width:100px;"src="'+item.book_Cover+'"/></div><div class="card-body"><div class="book-title" onclick=select('+item.book_Id+')>'+item.book_Title+'</div></div></div>'));
					});
	        }).fail(function (error) {
	            alert(JSON.stringify(error));
	        });
	    },
	    search2 : function () {
	        $.ajax({
	            type: 'GET',
	            url: '/api/search',	            
	            dataType: 'json',
	            contentType:'application/json; charset=utf-8',
	            data: param={"title":title, "page":page},
	        }).done(function(result) {
	        	$("#result").empty();
				result.forEach(function (item) {
					$("#result").append($('<div class="card col-sm-2"><div class="card-image"><img style="width:100px;"src="'+item.book_Cover+'"/></div><div class="card-body"><div class="book-title" onclick=select('+item.book_Id+')>'+item.book_Title+'</div></div></div>'));
					});
	        }).fail(function (error) {
	            alert(JSON.stringify(error));
	        });
	    }
};
main.init();
</script>
</body>
</html>
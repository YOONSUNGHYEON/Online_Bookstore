<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<link href="${path}/resources/used/chat.css" rel="stylesheet" type="text/css">
<jsp:include page="../mainBase.jsp" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<%
	String userId = null;
	if(session.getAttribute("userId") != null){
		userId = (String) session.getAttribute("userId");
	}
	String toId = null;
	if(request.getAttribute("toId") != null){
		toId = (String) request.getParameter("toId");
	}
%>
<script type="text/javascript">
	function submitFunction(){
		var fromId = '<%= userId %>';
		if(fromId == "" || fromId == 'null') {alert("로그인이 필요한 서비스 입니다!"); return;}
		var toId = '<%= toId %>';
		if(toId == "" || toId == 'null') {alert("존재하지 않는 회원입니다!"); return;}
		var chatContent = $('#chatContent').val();
		if(chatContent == "") {alert("메세지를 입력해주세요!"); return;}
		var data = {
				fromId: fromId,
				toId: toId,
				chatContent: $('#chatContent').val()
	    };
		$.ajax({
			type: "POST",
			url: "./chatSubmit",
            dataType: 'json',
            contentType:'application/json; charset=utf-8',
            data: JSON.stringify(data),
			success: function(result){
				if(result == 1){
					console.log("성공");
				} else if(result == 0){
					console.log("실패");
				} else {
					console.log("오류");
				}
			}
		});
		$('#chatContent').val('');
	}
	var lastId = 0;
	function chatListFunction(type){
		var fromId = '<%= userId %>';
		var toId = '<%= toId %>';
		var data = {
				fromId: fromId,
				toId: toId,
				listType: type
	    };
		$.ajax({
			type: "POST",
			url: "./chatList",
            dataType: 'json',
            contentType:'application/json; charset=utf-8',
            data: JSON.stringify(data),
			success: function(data){
				for(var i=0; i<data.length; i++){
					var time = data[i].chatTime.replace("T", " ").substring(0, 16);
					if(data[i].fromId == fromId) addChatRight(data[i].fromId, data[i].chatContent, time);
					else addChatLeft(data[i].fromId, data[i].chatContent, time);
					if(i == data.length-1) lastId = data[i].id;
				}
			}
		});
	}
	function addChatLeft(chatName, chatContent, chatTime){
		$('#chatList').append('<div class="say"><span class="mine">' + chatContent + '</span><span class="time">' + chatTime + '</span></div>');
		$("#chatList").scrollTop($('#chatList')[0].scrollHeight);
	}
	function addChatRight(chatName, chatContent, chatTime){
		$('#chatList').append('<div class="text-right"><span class="time">' + chatTime + '</span><span class="yours">' + chatContent + '</span></div>');
		$("#chatList").scrollTop($('#chatList')[0].scrollHeight);
	}
	function getInfiniteChat() {
		setInterval(function() {
			chatListFunction(lastId);
		}, 300);
	}
</script>
<body>
<div class="container">
	<div class="chatList">
		<div class="from"><%= toId %> 님과의 대화</div>
		<div id="chatList">
		</div>
		<div class="chatinput">	
		<c:set var="user" value="${userCorrect}" />
		<c:choose>
				<c:when test="${user eq 'yes'}"> <textarea id="chatContent"></textarea>
			<span class="sbmbtn" onclick="submitFunction();">전송</span> </c:when>
				<c:otherwise>
					<div style="text-align:center; color:white; padding: 40px 0px;"> 존재하지 않은 사용자입니다. 다시 확인해주세요. </div>
   				</c:otherwise>
		</c:choose>
		</div>
	</div>
</div>
</body>
<script>
	$(document).ready(function(){
		chatListFunction('ten');
		getInfiniteChat();
	})
</script>
<jsp:include page="../footer.jsp" />
</html>
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
%>
<script type="text/javascript">
	function getBox(){
		var userId = '<%= userId %>';
		$.ajax({
			type:"GET",
			url: "/chatBox",
			data:{
				userId:userId
			},
			success: function(data){
				if(data=='') return;
				$('#boxTable').html('');
				for(var i=0; i<data.length; i++){
					if(data[i].unread==0) unread='';
					else unread = data[i].unread;
					if(data[i].toId == userId){
						addBox(data[i].id, data[i].fromId, data[i].chatContent, data[i].chatTime, unread);
					}
					else{
						addBox(data[i].id, data[i].toId, data[i].chatContent, data[i].chatTime, unread);
					}
				}
			}
		});
	}
	function addBox(lastId, toId, chatContent, chatTime, unread){
		$('#boxTable').append('<tr onclick="location.href=\'chat?toId='+toId+'\'">'+
				'<td style="width:150px; text-align:center;">'+'<h5>' + toId + '</h5>'+
				'<span class="label label-info" style="margin-left:5px;">' + unread + '</span>' +'</td>' +
				'<td><span>' + chatContent + '</span>' +				
				'<div class="pull-right date">' + chatTime + '</div></td></tr>');
	}
	function getInfiniteBox(){
		getUnread();
		setInterval(function(){
			getBox();
		}, 1000);
	}
</script>
<body>
<div class="container" style="width:700px; padding: 50px 0px;">
	<table class="table" style="margin:0 auto;">
		<thead>
			<tr>
				<th><h4 style="font-weight: 800;">주고받은 메세지 목록</h4></th>
			</tr>
		</thead>
		<div style="overflow-y:auto; width:100%; max-height:450px;">
			<table class="table table-bordered table-hover" style="border:1px solid black; margin:0 auto;">
				<tbody id="boxTable"></tbody>
			</table>
		</div>
	</table>
</div>
</body>
<%
	if(userId!=null){
%>
<script type="text/javascript">
	$(document).ready(function(){
		getBox();
		getInfiniteBox();
	});
</script>
<%
	}
%>
<jsp:include page="../footer.jsp" />
</html>
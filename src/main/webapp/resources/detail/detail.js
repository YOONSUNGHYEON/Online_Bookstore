

$(document).ready(function(){
    $("[latest]").click(function() {
 		var url = $(this).attr("data-url");
        location.href = url;
    })
    $("#like").click(function() {
		return confirm("삭제하시겠습니까?");
    })
    $("[data-confirm-delete]").click(function() {
        return confirm("삭제하시겠습니까?");
    })
    
    $(".autosubmit").change(function() {
        $(this).parents("form").submit();
    })


     
})



function like_click(reviewId) {
	var rID={
		id:reviewId
	};
	console.log(rID);
	$.ajax({
				url : "/like",
				data : rID,
				type : "post",
				dataType : "json",
				async : true,
				success: function(response)
				{
					$("#"+reviewId).replaceWith('<span id="'+reviewId+'">'+response+'</span>');
				}
			
			});

			
	}



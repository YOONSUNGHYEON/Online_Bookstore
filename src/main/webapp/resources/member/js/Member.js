$(document).ready(function(){

     $(".join_btn").click(function(){	
     
//     	if($('#Member_id').val()==""){
//     	alert('아이디를 입력해주세요');
//     	$('#Member_id').focus();
//     	return;
//
//     	}else if($('#Member_pass').val()==""){
//     	alert('비밀번호를 입력해주세요');
//     	$('#Member_pass').focus();
//     	return;
//
//     	}else if($('#Member_pass1').val()==""){
//     	alert('비밀번호확인 해주세요');
//     	$('#Member_pass1').focus();
//     	return;
//
//     	}else if($('#Member_name').val()==""){
//     	alert('이름을 입력해주세요');
//     	$('#Member_name').focus();
//     	return;
//
//     	}else if($('#Member_age').val()==""){
//     	alert('생년월일을 입력해주세요');
//     	$('#Member_age').focus();
//     	return;
//
//     	}else if($('#Member_birth').val()==""){
//     	alert('생년월일을 입력해주세요');
//     	$('#Member_birth').focus();
//     	return;
//
//     	}else if($('#Member_birth1').val()==""){
//     	alert('생년월일을 입력해주세요');
//     	$('#Member_birth1').focus();
//     	return;
//
//     	}else if($('#Member_gender').val()==""){
//     	alert('성별을 선택해주세요');
//     	$('#Member_gender').focus();
//     	return;
//
//     	}else if($('#Member_tel').val()==""){
//     	alert('번호를 입력해주세요');
//     	$('#Member_tel').focus();
//     	return;
//
//     	}else if($('#Member_tel1').val()==""){
//     	alert('휴대폰 인증을 해주세요');
//     	$('#Member_tel1').focus();
//     	return;
//
//     	}else if($('#checkIDResult').html()!="아이디 사용가능"){
//	    alert('아이디중복 확인을해주세요');
//     	$('#Member_tel1').focus();
//     	return;
//
//     	}else if($('#checkPasswdResult').html()!="패스워드 일치합니다"){
//     	alert('비밀번호가 일치하지않습니다');
//     	$('#Member_pass1').focus();
//     	return;
//
//     	}else if($('#PasswdResult').html()=="보안낮음"){
//     	alert('비밀번호 보안이 낮습니다');
//     	$('#Member_pass').focus();
//     	return;
//
//     	}else if($('#PasswdResult').html()=="사용할수 없는 비밀번호입니다"){
//     	alert('사용할수 없는 비밀번호입니다');
//     	$('#Member_pass').focus();
//     	return;
//
//     	}else if($('#checkPhoneResult').html()!="인증완료"){
//     	alert('휴대폰인증을 해주세요');
//     	$('#Member_tel1').focus();
//     	return;
     	
//     	}else{
     	 $("form").submit() 
//     	 }
     	
    });
    
      $(".login_btn").click(function(){
    	$("form").submit()
    });
    
    $('.id_check_btn').click(function() {
    var duplicatecheck = document.getElementById('checkIDResult');
        var id=$('#member_Id').val();
  		 if(id!=""){
  			var regex = /^[A-Za-z][A-Za-z0-9]{3,11}$/;

			if(regex.exec(id)){
			     $.getJSON('/api/duplicatecheck/'+id,function(rdata){
			        duplicatecheck.innerHTML = rdata.message;
			     });
			}else{
			alert('아이디 형식에 맞지않습니다');
			}
		 }else{
			alert('아이디을 입력해주세요');
			}
		});


		
	if($('#Member_id').val()==""){
		$('#checkIDResult').html("");
	}
    
})

function checkPasswd(passwd) {
		var element = document.getElementById('checkPasswdResult');
		
		if(passwd.value==""){
			element.innerHTML = "";
		}else{
			if(passwd.value!= document.getElementById('member_Pass').value){
				element.innerHTML = "패스워드 일치하지 않습니다";				
			} else {
				element.innerHTML = "패스워드 일치합니다";
			}
		}	
	}

function checkID(ID){
	var element = document.getElementById('checkIDResult');
	
	if(ID.value==""){
		element.innerHTML = "";
	}

}

function password(pass){
	var security=0;
	var lengthRegex = /^[A-Za-z0-9!@#$%^_]{8,16}$/;
	var upperCaseRegex= /[A-Z]/;
	var lowerCaseRegex = /[a-z]/;
	var digitRegex = /[0-9]/;
	var specCharRegex = /[!@#$%^_]/;
	var element = document.getElementById('PasswdResult');	
	
	if(pass.value!=""){
		if(lengthRegex.exec(pass.value)){
			security+=(upperCaseRegex.exec($('#member_Pass').val()))? 1:0;
			security+=(lowerCaseRegex.exec($('#member_Pass').val()))? 1:0;
			security+=(digitRegex.exec($('#member_Pass').val()))? 1:0;
			security+=(specCharRegex.exec($('#member_Pass').val()))? 1:0;
		
			switch(security){
				case 2: element.innerHTML = "보안낮음"; $('#PasswdResult').css("color","orange"); break;
				case 3: element.innerHTML = "보통"; $('#PasswdResult').css("color","blue"); break;
				case 4: element.innerHTML = "안전"; $('#PasswdResult').css("color","green"); break;
				default :element.innerHTML = "사용할수 없는 비밀번호입니다"; $('#PasswdResult').css("color","red"); break;
			}
		}
	}else{
		element.innerHTML = "";
	}

}
	
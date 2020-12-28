<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>회원가입</title>
    <link href='<c:url value="/resources/Member/css/reset.css"/>' rel="stylesheet">
    <link href='<c:url value="/resources/Member/css/join.css"/>' rel="stylesheet">
    <link href='<c:url value="/resources/main/ridiBase.css"/>' rel="stylesheet">
    <script src='<c:url value="/resources/Member/js/jquery.min.js"/>'></script>
    <script src='<c:url value="/resources/Member/js/jquery.bxslider.min.js"/>'></script>
    <script src='<c:url value="/resources/Member/js/Member.js?ver=1"/>'></script>
</head>
<body>
<form action='<c:url value="/Member/insert"/>' method="post" name="join">
    <div id="wrapper">
        <div class="wrapper_in">
        <div class="logo"><a href='<c:url value="/"/>'>RIDIBOOKS</a></div>
            <div class="id">
                <h3>아이디</h3>
                <div class="id_box"><input type="text" name="Member_id" id="Member_id" onkeyup="checkID(this)" required="required"
                						placeholder="4~12자리 영문,숫자 조합"></div>
                <div class="id_check_btn"><a href="#">중복확인</a></div><br><br><br>
                <h3 id="checkIDResult"><!-- Ajax에 의해 메세지 출력할 공간 --></h3>
            </div>
            <div class="password">
                <h3>비밀번호</h3>
                <div class="password_box"><input type="password" name="Member_pass" id="Member_pass" required="required" 
                							onkeyup="password(this)" placeholder="8~16자리 영문,숫자,특수문자 조합"></div>
                 <h3 id="PasswdResult"><!-- 자바스크립스에 의해 메세지 출력할 공간 --></h3>
            </div>
            <div class="password_re">
                <h3>비밀번호 재확인</h3>
                <div class="password_re_box"><input type="password" onkeyup="checkPasswd(this)" id="Member_pass1"></div>
                <h3 id="checkPasswdResult"><!-- 자바스크립스에 의해 메세지 출력할 공간 --></h3>
            </div>
            <div class="name">
                <h3>이름</h3>
                <div class="name_box"><input type="text" name="Member_name" id=Member_name></div>
            </div>
            <div class="birth">
                <h3>생년월일</h3>
                <div class="year_box"><input type="text" placeholder="년(4자)" name="Member_age" id=Member_age></div>
                <div class="month_box">
                    <select name="Member_birth_m" id=Member_birth>
                        <option value="">월</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                </div>
                <div class="date_box"><input type="text" placeholder="일" name="Member_birth_d" id=Member_birth1></div>
            </div>
            <div class="gender">
                <h3>성별</h3>
                <div class="gender_box">
                    <select name="Member_gender" id=Member_gender>
                        <option value="">성별</option>
                        <option value="남">남</option>
                        <option value="여">여</option>
                    </select>
                </div>
            </div>
            <div class="join_btn">
                <a href="#">가입하기</a>
            </div>
        </div>
       <!-- footer --> <jsp:include page="../inc/footer.jsp"/>
    </div>
    </form> 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>로그인</title>
    <link href='<c:url value="/resources/Member/css/reset.css"/>' rel="stylesheet">
    <link href='<c:url value="/resources/Member/css/login.css"/>' rel="stylesheet">
    <script src='<c:url value="/resources/Member/js/jquery.min.js"/>'></script>
    <script src='<c:url value="/resources/Member/js/jquery.bxslider.min.js"/>'></script>
    <script src='<c:url value="/resources/Member/js/Member.js"/>'></script>
</head>
<body>
<form action='<c:url value="/Member/login"/>' method="post">
    <div id="wrapper">
        <div class=wrapper_in>
            <h3>LOGIN</h3>
            <div class="login_box">
                <input type="text" class="id_box" placeholder="아이디" name="Member_id">
                <input type="password" class="password_box" placeholder="비밀번호" name="Member_pass">
                <div class="id_remember">
                    <input type="checkbox" id="id_remember_check">
                    <label for="id_remember_check">아이디 기억하기</label>
                </div>
                <div class="login_btn">
                    <a href="#">
                        로그인
                    </a>
                </div>
                <div class="login_gnb">
                    <ul>
                        <li>
                            <a href="#">아이디 찾기</a>
                        </li>
                        <li><span>|</span></li>
                        <li>
                            <a href="#">비밀번호 찾기</a>
                        </li>
                        <li><span>|</span></li>
                        <li>
                            <a href='<c:url value="/Member/join"/>'>회원가입</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
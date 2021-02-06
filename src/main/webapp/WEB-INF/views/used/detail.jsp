<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<script type="text/javascript" src="jquery-2.1.1.min.js"></script>
<jsp:include page="../mainBase.jsp" />
<body>

<div class="container">
${book.title }
</div>

<jsp:include page="../footer.jsp" />
</body>
</html>
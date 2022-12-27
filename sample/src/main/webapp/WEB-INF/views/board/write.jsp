<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
	<form method="post">
		<label>제목</label>
		<input type="text" name="title" />
		<hr />
		
		<label>작성자</label>
		<input type="text" name="writer" />
		<hr />
		
		<label>내용</label>
		<textarea cols="50" rows="5" name="content"></textarea>
		<hr />

		<button type="submit">작성</button>

	</form>
</body>
</html>
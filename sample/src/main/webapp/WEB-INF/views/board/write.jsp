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
	<form method="post">
		<label>제목</label>
		<input type="text" name="title" />
		<br />
		
		<label>작성자</label>
		<input type="text" name="writer" />
		<br />
		
		<label>내용</label>
		<textarea cols="50" rows="5" name="content"></textarea>
		<br />

		<button type="submit">작성</button>

	</form>
</body>
</html>
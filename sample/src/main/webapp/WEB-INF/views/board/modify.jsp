<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<label>제목</label> 
		<input type="text" name="title" value="${view.title}" />
		<br /> 
		
		<label>작성자</label>
		${view.writer}
		<br />

		<label>내용</label>
		<textarea cols="50" rows="5" name="content">${view.content}</textarea>
		<br />

		<button type="submit">완료</button>
	</form>
</body>
</html>
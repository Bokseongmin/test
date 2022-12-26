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
	${view.title}<br/>
	
	<label>작성자</label>
	${view.writer}<br/>
	
	<label>내용</label>
	${view.title}<br/>
	
	<div>
	<a href="/board/modify?bno=${view.bno}">게시물 수정</a>
	</div>
</form>
</body>
</html>
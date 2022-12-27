<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	
	<p><a href="/board/list">게시판</a></p>
	<p><a href="/board/write">글 작성</a></p>
	<p><a href="/board/listPage?num=1">게시판 + 페이징</a></p>
	<p><a href="/board/listSearch?num=1">글 목록 + 페이징 + 검색</a></p>
</body>
</html>

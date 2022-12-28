<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	${view.title}<hr/>
	
	<label>작성자</label>
	${view.writer}<hr/>
	
	<label>내용</label>
	${view.content}<hr/>
	
	<div>
	<a href="/board/modify?bno=${view.bno}">게시물 수정</a>
	<a href="/board/delete?bno=${view.bno}">게시물 삭제</a>
	</div>
</form>
<!-- 댓글 -->
	<hr />

	<ul>
		<c:forEach items="${reply}" var="reply">
			<li>
				<div>
					<p>${reply.writer}/ <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" /></p>
					<p>${reply.content }</p>
				</div>
			</li>
		</c:forEach>
	</ul>

	<div>

	<form method="post" action="/reply/write">
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="writer">
		</p>
		<p>
			<textarea rows="5" cols="50" name="content"></textarea>
		</p>
		<p>
			<input type="hidden" name="bno" value="${view.bno}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

</head>
<body>
	<div class="container">
		<header>
			<%@ include file="../include/header.jsp"%>
		</header>
		<div id="nav">
			<%@ include file="../include/nav.jsp"%>
		</div>
		<section id="container">
			<form method="post" action="/reply/modify">
				<div class="form-group">
					<label class="control-label">댓글 작성자</label> 
					<input type="text"
						name="writer" value="${reply.writer}" class="form-control"
						readonly="readonly" />
				</div>

				<div class="form-group">
					<label class="control-label">내용</label>
					<textarea class="form-control" cols="50" rows="5" name="content">${reply.content}</textarea>
				</div>
				<input type="hidden" name="bno" value="${reply.bno}"> <input
					type="hidden" name="rno" value="${reply.rno}">

				<button type="submit" class="btn btn-warning">수정</button>
			</form>
		</section>
		<footer>
			<%@ include file="../include/footer.jsp"%>
		</footer>
	</div>
</body>
</html>
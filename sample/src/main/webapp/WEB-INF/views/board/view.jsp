<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
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
			<form method="post">
				<div class="form-group">
					<label class="control-label">번호</label> <input type="text"
						class="form-control" value="${view.bno}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label class="control-label">제목</label> <input type="text"
						class="form-control" value="${view.title}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label class="control-label">작성자</label> <input type="text"
						class="form-control" value="${view.writer}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label class="ontrol-label">내용</label> <input type="text"
						class="form-control" value="${view.content}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label class="control-label">작성일</label> <span><fmt:formatDate
							value="${view.regDate}" pattern="yyyy-MM-dd" /></span>
				</div>

				<div class="form-group">
					<button type="button" class="btn btn-warning"
						onClick="location.href='/board/modify?bno=${view.bno}'">수정</button>
					<button type="button" class="btn btn-danger"
						onClick="location.href='/board/delete?bno=${view.bno}'">삭제</button>
				</div>
			</form>
			<!-- 댓글 -->
			<hr />

			<ol>
				<c:forEach items="${reply}" var="reply">
					<li>
						<p>
							<span class="glyphicon glyphicon-user"></span> ${reply.writer} (
							<fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" />
							)
						</p>
						<p>${reply.content }</p>

						<div class="form-group">
							<button type="button" class="btn btn-warning btn-xs"
								onClick="location.href='/reply/modify?bno=${view.bno}&rno=${reply.rno}'">수정</button>
							<button type="button" class="btn btn-danger btn-xs"
								onClick="location.href='/reply/delete?bno=${view.bno}&rno=${reply.rno}'">삭제</button>
						</div>

						<hr />
					</li>
				</c:forEach>
			</ol>

			<div>

				<form method="post" action="/reply/write" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label">작성자</label>
						<div class="col-sm-10">
							<input type="text" name="writer" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">내용</label>
						<div class="col-sm-10">
							<textarea type="text" name="content" class="form-control"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="hidden" name="bno" value="${view.bno}">
							<button type="submit" class="repSubmit btn btn-success">작성</button>
						</div>
					</div>
				</form>
			</div>
		</section>
		<footer>
			<%@ include file="../include/footer.jsp"%>
		</footer>
	</div>
</body>
</html>
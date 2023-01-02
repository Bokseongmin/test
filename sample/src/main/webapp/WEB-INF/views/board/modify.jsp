<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			<form method="post">
				<div class="form-group">
					<label class="control-label">제목</label> <input type="text"
						name="title" value="${view.title}" class="form-control" />
				</div>
				<div class="form-group">
					<label class="control-label">작성자</label> <input type="text"
						name="writer" class="form-control" value="${view.writer}"
						readonly="readonly" />
				</div>
				<div class="form-group">
					<label class="control-label">내용</label>
					<textarea class="form-control" cols="50" rows="5" name="content">${view.content}</textarea>
				</div>
				<button type="submit" class="btn btn-success">작성</button>
			</form>
		</section>
		<footer>
			<%@ include file="../include/footer.jsp"%>
		</footer>
	</div>
</body>
</html>
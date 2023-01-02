<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
	
</script>
</head>
<body>
	<div class="container">
		<div id="header">
			<%@ include file="../include/header.jsp"%>
		</div>
		<div id="nav">
			<%@ include file="../include/nav.jsp"%>
		</div>
		<section id="container">
			<form method="post">
				<div class="form-group">
					<label class="control-label">제목</label> <input type="text"
						name="title" class="form-control" />
				</div>
				<div class="form-group">
					<label class="control-label">작성자</label> <input type="text"
						name="writer" class="form-control" />
				</div>
				<div class="form-group">
					<label class="control-label">내용</label>
					<textarea class="form-control" cols="50" rows="5" name="content"></textarea>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success">작성</button>
				</div>
			</form>
		</section>
		<footer>
			<%@ include file="../include/footer.jsp"%>
		</footer>
	</div>
</body>
</html>
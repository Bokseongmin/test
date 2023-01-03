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

<body>
	<div class="container">
		<header>
			<%@ include file="../include/header.jsp"%>
		</header>
		<div id="nav">
			<%@ include file="../include/nav.jsp"%>
		</div>
		<section>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>작성자</th>
						<th>조회수</th>
					</tr>
				</thead>

				<tbody>

				</tbody>
				<c:forEach items="${list}" var="list">
					<tr>
						<td>${list.bno}</td>
						<td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
						<td><fmt:formatDate value="${list.regDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${list.writer}</td>
						<td>${list.viewCnt}</td>
					</tr>
				</c:forEach>
			</table>

			<div class="search row">
				<div class="col-xs-2 col-sm-2">
					<select name="searchType" class="form-control">
						<option value="title"
							<c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
						<option value="content"
							<c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
						<option value="title_content"
							<c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
						<option value="writer"
							<c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
					</select>
				</div>

				<div class="col-xs-10 col-sm-10">
					<div class="input-group">
						<input type="text" name="keyword" value="${page.keyword}"
							class="form-control" /> <span class="input-group-btn">
							<button type="button" id="searchBtn" class="btn btn-default">검색</button>
						</span>
					</div>
				</div>
			</div>

			<div class="col-md-offset-3">
				<ul class="pagination">
					<c:if test="${page.prev}">
						<li class="page-item"><a class="page-link"
							href="/board/listSearch?num=${page.startPageNum - 1}${page.searchType_keyword}"
							aria-label="Previous">이전</a></li>
					</c:if>

					<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}"
						var="num">
						<li <c:out value="${select == num ? 'class=active' : ''}"/>>
							<a class="page-link"
							href="/board/listSearch?num=${num}${page.searchType_keyword}">${num}</a>
						</li>
					</c:forEach>

					<c:if test="${page.next}">
						<li class="page-item"><a class="page-link"
							href="/board/listSearch?num=${page.endPageNum + 1}${page.searchType_keyword}"
							aria-label="Next">다음</a></li>
					</c:if>
				</ul>
			</div>
			<script>
				document.getElementById("searchBtn").onclick = function() {
					let searchType = document.getElementsByName("searchType")[0].value;
					let keyword = document.getElementsByName("keyword")[0].value;

					location.href = "/board/listSearch?num=1" + "&searchType="
							+ searchType + "&keyword=" + keyword;
				}
			</script>
		</section>
		<footer>
			<%@ include file="../include/footer.jsp"%>
		</footer>
	</div>
</body>
</html>
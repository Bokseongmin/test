<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>
	<table>
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

	<div>
		<c:if test="${page.prev}">
			<span>[ <a href="/board/listSearch?num=${page.startPageNum - 1}${page.searchType_keyword}">이전</a>
				]
			</span>
		</c:if>

		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}"
			var="num">
			<span> <c:if test="${select != num}">
					<a href="/board/listSearch?num=${num}${page.searchType_keyword}">${num}</a>
				</c:if> <c:if test="${select == num}">
					<b>${num}</b>
				</c:if>

			</span>
		</c:forEach>

		<c:if test="${page.next}">
			<span>[ <a href="/board/listSearch?num=${page.endPageNum + 1}${page.searchType_keyword}">다음</a>
				]
			</span>
		</c:if>
	</div>
	
	<div>
		<select name="searchType">
			<option value="title"
				<c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
			<option value="content"
				<c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
			<option value="title_content"
				<c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
			<option value="writer"
				<c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
		</select> <input type="text" name="keyword" value="${page.keyword}" />

		<button type="button" id="searchBtn">검색</button>
	</div>
	<script>
		document.getElementById("searchBtn").onclick = function() {
			let searchType = document.getElementsByName("searchType")[0].value;
			let keyword = document.getElementsByName("keyword")[0].value;

			location.href = "/board/listSearch?num=1" + "&searchType="
					+ searchType + "&keyword=" + keyword;
		}
	</script>
</body>
</html>
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
	<label>����</label>
	${view.title}<br/>
	
	<label>�ۼ���</label>
	${view.writer}<br/>
	
	<label>����</label>
	${view.title}<br/>
	
	<div>
	<a href="/board/modify?bno=${view.bno}">�Խù� ����</a>
	</div>
</form>
</body>
</html>
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
		<input type="text" name="title" value="${view.title}" />
		<br /> 
		
		<label>�ۼ���</label>
		${view.writer}
		<br />

		<label>����</label>
		<textarea cols="50" rows="5" name="content">${view.content}</textarea>
		<br />

		<button type="submit">�Ϸ�</button>
	</form>
</body>
</html>
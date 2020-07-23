<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="input.do">
	<!-- <input type="text" name="timedate" pattern="\d{4}/\d{2}/\d{2}"> -->
	<input type="date" name="timedate">
	<input type="date" name="strdate">
	<button>등록</button>
</form>
</body>
</html>
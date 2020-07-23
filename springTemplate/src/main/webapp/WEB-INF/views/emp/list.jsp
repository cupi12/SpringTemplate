<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>하준원</title>
</head>
<body>
<h3>사원목록</h3>
<c:forEach items="${empList }" var="emp">
성 : ${emp.first_name }  이름 : ${emp.last_name } <br>
</c:forEach>
</body>
</html>
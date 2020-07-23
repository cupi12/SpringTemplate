<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<h1>사원등록</h1>
<form action="insertEmp" method="post" enctype="multipart/form-data">
<input placeholder="firstName" name="firstName"><br>
<input placeholder="LastName" name="LastName"><br>
<input placeholder="email" name="email"><br>
<input placeholder="jobId" name="jobId"><br>
<input placeholder="hireDate" name="hireDate"><br>
이미지<input type="file" name="uploadFile">
<input type="submit" value="등록">
</form>
</body>
</html>
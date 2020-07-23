<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!

</h1>

<P>  The time on the server is ${serverTime}. </P>
${empVO.firstName } - ${evo.lastName }
</body>
</html>

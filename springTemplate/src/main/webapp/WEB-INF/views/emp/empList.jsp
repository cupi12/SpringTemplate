<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<script>
	$(function() {
		$(".empId").on("click", function() {
			var empid = $(this).html();
			var url = "getEmp/" + empid;
			//	$("#getEmpDiv").load(url)
			/*	$.getJSON("getEmpAjax",{employeeId:empid}, function(result){  //요청은 get방식으로 결과는 JSON으로 받겠다.
				//			URL				Parameter		 콜백함수(서버에서 넘겨준 값)
				$(".row").find(".col").eq(0).html(result.employeeId);
				$(".row").find(".col").eq(1).html(result.firstname);
				$(".row").find(".col").eq(1).html(result.lastName);
				$(".row").find(".col").eq(2).html(result.email);
				$(".row").find(".col").eq(3).html(result.hireDate);
					
				} );      */

			$.ajax({ //위에거과 동일하지만 표기형식이 다름
				url : "getEmpAjax",
				data : {
					employeeId : empid
				},
				dataType : 'json', //결과 타입
			/* method : 'get',   //요청 방식
			success : 	function(result){   //콜백함수
				$(".row").find(".col").eq(0).html(result.employeeId);
				$(".row").find(".col").eq(1).html(result.firstname);
				$(".row").find(".col").eq(1).html(result.lastName);
				$(".row").find(".col").eq(2).html(result.email);
				$(".row").find(".col").eq(3).html(result.hireDate);					
				},
			error : function(){			//에러 발생시 요청할 function
				alert("error");
			}
			async : false			     //비동기 여부
			cache : false				//cache여부 */
			}).done(function(result){  //ajax가 끝나고 난 뒤  success와 동일
				$(".row").find(".col").eq(0).html(result.employeeId);
				$(".row").find(".col").eq(1).html(result.firstname);
				$(".row").find(".col").eq(1).html(result.lastName);
				$(".row").find(".col").eq(2).html(result.email);
				$(".row").find(".col").eq(3).html(result.hireDate);
				console.log(result);
			})
			.fail(function(){})
			.always(function(){});
		});

	});
</script>
</head>
<body>
	<h3>사원목록현황</h3>
	<div class="row">
		<div class="col">${emp.employeeId }</div>
		<div class="col">${emp.firstName }${emp.lastName }</div>
		<div class="col">${emp.email }</div>
		<div class="col">${emp.hireDate }</div>
	</div>


	<div id="getEmpDiv"></div>
	<c:forEach items="${empList }" var="emp">
		<img src="download?name=${emp.profile}" style="width: 80px"
			onerror="this.src='images/Jellyfish.jpg'">
		<a href="#" class="empId">${emp.employeeId}</a> 
		${emp.lastName} ${emp.firstName} <br>
	</c:forEach>
	<a href="report.do" target="_blank">report</a>
	<br>
	<a href="report2.do" target="_blank">report2</a>


</body>
</html>
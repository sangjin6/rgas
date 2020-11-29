<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수행내역 등록</title>
</head>
<body>
	<form action="/perform" method="post" enctype="multipart/form-data">
		<input type="hidden" name="paymentNo" id="paymentNo" value="${paymentNo}" />
		<div>
			<label>미션 제목 : </label>	${mission.title}
		</div>
		<div>
			<label>인증사진 업로드</label>
			<div>
				<input type="file" name="img" id="img">
			</div>
		</div>
		<div>
			<label></label>
			<div>
				<input value="등록" type="submit" disabled />
			</div>
		</div>
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script>
		$(function() {
			$("#img").change(function(e){
				$('input[type="submit"]').removeAttr('disabled');
			});
		});
  	</script>
</body>
</html>
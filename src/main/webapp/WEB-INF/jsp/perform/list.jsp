<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h3>수행내역 목록</h3>
    <!-- <button onclick="location.href='/mission/form'">작성</button> -->
    <table border='2'>
        <tr>
            <th>제목</th>
            <th>수행 날짜</th>
            <th>이미지</th>
        </tr>
        <c:forEach var="perform" items="${list}">
        <tr>
            <td>${mission.title}</td>
            <td>${perform.registerDate}</td>
            <td><img src="C:\workspace\rgas\src\main\resources\img\3a33b6ff_미션 목록 조회.jpg"></td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>
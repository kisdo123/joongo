<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>serch.jsp</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>분류</th>
				<th>닉네임</th>
				<th>상태</th>
				<th>가격</th>
				<th>내용</th>
				<th>태그</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="product" items="${products}">
				<tr>
					<td><a href="productInfo.do?proNo=${product.proNo}">${product.proNo}</a></td>
					<td>${product.title}</td>
					<td>${product.catName}</td>
					<td>${product.nickname}</td>
					<td>${product.condit}</td>
					<td>${product.price}</td>
					<td>${product.content}</td>
					<td>${product.tags}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
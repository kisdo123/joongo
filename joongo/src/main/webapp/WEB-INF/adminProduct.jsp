<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/joongo/css/adminProduct.css">
<script type="text/javascript" src="/joongo/script/adminProduct.js"></script>
</head>
<body>

<div class="adminHeader"><jsp:include page="/particular/adminHeader.jsp"></jsp:include></div>

<div class="adminProduct-divTop">
	<div class="adminProduct-divTitle">[ 상품 관리 ]</div>

	<table class="adminProduct-table">
		<thead>
			<tr>
				<th>상품번호</th>
				<th>제목</th>
				<th>카테고리번호</th>
				<th>유저번호</th>
				<th>닉네임</th>
				<th>상태</th>
				<th>가격</th>
				<th>태그</th>
				<th>활성여부</th>
				<th colspan="4">상품 관리</th>
			</tr>
		</thead>
		<c:forEach var="prouducts" items="${products }">
			<tbody>
				<tr>
					<td>${prouducts.proNo }</td>
					<td>${prouducts.title }</td>
					<td>${prouducts.catNo }</td>
					<td>${prouducts.userNo }</td>
					<td>${prouducts.nickname }</td>
					<td>${prouducts.condit }</td>
					<td>${prouducts.price }</td>
					<td>${prouducts.tags }</td>
					<td>${prouducts.able }</td>
					<td><button onclick="ableProduct(${prouducts.proNo },true)">활성화</button></td>
					<td><button onclick="ableProduct(${prouducts.proNo },false)">비활성화</button></td>
					<td style="border-right: 3px solid #6666667a;"><button class="adminProduct-delBtn" onclick="location.href='adminDeleteProduct.do?proNo=${prouducts.proNo }'">상품 삭제</button></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/categoryList.css">
<script type="text/javascript" src="/joongo/script/categoryList.js?1"></script>
<script type="text/javascript" src="/joongo/script/pagination.js"></script>
<link rel="stylesheet" type="text/css" href="/joongo/css/simplePagination.css">
<link rel="stylesheet" type="text/css" href="/joongo/css/userPage.css">
<jsp:include page="/particular/header.jsp"></jsp:include>
<div id="container" class="container">
	<div class="w1200">
		<div class="middle" id="middle2">
			<div class="category-button-container">
				<div class="category-button" id="category-button" onclick="selectCat(1)">의류</div>
				<div class="category-button" onclick="selectCat(2)">가전제품</div>
				<div class="category-button" onclick="selectCat(3)">화장품</div>
				<div class="category-button" onclick="selectCat(4)">악기</div>
				<div class="category-button" onclick="selectCat(5)">도서</div>
				<div class="category-button" onclick="selectCat(6)">생활용품</div>
				<div class="category-button" onclick="selectCat(7)">스포츠</div>
				<div class="category-button" onclick="selectCat(8)">식품</div>
				<div class="category-button" onclick="selectCat(9)">기타</div>
			</div>
			<div class="category">
				<p class="category-info">
					<span><input value="의류" readonly class="category-title"></span>
				</p>
				<div id="products" class="product-container"></div>
			</div>
			<div class="pagination" id="pagination"></div>
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>



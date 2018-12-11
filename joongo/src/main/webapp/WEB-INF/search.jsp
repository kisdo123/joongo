<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="/joongo/css/categoryList.css">
<script type="text/javascript" src="/joongo/script/categoryList.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<jsp:include page="/particular/loginPopup.jsp"></jsp:include>

<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<div class="category-button-container">
				<div class="category-button" onclick="selectCat(1)">의류</div>
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
				<div id="products" class="product-container">
					<c:forEach var="product" items="${products}">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }"> <c:if test="${product.image.isEmpty() }">
										<img src="/joongo/image/no-image.jpg" class="product-img">
									</c:if> <c:if test="${!product.image.isEmpty() }">
										<img src="${product.image.get(0).imagePath }"
											class="product-img">
									</c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="#">${product.title}</a>
								</div>
								<div class="product-price">${product.price}</div>
								<div class="product-tag">${product.tags}</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="product-pageNum">
				<span class="pageNum">◁</span> <span class="pageNum">1</span> <span
					class="pageNum">2</span> <span class="pageNum">3</span> <span
					class="pageNum">4</span> <span class="pageNum">5</span> <span
					class="pageNum">▷</span>
			</div>
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/productList.css">
<script type="text/javascript" src="/joongo/script/productList.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<jsp:include page="/particular/loginPopup.jsp"></jsp:include>
<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<div class="category-button-container">
				<div class="category-button">의류</div>
				<div class="category-button">가전제품</div>
				<div class="category-button">화장품</div>
				<div class="category-button">악기</div>
				<div class="category-button">도서</div>
				<div class="category-button">생활용품</div>
				<div class="category-button">스포츠</div>
				<div class="category-button">식품</div>
				<div class="category-button">기타</div>
			</div>
			<table border="1">
				<c:forEach var="product" items="${products}">
					<tr>
						<td>${product.title}</td>
						<td>${product.catNo}</td>
						<td>${product.nickname}</td>
						<td>${product.condit}</td>
						<td>${product.price}</td>
						<c:if test="${!product.image.isEmpty() }">
							<td><img src="${product.image.get(0).imagePath }"></td>
						</c:if>
						<td>${product.tags}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="category">
				<p class="category-info">
					<span><input value="의류" readonly class="category-title"></span>
				</p>
				<div class="product-container">
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
							</a>
						</div>
						<div class="product-info">
							<div class="product-title">
								<a href="#">맛있는 과일!</a>
							</div>
							<div class="product-price">19000</div>
							<div class="product-tag">#사과 #귤 #포도</div>
						</div>
					</div>
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
							</a>
						</div>
						<div class="product-info">
							<div class="product-title">
								<a href="#">맛있는 과일!</a>
							</div>
							<div class="product-price">19000</div>
							<div class="product-tag">#사과 #귤 #포도</div>
						</div>
					</div>
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
							</a>
						</div>
						<div class="product-info">
							<div class="product-title">
								<a href="#">맛있는 과일!</a>
							</div>
							<div class="product-price">19000</div>
							<div class="product-tag">#사과 #귤 #포도</div>
						</div>
					</div>
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
							</a>
						</div>
						<div class="product-info">
							<div class="product-title">
								<a href="#">맛있는 과일!</a>
							</div>
							<div class="product-price">19000</div>
							<div class="product-tag">#사과 #귤 #포도</div>
						</div>
					</div>
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
							</a>
						</div>
						<div class="product-info">
							<div class="product-title">
								<a href="#">맛있는 과일!</a>
							</div>
							<div class="product-price">19000</div>
							<div class="product-tag">#사과 #귤 #포도</div>
						</div>
					</div>
				</div>
			</div>
			<div class="product-container">
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
			</div>
			<div class="product-container">
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
			</div>
			<div class="product-container">
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
				<div class="product">
					<div class="product-img-container">
						<a href="#"> <img src="/joongo/image/fruit.jpg" class="product-img">
						</a>
					</div>
					<div class="product-info">
						<div class="product-title">
							<a href="#">맛있는 과일!</a>
						</div>
						<div class="product-price">19000</div>
						<div class="product-tag">#사과 #귤 #포도</div>
					</div>
				</div>
			</div>
		</div>
		<div class="product-pageNum">
			<span class="pageNum">◁</span> <span class="pageNum">1</span> <span class="pageNum">2</span> <span class="pageNum">3</span> <span class="pageNum">4</span> <span class="pageNum">5</span> <span class="pageNum">▷</span>
		</div>
		<div class="top-down-cotainer">
			<div class="up">
				<span>TOP</span><i class="fa fa-arrow-up arrow-up" aria-hidden="true"></i>
			</div>
			<div class="down">
				<span>BOTTOM</span><i class="fa fa-arrow-down arrow-down" aria-hidden="true"></i>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>
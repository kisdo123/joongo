<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css">
<script type="text/javascript" src="/joongo/script/main.js"></script>
</head>
<jsp:include page="/particular/header.jsp"></jsp:include>
<jsp:include page="/particular/loginPopup.jsp"></jsp:include>
<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<!-- 최신글은 한번만 -->
			<div class="lately-container">
				<p class="category-info">
					<span class="category-title">최신글</span>
					<!-- <span class="all-view">전체보기</span> -->
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
							</a>
						</div>
						<div class="product-info">
							<div class="product-title">
								<a href="#">ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ</a>
							</div>
							<div class="product-price">19000</div>
							<div class="product-tag">#사과 #귤 #포도</div>
						</div>
					</div>
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
							</a>
						</div>
						<div class="product-info">
							<div class="product-title">
								<a href="#">asdasdasdasdasdasdasd</a>
							</div>
							<div class="product-price">19000</div>
							<div class="product-tag">#사과 #귤 #포도</div>
						</div>
					</div>
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
			<div class="category-button-container">
				<!-- 카테고리 for문 8개 -->
				<div class="category-button">안농~</div>
				<div class="category-button">카테고리</div>
				<div class="category-button">카테고리</div>
				<div class="category-button">카테고리</div>
				<div class="category-button">카테고리</div>
				<div class="category-button">카테고리</div>
				<div class="category-button">카테고리</div>
				<div class="category-button">카테고리</div>
			</div>
			<!-- category 별로 for문이 돌아가야 함. -->
			<div class="category">
				<p class="category-info">
					<span class="category-title">의류</span> <span class="all-view">전체보기</span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
				<div class="line"></div>
			</div>
			<div class="category">
				<p class="category-info">
					<span class="category-title">카테고리</span> <span class="all-view">전체보기</span>
				</p>
				<div class="product-container">
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg" class="product-img">
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
				<!-- 카테고리별 상품을 구분해주는 라인 -->
				<div class="line"></div>
			</div>
			<!-- 맨 위, 맨 아래로 -->
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
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>
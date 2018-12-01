<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css">
<link rel="stylesheet" type="text/css"
	href="/joongo/css/productInfo.css">
<script type="text/javascript" src="/joongo/script/main.js"></script>

</head>
<jsp:include page="/particular/header.jsp"></jsp:include>

<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<div class="productInfo-topDiv">
				<br> <img src="/joongo/image/fruit.jpg" class="productInfo-img">
			</div>
			<div class="productInfo-context">
				<div class="productInfo-title">과일
					팔아요fdagfgkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk</div>
				<div class="productInfo-price">220,00000000000000000000000000000원</div>

			<ul class="productInfo-ul">
				<li class="productInfo-li">
					<strong>주소</strong>
					<span>서울특별시</span>
				</li>
				<li class="productInfo-li">
					<strong>등록날짜</strong>
					<span>2018.11.30</span>
				</li>
				<li class="productInfo-li">
					<strong>찜</strong>
					<span>30</span>
				</li>
				<li class="productInfo-li">
					<strong>조회수</strong>
					<span>1234</span>
				</li>
				<li class="productInfo-li">
					<strong>상품상태</strong>
					<span>새상품</span>
				</li>
			</ul>
			

			</div>
			<button class="productInfo-zzimBtn">찜</button>
			<button class="productInfo-zzimBtn">구매하기</button>














			<!-- 최신글은 한번만 -->
			<div class="lately-container" style="clear: both;">
				<p class="category-info">
					<span class="category-title">연관상품</span>
					<!-- <span class="all-view">전체보기</span> -->
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="../image/fruit.jpg"
								class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg"
								class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg"
								class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg"
								class="product-img">
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
							<a href="#"> <img src="../image/fruit.jpg"
								class="product-img">
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

		</div>
	</div>
</div>

<jsp:include page="/particular/footer.jsp"></jsp:include>
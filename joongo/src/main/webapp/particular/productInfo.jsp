<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css">
<link rel="stylesheet" type="text/css"
	href="/joongo/css/productInfo.css">
<script type="text/javascript" src="/joongo/script/main.js"></script>
<script type="text/javascript" src="/joongo/script/productInfo.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<div class="productInfo-topDiv">
				<ul class="productInfo-radioUl">
					<li class="productInfo-radioLi"><img src="/joongo/image/1.jpg"
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/2.jpg"
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/3.jpg"
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/4.jpg"
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/5.jpg"
						class="productInfo-img"></li>
				</ul>
				<div class="productInfo-raridoDiv">
					<input type="radio" name="pos" class="pos" value="1" id="pos1"
						checked="checked"> <input type="radio" name="pos"
						class="pos" value="2" id="pos2"> <input type="radio"
						name="pos" class="pos" value="3" id="pos3"> <input
						type="radio" name="pos" class="pos" value="4" id="pos4"> <input
						type="radio" name="pos" class="pos" value="5" id="pos5">
					<p class="pos">
						<label for="pos1"></label> <label for="pos2"></label> <label
							for="pos3"></label> <label for="pos4"></label> <label for="pos5"></label>
					</p>
				</div>
			</div>

			<div class="productInfo-context">
				<c:forEach var="product" items="${products}">
					<div class="productInfo-title">제목 : ${product.title}</div>
					<div class="productInfo-price">
						가격 : ${product.price} <span class="productInfo-won">원</span>
					</div>

					<ul class="productInfo-contextUl">
						<li class="productInfo-contextLi"><strong>주소</strong> <span>서울특별시</span>
						</li>
						<li class="productInfo-contextLi"><strong>등록날짜</strong> <span>2018.11.30</span>
						</li>
						<li class="productInfo-contextLi"><strong>찜</strong> <span>30</span>
						</li>
						<li class="productInfo-contextLi"><strong>조회수</strong> <span>1234</span>
						</li>
						<li class="productInfo-contextLi"><strong>상태</strong> <span>판매중..${product.condit}</span>
						</li>
					</ul>
				</c:forEach>
			</div>

			<div class="productInfo-btnDiv">
				<button class="productInfo-zzimBtn">
					<span class="productInfo-zzimI"><i class="fa fa-heart"
						aria-hidden="true"></i> 찜</span>
				</button>
				<button class="productInfo-buyBtn">
					<span><i class="fa fa-shopping-basket" aria-hidden="true"></i></span>
					구매하기
				</button>
			</div>

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



			<div class="productInfo-exTitle">상품정보</div>
			<div class="productInfo-ex"></div>

			<c:forEach var="product" items="${products}">
				<div class="productInfo-exContext">내용${product.content}</div>
			</c:forEach>

			<!-- 맨 위, 맨 아래로 -->
			<div class="top-down-cotainer">
				<div class="up">
					<span>TOP</span><i class="fa fa-arrow-up arrow-up"
						aria-hidden="true"></i>
				</div>
				<div class="down">
					<span>BOTTOM</span><i class="fa fa-arrow-down arrow-down"
						aria-hidden="true"></i>
				</div>
			</div>

		</div>
	</div>


</div>

<jsp:include page="/particular/footer.jsp"></jsp:include>
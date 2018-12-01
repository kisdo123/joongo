<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css">
<link rel="stylesheet" type="text/css"
	href="/joongo/css/productInfo.css">
<link rel="stylesheet" type="text/css" href="/joongo/css/slide.css">
<script type="text/javascript" src="/joongo/script/main.js"></script>
<script type="text/javascript" src="/joongo/script/productInfo.js"></script>
</head>
<jsp:include page="/particular/header.jsp"></jsp:include>

<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<div class="productInfo-topDiv">
				<ul class="productInfo-radioUl">
					<li class="productInfo-radioLi"><img src="/joongo/image/1.jpg" class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/2.jpg" class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/3.jpg" class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/4.jpg" class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/5.jpg" class="productInfo-img"></li>
				</ul>
				<div class="productInfo-raridoDiv">
					<input type="radio" name="pos" class="pos" value="1" id="pos1"
						checked="checked"> <input type="radio" name="pos" class="pos"
						value="2" id="pos2"> <input type="radio" name="pos"
						class="pos" value="3" id="pos3"> <input type="radio"
						name="pos" class="pos" value="4" id="pos4">
						<input type="radio"
						name="pos" class="pos" value="5" id="pos5">
				</div>
			</div>
			<div class="productInfo-context">
				<div class="productInfo-title">과일
					팔아요fdagfgkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk</div>
				<div class="productInfo-price">220,00000000000000000000000000000원</div>

				<ul class="productInfo-contextUl">
					<li class="productInfo-contextLi"><strong>주소</strong> <span>서울특별시</span>
					</li>
					<li class="productInfo-contextLi"><strong>등록날짜</strong> <span>2018.11.30</span>
					</li>
					<li class="productInfo-contextLi"><strong>찜</strong> <span>30</span>
					</li>
					<li class="productInfo-contextLi"><strong>조회수</strong> <span>1234</span>
					</li>
					<li class="productInfo-contextLi"><strong>상품상태</strong> <span>새상품</span>
					</li>
				</ul>


			</div>
			<div class="productInfo-btnDiv">
				<button class="productInfo-zzimBtn">찜</button>
				<button class="productInfo-buyBtn">구매하기</button>
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
			<div class="productInfo-exContext">
				올해 첫 수확한 당도높은 과일 판매 시작합니다<br> <br> 드셔본분들은 극찬하는 맛 👍👍아삭아삭
				새콤달콤 연말에 선물용으로도 좋아요🍎 <br> 먹어본 사람은 다시찾게 되는 맛~!!<br> ✔ 모든
				주문은 흠없고 예쁜 사과로 개별<br> 포장해서보내드립니다 아침에 쥬스로 갈아드셔도 되고<br> 잼으로
				만들어 드셔도 좋아요 언제든 편하게 문의주세요.<br> <br> 입금 후 받는분의 성함 주소 연락처를
				010-1234-5678번로 문자주세요<br>
			</div>


	
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
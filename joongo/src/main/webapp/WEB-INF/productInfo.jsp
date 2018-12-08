<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
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
					<c:if test="${!product.image.isEmpty() }">

						<li class="productInfo-radioLi"><img
							src="${product.image.get(0).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(1).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(2).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(3).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(4).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(5).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(6).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(7).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(8).imagePath }" width="400px"
							height="400px"></li>
						<li class="productInfo-radioLi"><img
							src="${product.image.get(9).imagePath }" width="400px"
							height="400px"></li>

					</c:if>

					<!-- 이미지 2개일 때 예시 -->
					<!-- 이미지 src 없을때 이미지와 라디오버튼이 보이지 않음 -->
					<!-- <li class="productInfo-radioLi"><img src="/joongo/image/1.jpg"
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src="/joongo/image/2.jpg"
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src=""
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src=""
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src=""
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src=""
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src=""
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src=""
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src=""
						class="productInfo-img"></li>
					<li class="productInfo-radioLi"><img src=""
						class="productInfo-img"></li> -->

				</ul>
				<div class="productInfo-raridoDiv">

					<input type="radio" name="pos" class="pos" value="1" id="pos1"
						checked="checked"> <input type="radio" name="pos"
						class="pos" value="2" id="pos2"> <input type="radio"
						name="pos" class="pos" value="3" id="pos3"> <input
						type="radio" name="pos" class="pos" value="4" id="pos4"> <input
						type="radio" name="pos" class="pos" value="5" id="pos5"> <input
						type="radio" name="pos" class="pos" value="6" id="pos6"> <input
						type="radio" name="pos" class="pos" value="7" id="pos7"> <input
						type="radio" name="pos" class="pos" value="8" id="pos8"> <input
						type="radio" name="pos" class="pos" value="9" id="pos9"> <input
						type="radio" name="pos" class="pos" value="10" id="pos10">

					<p class="pos">
						<label id="productInfo-label1" for="pos1"></label> <label
							id="productInfo-label2" for="pos2"></label> <label
							id="productInfo-label3" for="pos3"></label> <label
							id="productInfo-label4" for="pos4"></label> <label
							id="productInfo-label5" for="pos5"></label> <label
							id="productInfo-label6" for="pos6"></label> <label
							id="productInfo-label7" for="pos7"></label> <label
							id="productInfo-label8" for="pos8"></label> <label
							id="productInfo-label9" for="pos9"></label> <label
							id="productInfo-label10" for="pos10"></label>
					</p>
				</div>
			</div>
			<div class="productInfo-context">
				<div class="productInfo-title">제목 : ${product.title}</div>
				<div class="productInfo-price">
					<script type="text/javascript">
						document.write(thousand("${product.price}"));
					</script>
					<span class="productInfo-won">원</span>
				</div>
				<ul class="productInfo-contextUl">
					<li class="productInfo-contextLi"><strong>주소</strong> <span>서울특별시</span>
					</li>
					<li class="productInfo-contextLi"><strong>등록날짜</strong> <span>2018.12.01${product.wdate }</span>
					</li>
					<li class="productInfo-contextLi"><strong>조회수</strong> <span>1234</span>
					</li>
					<li class="productInfo-contextLi"><strong>상태</strong> <span>${product.condit}</span>
					</li>
				</ul>
			</div>
			<div class="productInfo-btnDiv">


				<button class="productInfo-zzimBtn">
					<span class="productInfo-zzimI"><i class="fa fa-heart"
						aria-hidden="true"></i> 찜안함</span>
				</button>
				<button class="productInfo-clickZzim">
					<span class="productInfo-zzimI"><i class="fa fa-heart"
						aria-hidden="true"></i> 찜함</span>
				</button>


				<button class="productInfo-buyBtn">
					<span><i class="fa fa-usd" aria-hidden="true"></i></span> 구매하기
				</button>
				<button class="productInfo-storeBtn">
					<span><i class="fa fa-shopping-basket" aria-hidden="true"></i></span>
					상점이동
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
			<div class="productInfo-exContext">
				내용 ${product.content} <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br> <br>rr
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
				<div class="product-notice">
					<a href="/joongo/particular/notice.jsp"><img
						src="/joongo/image/noticeImg.png"><span
						class="product-spanNotice">공지사항</span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>
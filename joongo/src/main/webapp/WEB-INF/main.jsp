<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css">
<script type="text/javascript" src="/joongo/script/main.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>

<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<!-- 최신글은 한번만 -->
			<div class="lately-container" id="lately-container">
				<p class="category-info">
					<span class="category-title">최신글</span>
					<!-- <span class="all-view">전체보기</span> -->
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<div class="product">
						<div class="product-img-container">
							<a href="#"> <img src="/joongo/image/fruit.jpg"
								class="product-img">
							</a>
						</div>
						<div class="product-info">
							<div class="product-title">
								<a href="#">ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅁㄴㅇㅁㄴㅇ</a>
							</div>
							<div class="product-price">19000</div>
							<div class="product-tag">#사과 #귤 #포도</div>
						</div>
					</div>
				</div>
			</div>
			<div class="category-button-container">
				<div class="category-button">
					<a href="#clothing" id="moveScroll">의류</a>
				</div>
				<div class="category-button">
					<a href="#appliances" id="moveScroll">가전제품</a>
				</div>
				<div class="category-button">
					<a href="#cosmetics" id="moveScroll">화장품</a>
				</div>
				<div class="category-button">
					<a href="#instrument" id="moveScroll">악기</a>
				</div>
				<div class="category-button">
					<a href="#books" id="moveScroll">도서</a>
				</div>
				<div class="category-button">
					<a href="#household" id="moveScroll">생활용품</a>
				</div>
				<div class="category-button">
					<a href="#sports" id="moveScroll">스포츠</a>
				</div>
				<div class="category-button">
					<a href="#foods" id="moveScroll">식품</a>
				</div>
				<div class="category-button">
					<a href="#etc" id="moveScroll">기타</a>
				</div>
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
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>
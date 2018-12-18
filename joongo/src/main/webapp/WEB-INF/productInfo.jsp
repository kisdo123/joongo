<%@page import="controller.MainController"%>
<%@page import="Product.DTO.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css">
<link rel="stylesheet" type="text/css" href="/joongo/css/productInfo.css">
<script type="text/javascript" src="/joongo/script/main.js"></script>
<script type="text/javascript" src="/joongo/script/productInfo.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<div class="productInfo-topDiv">
				<ul class="productInfo-radioUl">
					<c:if test="${!product.image.isEmpty() }">
						<c:forEach var="product" items="${product.image }">
							<li class="productInfo-radioLi"><img src="${product.imagePath }" width="400px" height="400px"></li>
						</c:forEach>
					</c:if>
				</ul>
				<div class="productInfo-raridoDiv">

					<input type="radio" name="pos" class="pos" value="1" id="pos1" checked="checked"> <input type="radio" name="pos" class="pos" value="2" id="pos2"> <input type="radio" name="pos" class="pos" value="3" id="pos3"> <input type="radio" name="pos" class="pos" value="4" id="pos4"> <input type="radio" name="pos" class="pos" value="5" id="pos5"> <input type="radio" name="pos" class="pos" value="6" id="pos6"> <input type="radio" name="pos" class="pos" value="7" id="pos7"> <input type="radio" name="pos" class="pos" value="8" id="pos8"> <input type="radio" name="pos" class="pos" value="9" id="pos9"> <input type="radio" name="pos" class="pos" value="10" id="pos10">

					<p class="pos">
						<label id="productInfo-label1" for="pos1"></label> <label id="productInfo-label2" for="pos2"></label> <label id="productInfo-label3" for="pos3"></label> <label id="productInfo-label4" for="pos4"></label> <label id="productInfo-label5" for="pos5"></label> <label id="productInfo-label6" for="pos6"></label> <label id="productInfo-label7" for="pos7"></label> <label id="productInfo-label8" for="pos8"></label> <label id="productInfo-label9" for="pos9"></label> <label id="productInfo-label10" for="pos10"></label>
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
					<li class="productInfo-contextLi"><strong>주소</strong> <span>서울특별시</span></li>
					<li class="productInfo-contextLi"><strong>등록날짜</strong> <span>${product.wdate }</span></li>
					<li class="productInfo-contextLi"><strong>상태</strong> <span>${product.condit}</span></li>
				</ul>
			</div>
			<div class="productInfo-btnDiv">
				<c:if test="${favo == null }">
					<button class="productInfo-zzimBtn" onclick="addFavorite(${loginUser.userNo}, ${product.proNo})">
						<span class="productInfo-zzimI"><i class="fa fa-heart" aria-hidden="true"></i> 상품 찜</span>
					</button>
				</c:if>
				<c:if test="${favo != null }">
					<button class="productInfo-clickZzim" onclick="deleteFavorite(${loginUser.userNo}, ${favo.favoNo})">
						<span class="productInfo-zzimI"><i class="fa fa-heart" aria-hidden="true"></i> 찜 해제</span>
					</button>
				</c:if>
				<button class="productInfo-storeBtn" onclick="location.href='userPage.do?userNo=${product.userNo }'">
					<span><i class="fa fa-shopping-basket" aria-hidden="true"></i></span> 상점이동
				</button>
			</div>
			<div class="productInfo-btnSecondDiv">
				<c:if test="${product.userNo == loginUser.userNo}">
					<button class="productInfo-productModify" onclick="location.href='productModifyForm.do?proNo=${product.proNo }'">
						<span><i class="fa fa-refresh" aria-hidden="true"></i></span> 글 수정
					</button>

					<button class="productInfo-productdelete" onclick="deleteProduct(${product.proNo })">
						<span><i class="fa fa-times" aria-hidden="true"></i></span> 글 삭제
					</button>
				</c:if>
			</div>
			<!-- 최신글은 한번만 -->
			<div class="lately-container" style="clear: both;">
				<p class="category-info">
					<span class="category-title">연관상품</span>
					<!-- <span class="all-view">전체보기</span> -->
				</p>

				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품을 5개 뽑는다. -->
					<c:forEach var="pro" items="${pro }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${pro.proNo }"> <c:if test="${pro.image.isEmpty() }">
										<img src="/joongo/image/no-image.jpg" class="product-img">
									</c:if> <c:if test="${!pro.image.isEmpty() }">
										<img src="${pro.image.get(0).imagePath }" class="product-img">
									</c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${pro.proNo }"> ${pro.title }</a>
								</div>
								<div class="product-price">${pro.price }</div>
								<c:if test="${pro.tags == '' || pro.tags eq null || empty pro.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${pro.tags != '' }">
									<div class="product-tag" style="max-width: 500px;">${pro.tags }</div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>

			</div>
			<div class="productInfo-exTitle">상품정보</div>
			<div class="productInfo-ex"></div>
			<div class="productInfo-exContext">${product.content}</div>

			<!-- 맨 위, 맨 아래로 -->
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>
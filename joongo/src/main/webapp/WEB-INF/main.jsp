<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css?3">
<script type="text/javascript" src="/joongo/script/main.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>

<div id="container" class="container">
	<div class="w1200">
		<div class="middle">
			<%-- <c:forEach var="i" begin="1" end="10">
				
				<c:forEach var="product" items="${cat5List.get() }"
			</c:forEach> --%>
			<!-- 최신글은 한번만 -->
			<div class="lately-container" id="lately-container">
				<p class="category-info">
					<span class="category-title">최신글</span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품을 5개 뽑는다. -->
					<c:forEach var="product" items="${products }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }"> <c:if
										test="${product.image.isEmpty() }">
										<img src="/joongo/image/no-image.jpg" class="product-img">
									</c:if> <c:if test="${!product.image.isEmpty() }">
										<img src="${product.image.get(0).imagePath }"
											class="product-img">
									</c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if
									test="${product.tags == '' || product.tags eq null || empty product.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">#${product.tag }</div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="category-button-container">
				<div class="category-button">
					<a href="#clothes" class="moveScroll">의류</a>
				</div>
				<div class="category-button">
					<a href="#appliances" class="moveScroll">가전제품</a>
				</div>
				<div class="category-button">
					<a href="#cosmetics" class="moveScroll">화장품</a>
				</div>
				<div class="category-button">
					<a href="#instrument" class="moveScroll">악기</a>
				</div>
				<div class="category-button">
					<a href="#books" class="moveScroll">도서</a>
				</div>
				<div class="category-button">
					<a href="#household" class="moveScroll">생활용품</a>
				</div>
				<div class="category-button">
					<a href="#sports" class="moveScroll">스포츠</a>
				</div>
				<div class="category-button">
					<a href="#foods" class="moveScroll">식품</a>
				</div>
				<div class="category-button">
					<a href="#etc" class="moveScroll">기타</a>
				</div>
			</div>
			<!-- category 별로 for문 -->
			<c:forEach var="i" begin="1" end="9">
				${num = i -1;'' }
					<div class="category" id="${categories[num] }">
						<p class="category-info">
							<span class="category-title">${titles[num] }</span> <span class="all-view"><a
								href="catList.do?catNo=${i} }">전체보기</a></span>
						</p>
						<!-- 상품을 감싸고 있는 div  -->
						<div class="product-container">
							<c:forEach var="product" items="${cat5List.get('category'+=i) }">
										<!-- 상품이 for문으로 돌아가야 함 -->
										<div class="product">
											<div class="product-img-container">
												<a href="productInfo.do?proNo=${product.proNo }">
													<c:if test="${product.image.isEmpty() }">
														<img src="/joongo/image/no-image.jpg" class="product-img">
													</c:if> <c:if test="${!product.image.isEmpty() }">
														<img src="${product.image.get(0).imagePath }"
															class="product-img">
													</c:if>
												</a>
											</div>
											<div class="product-info">
												<div class="product-title">
													<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
												</div>
												<div class="product-price">${product.price }</div>
												<c:if
													test="${product.tags == '' || product.tags eq null || empty product.tags }">
													<div class="product-tag">태그없음</div>
												</c:if>
												<c:if test="${product.tags != '' }">
													<div class="product-tag">${product.tags }</div>
												</c:if>
											</div>
										</div>
							</c:forEach>
						</div>
				<div class="line"></div>
		</div>
		</c:forEach>
		<%-- <div class="category" id="appliances">
				<p class="category-info">
					<span class="category-title">가전제품</span> <span class="all-view"><a href="productList.do?catNo=2">전체보기</a></span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<c:forEach var="product" items="${cat5List2 }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }">
									<c:if test="${product.image.isEmpty() }"><img src="/joongo/image/no-image.jpg" class="product-img"></c:if>
									<c:if test="${!product.image.isEmpty() }"><img src="${product.image.get(0).imagePath }" class="product-img"></c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if test="${product.tags == '' || product.tags eq null || empty product.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">${product.tags } </div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="line"></div>
			</div>
			<div class="category" id="cosmetics">
				<p class="category-info">
					<span class="category-title">화장품</span> <span class="all-view"><a href="productList.do?catNo=3">전체보기</a></span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<c:forEach var="product" items="${cat5List3 }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }">
									<c:if test="${product.image.isEmpty() }"><img src="/joongo/image/no-image.jpg" class="product-img"></c:if>
									<c:if test="${!product.image.isEmpty() }"><img src="${product.image.get(0).imagePath }" class="product-img"></c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if test="${product.tags == '' || product.tags eq null || empty product.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">${product.tags } </div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="line"></div>
			</div>
			<div class="category" id="instrument">
				<p class="category-info">
					<span class="category-title">악기음향기기</span> <span class="all-view"><a href="productList.do?catNo=4">전체보기</a></span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<c:forEach var="product" items="${cat5List4 }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }">
									<c:if test="${product.image.isEmpty() }"><img src="/joongo/image/no-image.jpg" class="product-img"></c:if>
									<c:if test="${!product.image.isEmpty() }"><img src="${product.image.get(0).imagePath }" class="product-img"></c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if test="${product.tags == '' || product.tags eq null || empty product.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">${product.tags } </div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="line"></div>
			</div>
			<div class="category" id="books">
				<p class="category-info">
					<span class="category-title">도서</span> <span class="all-view"><a href="productList.do?catNo=5">전체보기</a></span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<c:forEach var="product" items="${cat5List5 }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }">
									<c:if test="${product.image.isEmpty() }"><img src="/joongo/image/no-image.jpg" class="product-img"></c:if>
									<c:if test="${!product.image.isEmpty() }"><img src="${product.image.get(0).imagePath }" class="product-img"></c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if test="${product.tags == '' || product.tags eq null || empty product.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">${product.tags } </div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="line"></div>
			</div>
			<div class="category" id="household">
				<p class="category-info">
					<span class="category-title">생활용품</span> <span class="all-view"><a href="productList.do?catNo=6">전체보기</a></span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<c:forEach var="product" items="${cat5List6 }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }">
									<c:if test="${product.image.isEmpty() }"><img src="/joongo/image/no-image.jpg" class="product-img"></c:if>
									<c:if test="${!product.image.isEmpty() }"><img src="${product.image.get(0).imagePath }" class="product-img"></c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if test="${product.tags == '' || product.tags eq null || empty product.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">${product.tags } </div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="line"></div>
			</div>
			<div class="category" id="sports">
				<p class="category-info">
					<span class="category-title">스포츠</span> <span class="all-view"><a href="productList.do?catNo=7">전체보기</a></span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<c:forEach var="product" items="${cat5List7 }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }">
									<c:if test="${product.image.isEmpty() }"><img src="/joongo/image/no-image.jpg" class="product-img"></c:if>
									<c:if test="${!product.image.isEmpty() }"><img src="${product.image.get(0).imagePath }" class="product-img"></c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if test="${product.tags == '' || product.tags eq null || empty product.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">${product.tags } </div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="line"></div>
			</div>
			<div class="category" id="foods">
				<p class="category-info">
					<span class="category-title">식품</span> <span class="all-view"><a href="productList.do?catNo=8">전체보기</a></span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<c:forEach var="product" items="${cat5List8 }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }">
									<c:if test="${product.image.isEmpty() }"><img src="/joongo/image/no-image.jpg" class="product-img"></c:if>
									<c:if test="${!product.image.isEmpty() }"><img src="${product.image.get(0).imagePath }" class="product-img"></c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if test="${product.tags  == '' || product.tags eq null }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">${product.tags } </div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="line"></div>
			</div>
			<div class="category" id="etc">
				<p class="category-info">
					<span class="category-title">기타</span> <span class="all-view"><a href="productList.do?catNo=9">전체보기</a></span>
				</p>
				<!-- 상품을 감싸고 있는 div  -->
				<div class="product-container">
					<!-- 상품이 for문으로 돌아가야 함 -->
					<c:forEach var="product" items="${cat5List9 }">
						<div class="product">
							<div class="product-img-container">
								<a href="productInfo.do?proNo=${product.proNo }">
									<c:if test="${product.image.isEmpty() }"><img src="/joongo/image/no-image.jpg" class="product-img"></c:if>
									<c:if test="${!product.image.isEmpty() }"><img src="${product.image.get(0).imagePath }" class="product-img"></c:if>
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="productInfo.do?proNo=${product.proNo }">${product.title }</a>
								</div>
								<div class="product-price">${product.price }</div>
								<c:if test="${product.tags == '' || product.tags eq null || empty product.tags }">
									<div class="product-tag">태그없음</div>
								</c:if>
								<c:if test="${product.tags != '' }">
									<div class="product-tag">${product.tags }</div>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="line"></div>
			</div> --%>
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
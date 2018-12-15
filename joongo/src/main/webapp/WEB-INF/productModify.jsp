<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/writeProduct.css?6">
<script type="text/javascript" src="/joongo/script/writeProduct.js"></script>
<script type="text/javascript" src="/joongo/se2/js/HuskyEZCreator.js"></script>
</head>
<jsp:include page="/particular/header.jsp"></jsp:include>
<div class="write-container">
	<div class="first-div">
		<div class="middle">
			<div class="form-container">
				<form action="productModify.do" name="writefrm" id="writefrm" onsubmit="return false" method="post">
					<div class="form-header">
						<!-- 제목 카테고리 -->
						<div class="form-title-container">
							<table>
								<tr>
									<td class="form-info">제목</td>
									<td class="title-winput">
										<input type="text" id="title" name="title" placeholder="제목을 입력하세요" class="title-input" value="${product.title }" autofocus>
									</td>
								</tr>
								<tr>
									<td class="form-info">카테고리</td>
									<td>
										<select class="select-info" name="catNo">
											<c:if test="${product.catNo == 1}">
												<option selected="selected" value="1">의류</option>
												<option value="2">가전제품</option>
												<option value="3">화장품</option>
												<option value="4">악기</option>
												<option value="5">도서</option>
												<option value="6">생활용품</option>
												<option value="7">스포츠</option>
												<option value="8">식품</option>
												<option value="9">기타</option>
											</c:if>
											<c:if test="${product.catNo == 2}">
												<option value="1">의류</option>
												<option selected="selected" value="2">가전제품</option>
												<option value="3">화장품</option>
												<option value="4">악기</option>
												<option value="5">도서</option>
												<option value="6">생활용품</option>
												<option value="7">스포츠</option>
												<option value="8">식품</option>
												<option value="9">기타</option>
											</c:if>
											<c:if test="${product.catNo == 3}">
												<option value="1">의류</option>
												<option value="2">가전제품</option>
												<option selected="selected" value="3">화장품</option>
												<option value="4">악기</option>
												<option value="5">도서</option>
												<option value="6">생활용품</option>
												<option value="7">스포츠</option>
												<option value="8">식품</option>
												<option value="9">기타</option>
											</c:if>
											<c:if test="${product.catNo == 4}">
												<option value="1">의류</option>
												<option value="2">가전제품</option>
												<option value="3">화장품</option>
												<option selected="selected" value="4">악기</option>
												<option value="5">도서</option>
												<option value="6">생활용품</option>
												<option value="7">스포츠</option>
												<option value="8">식품</option>
												<option value="9">기타</option>
											</c:if>
											<c:if test="${product.catNo == 5}">
												<option value="1">의류</option>
												<option value="2">가전제품</option>
												<option value="3">화장품</option>
												<option value="4">악기</option>
												<option selected="selected" value="5">도서</option>
												<option value="6">생활용품</option>
												<option value="7">스포츠</option>
												<option value="8">식품</option>
												<option value="9">기타</option>
											</c:if>
											<c:if test="${product.catNo == 6}">
												<option value="1">의류</option>
												<option value="2">가전제품</option>
												<option value="3">화장품</option>
												<option value="4">악기</option>
												<option value="5">도서</option>
												<option selected="selected" value="6">생활용품</option>
												<option value="7">스포츠</option>
												<option value="8">식품</option>
												<option value="9">기타</option>
											</c:if>
											<c:if test="${product.catNo == 7}">
												<option value="1">의류</option>
												<option value="2">가전제품</option>
												<option value="3">화장품</option>
												<option value="4">악기</option>
												<option value="5">도서</option>
												<option value="6">생활용품</option>
												<option selected="selected" value="7">스포츠</option>
												<option value="8">식품</option>
												<option value="9">기타</option>
											</c:if>
											<c:if test="${product.catNo == 8}">
												<option value="1">의류</option>
												<option value="2">가전제품</option>
												<option value="3">화장품</option>
												<option value="4">악기</option>
												<option value="5">도서</option>
												<option value="6">생활용품</option>
												<option value="7">스포츠</option>
												<option selected="selected" value="8">식품</option>
												<option value="9">기타</option>
											</c:if>
											<c:if test="${product.catNo == 9}">
												<option value="1">의류</option>
												<option value="2">가전제품</option>
												<option value="3">화장품</option>
												<option value="4">악기</option>
												<option value="5">도서</option>
												<option value="6">생활용품</option>
												<option value="7">스포츠</option>
												<option value="8">식품</option>
												<option selected="selected" value="9">기타</option>
											</c:if>
										</select>
										<span class="form-info">가격</span>
										<input type="text" id="price" name="price" placeholder="희망 가격을 입력해주세요 (숫자만 입력가능합니다)" value="${product.price }" class="price-input">
									</td>
								</tr>
							</table>
						</div>
					</div>
					<!-- 스마트 에디터가 생기는 textarea -->
					<textarea id="ir1" name="content" rows="10" cols="100" style='width: 100%; height: 400px;'>
							${product.content }
						</textarea>
					<!-- tag -->
					<div class="tag-container">
						<table class="tags-table">
							<tr>
								<td class="form-info">태그</td>
								<td class="tag-winput">
									<input type="text" name="tags" placeholder="태그는 ,로 구분합니다" class="title-input" value="${product.tags }">
								</td>
							</tr>
						</table>
					</div>
					<input type="hidden" name="userNo" value="${loginUser.userNo }"> <input type="hidden" name="nickname" value="${loginUser.nickname }"> <input type="hidden" name="proNo" value="${product.proNo }">
					<div class="register-container">
						<input type="submit" value="수정" id="register" class="register"> <a href="#" onclick="history.back(-1);" class="cancel">취소</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>
